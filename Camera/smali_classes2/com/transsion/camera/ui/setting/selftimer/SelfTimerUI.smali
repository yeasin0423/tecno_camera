.class public Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SelfTimerUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;
    }
.end annotation


# static fields
.field private static final BEEP_ONCE_ID:I = 0x7f0e0000

.field private static final BEEP_TWICE_ID:I = 0x7f0e0001

.field private static final DEFAULT_NUM:I = 0x0

.field private static final RESOURCES_TYPE:Ljava/lang/String; = "bool"

.field private static final SELFTIMERUI_USE_LAYER_TYPE_SOFTWARE:Ljava/lang/String; = "selftimerui_use_layer_type_software"

.field private static final SELF_TIMER_NUM_UPDATE:I = 0x3

.field private static final SELF_TIMER_ORIENTATION_UPDATE:I = 0x4

.field private static final SELF_TIMER_UPDATE_SHUTTER_ICON:I = 0x5

.field private static final SELF_TIMER_VIEW_HIDE:I = 0x2

.field private static final SELF_TIMER_VIEW_SHOW:I = 0x1

.field private static final START_TIME_MAX:I = 0x1e

.field private static final START_TIME_MIN:I = 0x3

.field public static final STATE_SELF_TIMER_CAPTURE:Ljava/lang/String; = "self_timer_capture"

.field public static final STATE_SELF_TIMER_IDLE:Ljava/lang/String; = "self_timer_idle"

.field public static final STATE_SELF_TIMER_START:Ljava/lang/String; = "self_timer_start"

.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final UPDATE_DELAY_TIME:I = 0x3e8


# instance fields
.field private final mActionSoundLock:Ljava/lang/Object;

.field protected mApertureUIControl:Lcom/transsion/camera/app/common/IAppUIControl$IApertureUIControl;

.field private mBeepOnceSampleId:I

.field private mBeepTwiceSampleId:I

.field private mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private mCountDownAnim:Landroid/view/animation/Animation;

.field private mCurSelfTimerNum:I

.field private mCurrentCameraId:Ljava/lang/String;

.field private mCurrentPriority:I

.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mIsFunVideoRecordingStart:Z

.field private mPreviewViewRect:Landroid/graphics/Rect;

.field private mSelfTimerNumBeforeDelay:I

.field private mSelfTimerSoundLoaded:Z

.field private volatile mSelfTimerState:Ljava/lang/String;

.field private mSelfTimerTextView:Lcom/transsion/camera/app/ui/widget/RotateTextView;

.field private mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

.field private mSoundEnable:Z

.field private mStartSelfTimerNum:I

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mUIHandler:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;

.field private mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SelfTimerUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    .line 85
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    const/4 p1, 0x0

    .line 63
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerSoundLoaded:Z

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mActionSoundLock:Ljava/lang/Object;

    const-string v0, "self_timer_idle"

    .line 72
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerState:Ljava/lang/String;

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mPreviewViewRect:Landroid/graphics/Rect;

    .line 80
    iput p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerNumBeforeDelay:I

    const-string v0, "0"

    .line 82
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCurrentCameraId:Ljava/lang/String;

    .line 83
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mIsFunVideoRecordingStart:Z

    .line 422
    new-instance p1, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$1;-><init>(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 86
    sget-object p1, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "init"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 87
    new-instance p1, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$1;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mUIHandler:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->showSelfTimerView()V

    return-void
.end method

.method static synthetic access$1000(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->startSelfTimer()V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;ZZ)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->hideSelfTimerView(ZZ)V

    return-void
.end method

.method static synthetic access$302(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerState:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->updateSelfTimerNum()V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;)Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    return-object p0
.end method

.method static synthetic access$602(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSoundEnable:Z

    return p1
.end method

.method static synthetic access$700(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->loadSelfTimerSoundIfNeed()V

    return-void
.end method

.method static synthetic access$800(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->onSelfTimerStatusChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->startSelfTimerImmediately(Ljava/lang/String;)V

    return-void
.end method

.method private hideSelfTimerTextView()V
    .locals 1

    .line 417
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerTextView:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    .line 418
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private hideSelfTimerView(ZZ)V
    .locals 3

    .line 385
    sget-object v0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideSelfTimerView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 386
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerSoundLoaded:Z

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    iget v1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mBeepOnceSampleId:I

    invoke-interface {v0, v1}, Lcom/transsion/camera/utils/sound/IActionSound;->stop(I)V

    .line 388
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    iget v1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mBeepTwiceSampleId:I

    invoke-interface {v0, v1}, Lcom/transsion/camera/utils/sound/IActionSound;->stop(I)V

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mApertureUIControl:Lcom/transsion/camera/app/common/IAppUIControl$IApertureUIControl;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 393
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IApertureUIControl;->stopSelfTimerAnim()V

    goto :goto_0

    .line 395
    :cond_1
    sget-object p1, Lcom/transsion/camera/app/common/IAppUIControl$IApertureUIControl$AnimationType;->TYPE_LESS_ONE_SECOND:Lcom/transsion/camera/app/common/IAppUIControl$IApertureUIControl$AnimationType;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$IApertureUIControl;->startSelfTimerAnim(Lcom/transsion/camera/app/common/IAppUIControl$IApertureUIControl$AnimationType;)V

    .line 399
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerTextView:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->clearAnimation()V

    const/4 p1, 0x0

    .line 400
    iput p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCurSelfTimerNum:I

    .line 401
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mUIHandler:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 402
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    if-eqz p2, :cond_3

    .line 404
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 p2, 0xc

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    const-string p1, "status_self_timer_end"

    .line 405
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->sendStatusChanged(Ljava/lang/String;)V

    .line 407
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mUIHandler:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private interruptTimer()V
    .locals 2

    .line 311
    sget-object v0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "interruptTimer"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mUIHandler:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 313
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mUIHandler:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 314
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mUIHandler:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string v0, "status_self_timer_cancel"

    .line 315
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->sendStatusChanged(Ljava/lang/String;)V

    return-void
.end method

.method private interruptTimerDirectly()V
    .locals 2

    .line 232
    sget-object v0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "interruptTimerDirectly"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mUIHandler:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 234
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mUIHandler:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 235
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->hideSelfTimerView(ZZ)V

    const-string v0, "self_timer_idle"

    .line 236
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerState:Ljava/lang/String;

    return-void
.end method

.method private isMainThread()Z
    .locals 1

    .line 307
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$loadSelfTimerSound$0(Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .locals 2

    .line 491
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mActionSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 492
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-nez v1, :cond_0

    .line 493
    invoke-interface {p1, p2}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    goto :goto_0

    .line 495
    :cond_0
    iput p2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mBeepOnceSampleId:I

    .line 497
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic lambda$loadSelfTimerSound$1(Ljava/lang/Runnable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 500
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$loadSelfTimerSound$2(Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .locals 2

    .line 504
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mActionSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 505
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-nez v1, :cond_0

    .line 506
    invoke-interface {p1, p2}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    goto :goto_0

    .line 508
    :cond_0
    iput p2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mBeepTwiceSampleId:I

    .line 510
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private loadSelfTimerSound(Ljava/lang/Runnable;)V
    .locals 4

    .line 484
    iget v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStartSelfTimerNum:I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSoundEnable:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerSoundLoaded:Z

    if-nez v1, :cond_1

    const/high16 v1, 0x7f0e0000

    .line 490
    new-instance v2, Lcom/transsion/camera/ui/setting/selftimer/-$$Lambda$SelfTimerUI$5WTMxCGYlXkJnOaVbFTzYkT_1v4;

    invoke-direct {v2, p0}, Lcom/transsion/camera/ui/setting/selftimer/-$$Lambda$SelfTimerUI$5WTMxCGYlXkJnOaVbFTzYkT_1v4;-><init>(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;)V

    new-instance v3, Lcom/transsion/camera/ui/setting/selftimer/-$$Lambda$SelfTimerUI$L-0f0HAFXZn5nKNqzm32zNsf17Y;

    invoke-direct {v3, p1}, Lcom/transsion/camera/ui/setting/selftimer/-$$Lambda$SelfTimerUI$L-0f0HAFXZn5nKNqzm32zNsf17Y;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/transsion/camera/utils/sound/IActionSound;->load(ILcom/transsion/camera/utils/sound/IActionSound$SoundCallback;Lcom/transsion/camera/utils/sound/IActionSound$SoundLoadCompleteCallback;)V

    .line 503
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    const v0, 0x7f0e0001

    new-instance v1, Lcom/transsion/camera/ui/setting/selftimer/-$$Lambda$SelfTimerUI$Z1hsk19VNMhLhUybyRkh-b97Mtw;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/selftimer/-$$Lambda$SelfTimerUI$Z1hsk19VNMhLhUybyRkh-b97Mtw;-><init>(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;)V

    invoke-interface {p1, v0, v1}, Lcom/transsion/camera/utils/sound/IActionSound;->load(ILcom/transsion/camera/utils/sound/IActionSound$SoundCallback;)V

    const/4 p1, 0x1

    .line 512
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerSoundLoaded:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private loadSelfTimerSoundIfNeed()V
    .locals 1

    const/4 v0, 0x0

    .line 480
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->loadSelfTimerSound(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onSelfTimerStatusChanged(Ljava/lang/String;)V
    .locals 2

    const-string v0, "off"

    .line 468
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x5

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 469
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStartSelfTimerNum:I

    .line 470
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mUIHandler:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->getShutterTypeSelftimerOn()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 473
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->loadSelfTimerSoundIfNeed()V

    goto :goto_0

    .line 475
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mUIHandler:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->getShutterTypeSelftimerOff()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method private querySettingValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 528
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_0

    .line 529
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private sendStatusChanged(Ljava/lang/String;)V
    .locals 1

    .line 319
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_self_timer_status"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 321
    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private showSelfTimerView()V
    .locals 2

    .line 411
    sget-object v0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showSelfTimerView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 412
    iget v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStartSelfTimerNum:I

    iput v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCurSelfTimerNum:I

    .line 413
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mUIHandler:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private startSelfTimer()V
    .locals 4

    .line 294
    sget-object v0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "startSelfTimer"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "self_timer_start"

    .line 295
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerState:Ljava/lang/String;

    .line 296
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    const-string v0, "status_self_timer_begin"

    .line 297
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->sendStatusChanged(Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    const/4 v1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 299
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->showSelfTimerView()V

    goto :goto_0

    .line 302
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mUIHandler:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method private startSelfTimerImmediately(Ljava/lang/String;)V
    .locals 2

    .line 447
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x1e

    const/4 v1, 0x3

    if-ge p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    move p1, v0

    .line 453
    :cond_1
    :goto_0
    iget v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStartSelfTimerNum:I

    iput v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerNumBeforeDelay:I

    .line 454
    iput p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStartSelfTimerNum:I

    .line 455
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerSoundLoaded:Z

    if-eqz p1, :cond_2

    .line 456
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->startSelfTimer()V

    goto :goto_1

    .line 458
    :cond_2
    new-instance p1, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$2;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$2;-><init>(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;)V

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->loadSelfTimerSound(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method private unloadSelfTimerSound()V
    .locals 3

    .line 517
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mActionSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 518
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerSoundLoaded:Z

    if-eqz v1, :cond_0

    .line 519
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    iget v2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mBeepOnceSampleId:I

    invoke-interface {v1, v2}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    .line 520
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    iget v2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mBeepTwiceSampleId:I

    invoke-interface {v1, v2}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    :cond_0
    const/4 v1, 0x0

    .line 522
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerSoundLoaded:Z

    const/4 v1, 0x0

    .line 523
    iput-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    .line 524
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private updateRootLayoutRect()V
    .locals 5

    .line 535
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 539
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 540
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 541
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 542
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    iput p0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 543
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateSelfTimerNum()V
    .locals 5

    .line 355
    sget-object v0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateSelfTimer] mCurSelfTimerNum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCurSelfTimerNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 356
    iget v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCurSelfTimerNum:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_4

    .line 357
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    const-string v0, "%d"

    invoke-static {v3, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 358
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerTextView:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCountDownAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 361
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerTextView:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 362
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerTextView:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCountDownAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mApertureUIControl:Lcom/transsion/camera/app/common/IAppUIControl$IApertureUIControl;

    if-eqz v0, :cond_1

    .line 366
    sget-object v1, Lcom/transsion/camera/app/common/IAppUIControl$IApertureUIControl$AnimationType;->TYPE_MORE_ONE_SECOND:Lcom/transsion/camera/app/common/IAppUIControl$IApertureUIControl$AnimationType;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IApertureUIControl;->startSelfTimerAnim(Lcom/transsion/camera/app/common/IAppUIControl$IApertureUIControl$AnimationType;)V

    .line 369
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSoundEnable:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerSoundLoaded:Z

    if-eqz v0, :cond_3

    .line 370
    iget v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCurSelfTimerNum:I

    if-ne v0, v2, :cond_2

    .line 371
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    iget v3, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mBeepTwiceSampleId:I

    invoke-interface {v0, v3}, Lcom/transsion/camera/utils/sound/IActionSound;->play(I)V

    goto :goto_0

    :cond_2
    if-gt v0, v1, :cond_3

    .line 373
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    iget v3, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mBeepOnceSampleId:I

    invoke-interface {v0, v3}, Lcom/transsion/camera/utils/sound/IActionSound;->play(I)V

    .line 376
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mUIHandler:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 377
    iget v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCurSelfTimerNum:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCurSelfTimerNum:I

    goto :goto_1

    .line 379
    :cond_4
    invoke-direct {p0, v1, v2}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->hideSelfTimerView(ZZ)V

    .line 380
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->realCapture()V

    :goto_1
    return-void
.end method


# virtual methods
.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c00d8

    const/4 v1, 0x0

    .line 92
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0901d6

    .line 93
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/RotateTextView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerTextView:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "selftimerui_use_layer_type_software"

    .line 94
    invoke-static {p2, v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 96
    sget-object p2, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "use LAYER_TYPE_SOFTWARE"

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 97
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerTextView:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 99
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->hideSelfTimerTextView()V

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f01001d

    .line 101
    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCountDownAnim:Landroid/view/animation/Animation;

    return-object p1
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_self_timer"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 174
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$loadSelfTimerSound$0$SelfTimerUI(Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->lambda$loadSelfTimerSound$0(Lcom/transsion/camera/utils/sound/IActionSound;I)V

    return-void
.end method

.method public synthetic lambda$loadSelfTimerSound$2$SelfTimerUI(Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->lambda$loadSelfTimerSound$2(Lcom/transsion/camera/utils/sound/IActionSound;I)V

    return-void
.end method

.method public notifyCameraOperateAction(I)V
    .locals 3

    const/16 v0, 0x1b

    if-eq v0, p1, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    if-ne v1, p1, :cond_1

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerState:Ljava/lang/String;

    const-string v2, "self_timer_start"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->interruptTimerDirectly()V

    :cond_1
    if-eq p1, v0, :cond_3

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2e

    if-eq p1, v0, :cond_3

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 222
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mIsFunVideoRecordingStart:Z

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 226
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mIsFunVideoRecordingStart:Z

    :goto_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 272
    sget-object v0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerState:Ljava/lang/String;

    const-string v1, "self_timer_start"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->interruptTimer()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onOrientationChanged(I)V
    .locals 1

    .line 185
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerTextView:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 186
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/RotateTextView;->setOrientation(IZ)V

    :cond_0
    return-void
.end method

.method public onShutterClick(I)Z
    .locals 3

    .line 241
    iput p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCurrentPriority:I

    .line 242
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mIsFunVideoRecordingStart:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 246
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerState:Ljava/lang/String;

    const-string v1, "self_timer_capture"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    return v1

    .line 249
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerState:Ljava/lang/String;

    const-string v2, "self_timer_start"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 250
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->interruptTimer()V

    return v1

    .line 253
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v2, "off"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    .line 256
    :cond_3
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->startSelfTimer()V

    return v1
.end method

.method public onShutterLongClick()Z
    .locals 2

    .line 262
    sget-object v0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onShutterLongClick"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerState:Ljava/lang/String;

    const-string v1, "self_timer_idle"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    sget-object p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "intercept long click event when self timer start"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 267
    :cond_0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onShutterLongClick()Z

    move-result p0

    return p0
.end method

.method public realCapture()V
    .locals 2

    .line 281
    iget v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerNumBeforeDelay:I

    if-eqz v0, :cond_0

    .line 282
    iput v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStartSelfTimerNum:I

    const/4 v0, 0x0

    .line 283
    iput v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerNumBeforeDelay:I

    :cond_0
    const-string v0, "self_timer_capture"

    .line 285
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerState:Ljava/lang/String;

    .line 286
    iget v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCurrentPriority:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 287
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v1, 0x4f

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->triggerShutterClick(I)V

    const-string v0, "self_timer_idle"

    .line 290
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerState:Ljava/lang/String;

    return-void
.end method

.method public setApertureUIControl(Lcom/transsion/camera/app/common/IAppUIControl$IApertureUIControl;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mApertureUIControl:Lcom/transsion/camera/app/common/IAppUIControl$IApertureUIControl;

    return-void
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 1

    .line 112
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_0

    .line 114
    sget-object p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "key_shutter_sound"

    .line 118
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->querySettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "on"

    .line 117
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSoundEnable:Z

    .line 119
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->onSelfTimerStatusChanged(Ljava/lang/String;)V

    .line 120
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCurrentCameraId:Ljava/lang/String;

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 2

    .line 141
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-nez p1, :cond_0

    .line 143
    sget-object p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mStatusMonitor is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "key_shutter_sound"

    invoke-virtual {p1, v1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 147
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "key_self_timer"

    invoke-virtual {p1, v1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 148
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v0, "key_start_self_timer"

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V
    .locals 1

    .line 197
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    if-eqz p1, :cond_0

    const/16 v0, 0xa

    .line 199
    invoke-interface {p1, p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->registerShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;I)V

    :cond_0
    return-void
.end method

.method public setUIStateControl(Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    return-void
.end method

.method public setupEntryView()V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->loadSelfTimerSoundIfNeed()V

    return-void
.end method

.method public unInit()V
    .locals 4

    .line 153
    sget-object v0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "unInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mUIHandler:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 155
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 156
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_0

    .line 157
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v3, "key_shutter_sound"

    invoke-virtual {v0, v3, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 158
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v3, "key_self_timer"

    invoke-virtual {v0, v3, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 159
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v3, "key_start_self_timer"

    invoke-virtual {v0, v3, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 161
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->unloadSelfTimerSound()V

    .line 162
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->unRegisterShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;)V

    .line 163
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCountDownAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    .line 164
    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 165
    iput-object v1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCountDownAnim:Landroid/view/animation/Animation;

    :cond_1
    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 126
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->updateRootLayoutRect()V

    return-void
.end method
