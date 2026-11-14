.class public Lcom/transsion/camera/feature/setting/focus/Focus;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "Focus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;,
        Lcom/transsion/camera/feature/setting/focus/Focus$MainHandler;
    }
.end annotation


# instance fields
.field private mFocusListener:Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

.field private mFocusParameterConfigure:Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;

.field private final mFocusStateListener:Lcom/transsion/camera/feature/setting/focus/IFocusController$FocusStateListener;

.field private mFocusStateUpdateDisabled:Z

.field private mIsAutoFocusTriggered:Z

.field private mIsCapturing:Z

.field private mIsEvChanging:Z

.field private mIsInitValue:Z

.field private mIsPreviewStarted:Z

.field private mIsProfessionalMode:Z

.field private mIsShowUI:Z

.field private mLockState:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

.field private mMainHandler:Lcom/transsion/camera/feature/setting/focus/Focus$MainHandler;

.field private mModeDeviceState:I

.field private mNeedResetFocusState:Z

.field private mNeedResetTouchFocus:Z

.field private mNeedResetTouchType:I

.field private mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

.field private mStatusChangeListener:Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;

.field private mTag:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 29
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    .line 30
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x1

    .line 32
    iput v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mModeDeviceState:I

    const/4 v1, 0x0

    .line 35
    iput-object v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    const/4 v2, 0x0

    .line 37
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusStateUpdateDisabled:Z

    .line 38
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsEvChanging:Z

    .line 40
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsPreviewStarted:Z

    .line 42
    sget-object v3, Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;->STATE_UNLOCKED:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    iput-object v3, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mLockState:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    .line 46
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsCapturing:Z

    .line 47
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsShowUI:Z

    .line 52
    iput v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetTouchType:I

    .line 53
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetFocusState:Z

    .line 54
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetTouchFocus:Z

    .line 56
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsProfessionalMode:Z

    .line 57
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsInitValue:Z

    .line 58
    new-instance v0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;-><init>(Lcom/transsion/camera/feature/setting/focus/Focus;Lcom/transsion/camera/feature/setting/focus/Focus$1;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;

    .line 294
    new-instance v0, Lcom/transsion/camera/feature/setting/focus/Focus$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/focus/Focus$1;-><init>(Lcom/transsion/camera/feature/setting/focus/Focus;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusStateListener:Lcom/transsion/camera/feature/setting/focus/IFocusController$FocusStateListener;

    .line 427
    new-instance v0, Lcom/transsion/camera/feature/setting/focus/Focus$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/focus/Focus$2;-><init>(Lcom/transsion/camera/feature/setting/focus/Focus;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/transsion/camera/feature/setting/focus/Focus;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsShowUI:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/setting/focus/Focus;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsEvChanging:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/transsion/camera/feature/setting/focus/Focus;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsEvChanging:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/transsion/camera/feature/setting/focus/Focus;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetTouchType:I

    return p0
.end method

.method static synthetic access$1500(Lcom/transsion/camera/feature/setting/focus/Focus;IIJ)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/setting/focus/Focus;->sendFocusMessage(IIJ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/transsion/camera/feature/setting/focus/Focus;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsInitValue:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/transsion/camera/feature/setting/focus/Focus;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->processManualFocus(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/setting/focus/Focus;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsCapturing:Z

    return p0
.end method

.method static synthetic access$202(Lcom/transsion/camera/feature/setting/focus/Focus;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsCapturing:Z

    return p1
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/setting/focus/Focus;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->doResetTouchFocus(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/setting/focus/Focus;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetTouchFocus:Z

    return p0
.end method

.method static synthetic access$402(Lcom/transsion/camera/feature/setting/focus/Focus;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetTouchFocus:Z

    return p1
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/setting/focus/Focus;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetFocusState:Z

    return p0
.end method

.method static synthetic access$502(Lcom/transsion/camera/feature/setting/focus/Focus;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetFocusState:Z

    return p1
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/setting/focus/Focus;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->onFocusStateUpdate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/feature/setting/focus/Focus$MainHandler;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mMainHandler:Lcom/transsion/camera/feature/setting/focus/Focus$MainHandler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/setting/focus/Focus;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsAutoFocusTriggered:Z

    return p0
.end method

.method static synthetic access$902(Lcom/transsion/camera/feature/setting/focus/Focus;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsPreviewStarted:Z

    return p1
.end method

.method private checkAfEnv()Z
    .locals 4

    .line 470
    iget v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mModeDeviceState:I

    const/4 v1, 0x0

    const/4 v2, 0x7

    if-ne v2, v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[checkAfEnv] touch focus has been disabled mModeDeviceState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mModeDeviceState:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;->isFocusCanDo()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 479
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 480
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v2, :cond_3

    const-string v3, "continuous-picture"

    .line 481
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "continuous-video"

    .line 482
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 483
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "getEntryValues not contains continuous"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    :cond_3
    return v2

    :cond_4
    :goto_0
    return v1
.end method

.method private doResetTouchFocus(I)V
    .locals 3

    .line 261
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "doResetTouchFocus"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_0

    const-string v1, "key_focus_state"

    .line 263
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v2, "INACTIVE"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 267
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsShowUI:Z

    .line 268
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    if-eqz p0, :cond_1

    .line 269
    invoke-interface {p0}, Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;->restoreContinue()V

    :cond_1
    return-void
.end method

.method private handleAfLockRestore()V
    .locals 3

    .line 490
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleAfLockRestore] mLockState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mLockState:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 491
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->isLockActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    sget-object v0, Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;->STATE_UNLOCKED:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mLockState:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    :cond_0
    return-void
.end method

.method private isLockActive()Z
    .locals 3

    .line 463
    sget-object v0, Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;->STATE_LOCKING:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mLockState:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;->STATE_LOCKED:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mLockState:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    .line 464
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 465
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isLockActive] isLockActive =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method

.method private onFocusStateUpdate(Ljava/lang/String;)V
    .locals 8

    .line 304
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFocusStateUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsEvChanging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mIsAutoFocusTriggered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsAutoFocusTriggered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mIsShowUI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsShowUI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 306
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsAutoFocusTriggered:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsEvChanging:Z

    if-eqz v0, :cond_0

    return-void

    .line 309
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 312
    invoke-interface {v0, p1, v1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsShowUI:Z

    if-eqz v0, :cond_2

    .line 315
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFocusStateUpdate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v2, "key_focus_state"

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    const/4 v0, -0x1

    .line 318
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "PASSIVE_SCAN"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v2, "ACTIVE_FOCUSED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v4

    goto :goto_0

    :sswitch_2
    const-string v2, "PASSIVE_FOCUSED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v6

    goto :goto_0

    :sswitch_3
    const-string v2, "ACTIVE_SCAN"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v7

    goto :goto_0

    :sswitch_4
    const-string v2, "ACTIVE_UNFOCUSED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v3

    goto :goto_0

    :sswitch_5
    const-string v2, "PASSIVE_UNFOCUSED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v5

    :cond_3
    :goto_0
    const-string v2, "[onFocusStateUpdate] ignore the state "

    if-eqz v0, :cond_7

    if-eq v0, v6, :cond_6

    if-eq v0, v5, :cond_6

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_4

    goto/16 :goto_1

    .line 345
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onFocusStateUpdate] active focus done with state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " , mLockState "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mLockState:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", needResetTouchType:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetTouchType:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 347
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsAutoFocusTriggered:Z

    .line 351
    sget-object p1, Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;->STATE_LOCKING:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mLockState:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 352
    sget-object p1, Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;->STATE_LOCKED:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mLockState:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    goto/16 :goto_1

    .line 354
    :cond_5
    iget p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetTouchType:I

    if-lez p1, :cond_a

    .line 355
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->resetFocusArea()V

    .line 356
    iput-boolean v7, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetFocusState:Z

    .line 357
    iget p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetTouchType:I

    const-wide/16 v0, 0xbb8

    invoke-direct {p0, v7, p1, v0, v1}, Lcom/transsion/camera/feature/setting/focus/Focus;->sendFocusMessage(IIJ)V

    goto :goto_1

    .line 337
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onFocusStateUpdate] passive focus done with state "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 338
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->isLockActive()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 339
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 320
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onFocusStateUpdate] passive focus start with state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 321
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->isLockActive()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 322
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 325
    :cond_8
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusStateUpdateDisabled:Z

    if-eqz p1, :cond_9

    .line 326
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[onFocusStateUpdate] disable update passive focus state "

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 329
    :cond_9
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsEvChanging:Z

    .line 330
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->resetFocusArea()V

    .line 364
    :cond_a
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[onFocusStateUpdate]-"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1d09b766 -> :sswitch_5
        0x2c1b7ca5 -> :sswitch_4
        0x436bf816 -> :sswitch_3
        0x4b74c21f -> :sswitch_2
        0x5664cb1e -> :sswitch_1
        0x5b4248b5 -> :sswitch_0
    .end sparse-switch
.end method

.method private processManualFocus(Ljava/lang/String;)V
    .locals 6

    .line 523
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsInitValue:Z

    if-eqz v0, :cond_9

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mMainHandler:Lcom/transsion/camera/feature/setting/focus/Focus$MainHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 528
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->resetTouchFocusView()V

    const-string v0, "continuous-picture"

    .line 530
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "auto"

    if-eqz v2, :cond_1

    .line 531
    iput v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetTouchType:I

    goto :goto_0

    .line 532
    :cond_1
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    .line 533
    iput v2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetTouchType:I

    goto :goto_0

    .line 535
    :cond_2
    iput v3, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetTouchType:I

    .line 538
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string p1, "fixed"

    .line 542
    :cond_3
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsPreviewStarted:Z

    if-nez v0, :cond_4

    .line 543
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "processManualFocus, preview is not started!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 547
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 548
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processManualFocus is same, value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 552
    :cond_5
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->checkAfEnv()Z

    move-result v0

    if-nez v0, :cond_6

    return-void

    .line 556
    :cond_6
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->handleAfLockRestore()V

    .line 558
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    if-eqz v0, :cond_7

    .line 559
    invoke-interface {v0, p1}, Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;->updateFocusMode(Ljava/lang/String;)Z

    .line 561
    :cond_7
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 562
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->getStoreScope()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, p1, v5, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 563
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processManualFocus, updateFocusMode value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 564
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    if-eqz v0, :cond_8

    .line 565
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    .line 568
    :cond_8
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 569
    iput-boolean v3, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsShowUI:Z

    .line 570
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    invoke-interface {p0}, Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;->autoFocus()V

    :cond_9
    :goto_1
    return-void
.end method

.method private registerKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private resetFocusArea()V
    .locals 1

    .line 457
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 458
    invoke-interface {p0, v0, v0}, Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;->updateFocusArea(Ljava/util/List;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private resetTouchFocusView()V
    .locals 3

    .line 279
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_focus_state"

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v2, "INACTIVE"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v2, "ACTIVE_HIDE_FOCUSE_VIEW"

    if-eqz v0, :cond_1

    .line 284
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 287
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    .line 290
    invoke-interface {p0, v2, v0}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_2
    return-void
.end method

.method private sendFocusMessage(IIJ)V
    .locals 2

    .line 511
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mMainHandler:Lcom/transsion/camera/feature/setting/focus/Focus$MainHandler;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 516
    invoke-virtual {p0, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 518
    :cond_1
    invoke-virtual {p0, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void
.end method

.method private unRegisterKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method


# virtual methods
.method public getDefaultValue()Ljava/lang/String;
    .locals 0

    .line 257
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mDefaultValue:Ljava/lang/String;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_focus"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusParameterConfigure:Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;-><init>(Lcom/transsion/camera/feature/setting/focus/Focus;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusParameterConfigure:Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;

    .line 199
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    .line 200
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    .line 202
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusStateListener:Lcom/transsion/camera/feature/setting/focus/IFocusController$FocusStateListener;

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/setting/focus/IFocusController;->setFocusStateListener(Lcom/transsion/camera/feature/setting/focus/IFocusController$FocusStateListener;)V

    .line 204
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusParameterConfigure:Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .locals 0

    .line 424
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 179
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public getStoreScope()Ljava/lang/String;
    .locals 1

    .line 189
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsProfessionalMode:Z

    if-eqz v0, :cond_0

    .line 190
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v0, "key_professional"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 192
    :cond_0
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSupport()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 419
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 0

    .line 62
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 63
    new-instance p2, Lcom/transsion/camera/feature/setting/focus/Focus$MainHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/feature/setting/focus/Focus$MainHandler;-><init>(Lcom/transsion/camera/feature/setting/focus/Focus;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mMainHandler:Lcom/transsion/camera/feature/setting/focus/Focus$MainHandler;

    const/4 p1, 0x1

    .line 64
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsShowUI:Z

    .line 65
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_0

    const-string p1, "key_exposure_view"

    .line 66
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->registerKeyToMonitor(Ljava/lang/String;)V

    const-string p1, "capture_state"

    .line 67
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->registerKeyToMonitor(Ljava/lang/String;)V

    const-string p1, "key_exposure_scroll_start_and_hide"

    .line 68
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->registerKeyToMonitor(Ljava/lang/String;)V

    const-string p1, "key_manual_focus"

    .line 69
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->registerKeyToMonitor(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 87
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 88
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 89
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 90
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 94
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 95
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, p2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 98
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, p2, v2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    move-object p2, v0

    .line 102
    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 103
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsInitValue:Z

    const-string p1, "continuous-picture"

    .line 104
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 105
    iput v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetTouchType:I

    goto :goto_1

    :cond_2
    const-string p1, "auto"

    .line 106
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    .line 107
    iput p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetTouchType:I

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 109
    iput p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetTouchType:I

    .line 111
    :goto_1
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    if-eqz p1, :cond_4

    .line 112
    invoke-interface {p1, p2}, Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;->updateFocusMode(Ljava/lang/String;)Z

    .line 114
    :cond_4
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsShowUI:Z

    .line 115
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initValueAndSupport, setValue, value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", needResetTouchType:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetTouchType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method notifyModeChanged(Ljava/lang/String;)V
    .locals 1

    .line 505
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_0

    const-string v0, "key_focus_mode"

    .line 506
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onModeClosed(Ljava/lang/String;)V
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[onModeClosed]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 131
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    .line 132
    sget-object p1, Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;->STATE_UNLOCKED:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mLockState:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    const/4 p1, 0x1

    .line 133
    iput p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetTouchType:I

    const/4 p1, 0x0

    .line 134
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetFocusState:Z

    .line 135
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetTouchFocus:Z

    .line 136
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->resetFocusArea()V

    .line 137
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsEvChanging:Z

    .line 138
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusStateUpdateDisabled:Z

    .line 139
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsInitValue:Z

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mDefaultValue:Ljava/lang/String;

    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "key_professional"

    .line 120
    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsProfessionalMode:Z

    const/4 p1, 0x0

    .line 121
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsInitValue:Z

    .line 122
    sget-object p1, Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;->STATE_UNLOCKED:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mLockState:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    const/4 p1, 0x1

    .line 123
    iput p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetTouchType:I

    .line 124
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsShowUI:Z

    .line 125
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onModeOpened, mIsProfessionalMode: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsProfessionalMode:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 6

    .line 370
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsPreviewStarted:Z

    if-nez v0, :cond_0

    .line 371
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "preview is not started!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 375
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->checkAfEnv()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, ","

    .line 379
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/StringUtils;->splitString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 380
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    .line 381
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onValueChanged illegal value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 p1, 0x1

    .line 384
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsAutoFocusTriggered:Z

    .line 385
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->handleAfLockRestore()V

    .line 387
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    .line 388
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    .line 389
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x3

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 394
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 395
    new-instance v2, Lcom/transsion/camera/utils/SettingInfo$Area;

    invoke-direct {v2, v1}, Lcom/transsion/camera/utils/SettingInfo$Area;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 398
    new-instance v3, Lcom/transsion/camera/utils/SettingInfo$Area;

    invoke-direct {v3, v1}, Lcom/transsion/camera/utils/SettingInfo$Area;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    invoke-interface {v1, v0, v2}, Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;->updateFocusArea(Ljava/util/List;Ljava/util/List;)V

    .line 405
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mMainHandler:Lcom/transsion/camera/feature/setting/focus/Focus$MainHandler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 406
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    const-string v1, "auto"

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;->updateFocusMode(Ljava/lang/String;)Z

    .line 407
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onValueChanged, updateFocusMode value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    if-eqz v0, :cond_3

    .line 409
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    .line 411
    :cond_3
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsShowUI:Z

    .line 412
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    invoke-interface {p1}, Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;->autoFocus()V

    .line 414
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[onSingleTapUp]-"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 400
    :catch_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onValueChanged IllegalArgumentException"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[overrideValues] + headerKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",currentValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",supportValues "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 212
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 213
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 214
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;->overrideFocusMode(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 216
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    const-string p3, "auto"

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 217
    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 218
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mMainHandler:Lcom/transsion/camera/feature/setting/focus/Focus$MainHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .locals 0

    return-void
.end method

.method public unInit()V
    .locals 1

    .line 75
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    .line 76
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_0

    const-string v0, "key_exposure_view"

    .line 77
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/focus/Focus;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "capture_state"

    .line 78
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/focus/Focus;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_exposure_scroll_start_and_hide"

    .line 79
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/focus/Focus;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_manual_focus"

    .line 80
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/focus/Focus;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsEvChanging:Z

    return-void
.end method
