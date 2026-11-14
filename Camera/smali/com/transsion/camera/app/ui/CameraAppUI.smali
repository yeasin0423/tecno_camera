.class public Lcom/transsion/camera/app/ui/CameraAppUI;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/CameraAppUI$OnEditorFragmentStateListenerImpl;,
        Lcom/transsion/camera/app/ui/CameraAppUI$OnFragmentStateListenerImpl;,
        Lcom/transsion/camera/app/ui/CameraAppUI$OnTouchListenerImpl;,
        Lcom/transsion/camera/app/ui/CameraAppUI$CameraSwitchListenerImpl;,
        Lcom/transsion/camera/app/ui/CameraAppUI$ModeChangedListenerImpl;,
        Lcom/transsion/camera/app/ui/CameraAppUI$SwitchDualCamBWCameraListenerImpl;,
        Lcom/transsion/camera/app/ui/CameraAppUI$SwitchBlurCameraListenerImpl;,
        Lcom/transsion/camera/app/ui/CameraAppUI$SwitchTeleCameraListenerImpl;,
        Lcom/transsion/camera/app/ui/CameraAppUI$SwitchWideCameraListenerImpl;,
        Lcom/transsion/camera/app/ui/CameraAppUI$FragmentListenerImpl;,
        Lcom/transsion/camera/app/ui/CameraAppUI$UIHandler;,
        Lcom/transsion/camera/app/ui/CameraAppUI$ShutterResponseListener;,
        Lcom/transsion/camera/app/ui/CameraAppUI$ThumbnailListenerWrap;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

.field private mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

.field private mApertureType:I

.field private mApertureUIManager:Lcom/transsion/camera/app/ui/manager/ApertureUIManager;

.field private mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

.field private mArActivityCoverLayout:Landroid/widget/FrameLayout;

.field private mBottomBarRootView:Landroid/view/View;

.field private mCameraOperateAction:Lcom/transsion/camera/app/common/mode/CameraOperateAction;

.field private mCameraSwitchFlag:Z

.field private mCameraSwitchListener:Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;

.field private mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

.field private mContext:Landroid/content/Context;

.field private mContinuousShotUIManager:Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;

.field private mCurrentAppUIState:I

.field private mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

.field private mDelayTime:I

.field private mFilterUIManager:Lcom/transsion/camera/app/ui/manager/FilterUIManager;

.field private mFirstSteadyFrameFlag:Z

.field private mFrameOnceComed:Z

.field private mGoogleLensUIManager:Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;

.field private mGotoActivityListener:Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;

.field private mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

.field private mHideShutter:Z

.field private mHideShutterFromSelfTimer:Z

.field private mHintRootLayout:Landroid/view/ViewGroup;

.field private mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

.field private mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

.field private mIntercept:Z

.field private mIsAlreadyGotoAR:Z

.field private mIsCaptured:Z

.field private mIsModePickerSink:Z

.field private volatile mIsPaused:Z

.field private mIsSecureCamera:Z

.field private mIsUIManagerSetuped:Z

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLockObj:Ljava/lang/Object;

.field private mMainScreenPosition:Lcom/transsion/camera/app/ui/MainScreenOriginPosition;

.field private mModeAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

.field private mModeChangeListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

.field private mModeInflateRoot:Landroid/view/ViewGroup;

.field private mModeInflateScrollRoot:Landroid/view/ViewGroup;

.field private mModeOrderEditorManager:Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;

.field private mModePickerLayout:Landroid/view/View;

.field private mModePickerRootView:Landroid/view/ViewGroup;

.field private mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

.field private mModeUIControl:Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;

.field private mNavigationBarHeight:I

.field private mOnceLowPowerHint:Lcom/transsion/camera/app/common/ui/HintInfo;

.field mOpenOnly:Z

.field private mOrientation:I

.field private mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

.field private mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mPhotoIntent:Z

.field private mPreviewGestureManager:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

.field private mPreviewGestureScrollAdapter:Lcom/transsion/camera/app/ui/PreviewGestureScrollAdapter;

.field private mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

.field private mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

.field private mRawActionCallback:Lcom/transsion/camera/app/common/mode/CameraOperateAction$RawActionHandleCallback;

.field private mRootView:Landroid/view/ViewGroup;

.field private mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

.field private mScrollModeIndex:I

.field private mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field private mSettingFragmentManager:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

.field private mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

.field private mShutterAnimatorFlag:Z

.field private mShutterAnimatorSet:Landroid/animation/AnimatorSet;

.field private mShutterPanelRootView:Landroid/view/ViewGroup;

.field private mShutterResponseListener:Lcom/transsion/camera/app/ui/CameraAppUI$ShutterResponseListener;

.field private mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

.field private mSinkAnimatorSet:Landroid/animation/AnimatorSet;

.field private mSpecifyModePolicy:Lcom/transsion/camera/app/SpecifyModePolicy;

.field protected mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

.field private mSuperNightFilterUIManager:Lcom/transsion/camera/app/ui/manager/SuperNightFilterUIManager;

.field private mSwitchBlurCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchBlurCameraListener;

.field private mSwitchDualCamBWListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualCamBWCameraListener;

.field private mSwitchSatCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchSatCameraListener;

.field private mSwitchTeleCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchLogicalCameraListener;

.field private mSwitchWideCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

.field private mThermalThrottleUIManager:Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;

.field private mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

.field private mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

.field private mUIHandler:Lcom/transsion/camera/app/ui/CameraAppUI$UIHandler;

.field private final mUIManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/manager/AbstractViewManager;",
            ">;"
        }
    .end annotation
.end field

.field private mUISinkModeChange:Z

.field private mVideoIntent:Z

.field private mVoiceInteraction:Z

.field private mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

.field private mZoomKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;

.field modeNotifyCameraOperateActionCallback:Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 111
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CameraAppUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/CameraAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mUIManagers:Ljava/util/List;

    .line 144
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    .line 151
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mIsUIManagerSetuped:Z

    const/4 v1, -0x1

    .line 152
    iput v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mOrientation:I

    const/4 v1, 0x0

    .line 169
    iput-object v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModeInflateRoot:Landroid/view/ViewGroup;

    .line 174
    iput v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mNavigationBarHeight:I

    .line 193
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mFrameOnceComed:Z

    .line 194
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mIsSecureCamera:Z

    .line 195
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mVoiceInteraction:Z

    .line 196
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mCameraSwitchFlag:Z

    const/4 v1, 0x1

    .line 198
    iput v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mCurrentAppUIState:I

    .line 199
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mIsPaused:Z

    .line 200
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mLockObj:Ljava/lang/Object;

    .line 206
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mPhotoIntent:Z

    .line 207
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mVideoIntent:Z

    .line 209
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mUISinkModeChange:Z

    .line 210
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mOpenOnly:Z

    .line 211
    iput v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mDelayTime:I

    .line 213
    iput v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mApertureType:I

    .line 220
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mIsCaptured:Z

    .line 221
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mIsAlreadyGotoAR:Z

    .line 222
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mIntercept:Z

    .line 223
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mFirstSteadyFrameFlag:Z

    .line 225
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mIsModePickerSink:Z

    .line 226
    iput v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mScrollModeIndex:I

    .line 239
    new-instance v0, Lcom/transsion/camera/app/ui/CameraAppUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/CameraAppUI$1;-><init>(Lcom/transsion/camera/app/ui/CameraAppUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mRawActionCallback:Lcom/transsion/camera/app/common/mode/CameraOperateAction$RawActionHandleCallback;

    .line 256
    new-instance v0, Lcom/transsion/camera/app/ui/CameraAppUI$UIHandler;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/CameraAppUI$UIHandler;-><init>(Lcom/transsion/camera/app/ui/CameraAppUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/CameraAppUI$UIHandler;

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 110
    sget-object v0, Lcom/transsion/camera/app/ui/CameraAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/CameraAppUI;)Z
    .locals 0

    .line 110
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mIsPaused:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/app/ui/CameraAppUI;)Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/app/ui/CameraAppUI;)Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/app/ui/CameraAppUI;)Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModeUIControl:Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/CameraAppUI;)Z
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->isMainThread()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lcom/transsion/camera/app/ui/CameraAppUI;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->doSetupUIManagers()V

    return-void
.end method

.method static synthetic access$2400(Lcom/transsion/camera/app/ui/CameraAppUI;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->doUpdateTopBarSettingUIList()V

    return-void
.end method

.method static synthetic access$2500(Lcom/transsion/camera/app/ui/CameraAppUI;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->doUpdateHelpGuide()V

    return-void
.end method

.method static synthetic access$2600(Lcom/transsion/camera/app/ui/CameraAppUI;IILjava/lang/String;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/CameraAppUI;->doUpdateUIState(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/transsion/camera/app/ui/CameraAppUI;Z)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/CameraAppUI;->doUpdateOverlaySettingUIList(Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/transsion/camera/app/ui/CameraAppUI;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->doUpdateTopBar()V

    return-void
.end method

.method static synthetic access$2900(Lcom/transsion/camera/app/ui/CameraAppUI;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->checkUpdateInteractiveUIList()V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/ui/CameraAppUI;I)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/CameraAppUI;->onCameraOperateAction(I)V

    return-void
.end method

.method static synthetic access$3000(Lcom/transsion/camera/app/ui/CameraAppUI;I)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/CameraAppUI;->notifyCameraStateToUI(I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/transsion/camera/app/ui/CameraAppUI;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->doDelayLoadUIManager()V

    return-void
.end method

.method static synthetic access$3200(Lcom/transsion/camera/app/ui/CameraAppUI;IZ)V
    .locals 0

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/CameraAppUI;->doUpdateShutterType(IZ)V

    return-void
.end method

.method static synthetic access$3300(Lcom/transsion/camera/app/ui/CameraAppUI;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/CameraAppUI;->doShowCustomPreviewCover(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/transsion/camera/app/ui/CameraAppUI;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->doHideCustomPreviewCover()V

    return-void
.end method

.method static synthetic access$3500(Lcom/transsion/camera/app/ui/CameraAppUI;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->enterSettingFragment()V

    return-void
.end method

.method static synthetic access$3600(Lcom/transsion/camera/app/ui/CameraAppUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mSwitchWideCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/transsion/camera/app/ui/CameraAppUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchLogicalCameraListener;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mSwitchTeleCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchLogicalCameraListener;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/transsion/camera/app/ui/CameraAppUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchBlurCameraListener;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mSwitchBlurCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchBlurCameraListener;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/transsion/camera/app/ui/CameraAppUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualCamBWCameraListener;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mSwitchDualCamBWListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualCamBWCameraListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/ui/CameraAppUI;)Ljava/lang/Object;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mLockObj:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/transsion/camera/app/ui/CameraAppUI;)Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModeChangeListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/transsion/camera/app/ui/CameraAppUI;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->enterARCoreMode()V

    return-void
.end method

.method static synthetic access$4200(Lcom/transsion/camera/app/ui/CameraAppUI;)Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mCameraSwitchListener:Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;

    return-object p0
.end method

.method static synthetic access$4302(Lcom/transsion/camera/app/ui/CameraAppUI;Z)Z
    .locals 0

    .line 110
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mCameraSwitchFlag:Z

    return p1
.end method

.method static synthetic access$4400(Lcom/transsion/camera/app/ui/CameraAppUI;)Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mPreviewGestureManager:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/ui/CameraAppUI;)Lcom/transsion/camera/app/ui/CameraAppUI$UIHandler;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/CameraAppUI$UIHandler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/app/ui/CameraAppUI;)Lcom/transsion/camera/app/ui/ScrollConsumer;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/app/ui/CameraAppUI;)I
    .locals 0

    .line 110
    iget p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mScrollModeIndex:I

    return p0
.end method

.method static synthetic access$802(Lcom/transsion/camera/app/ui/CameraAppUI;I)I
    .locals 0

    .line 110
    iput p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mScrollModeIndex:I

    return p1
.end method

.method static synthetic access$900(Lcom/transsion/camera/app/ui/CameraAppUI;)Lcom/transsion/camera/app/ui/manager/HintUIManager;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    return-object p0
.end method

.method private checkUpdateInteractiveUIList()V
    .locals 4

    .line 1697
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->isModeTabScrolling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1698
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/CameraAppUI$UIHandler;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1699
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/CameraAppUI$UIHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1701
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->doUpdateInteractiveUIList()V

    :goto_0
    return-void
.end method

.method private delayLoadUIManager()V
    .locals 4

    .line 1407
    sget-object v0, Lcom/transsion/camera/app/ui/CameraAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[delayLoadUIManager] start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1408
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/CameraAppUI;->doUpdateOverlaySettingUIList(Z)V

    .line 1409
    iget-object v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    if-eqz v1, :cond_0

    .line 1410
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->showModePickerGuide()V

    .line 1412
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/CameraAppUI$UIHandler;

    new-instance v2, Lcom/transsion/camera/app/ui/-$$Lambda$CameraAppUI$vBMRUyqRRfT4DQZS1e-2f7-FGJw;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/ui/-$$Lambda$CameraAppUI$vBMRUyqRRfT4DQZS1e-2f7-FGJw;-><init>(Lcom/transsion/camera/app/ui/CameraAppUI;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1413
    iget-object v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mContinuousShotUIManager:Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;

    if-nez v1, :cond_1

    .line 1414
    new-instance v1, Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mMainScreenPosition:Lcom/transsion/camera/app/ui/MainScreenOriginPosition;

    invoke-direct {v1, v2}, Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;-><init>(Lcom/transsion/camera/app/ui/MainScreenOriginPosition;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mContinuousShotUIManager:Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;

    .line 1415
    iget-object v2, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mUIManagers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1416
    iget-object v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mRootView:Landroid/view/ViewGroup;

    const v2, 0x7f09018a

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1417
    iget-object v2, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mContinuousShotUIManager:Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v1, v3}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 1418
    iget-object v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mContinuousShotUIManager:Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;

    iget v2, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mOrientation:I

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;->onOrientationChanged(I)V

    .line 1420
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/CameraAppUI$UIHandler;

    new-instance v2, Lcom/transsion/camera/app/ui/-$$Lambda$CameraAppUI$xTqTTjUHdyRx7Wyw7x7cQJkoRMw;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/ui/-$$Lambda$CameraAppUI$xTqTTjUHdyRx7Wyw7x7cQJkoRMw;-><init>(Lcom/transsion/camera/app/ui/CameraAppUI;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1421
    iget v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mApertureType:I

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mApertureUIManager:Lcom/transsion/camera/app/ui/manager/ApertureUIManager;

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    if-eq v1, v0, :cond_3

    const/4 v0, 0x2

    if-eq v1, v0, :cond_2

    goto :goto_0

    .line 1428
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0900b3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 1425
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0901fb

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_4

    .line 1432
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mApertureUIManager:Lcom/transsion/camera/app/ui/manager/ApertureUIManager;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 1435
    :cond_4
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->onUIManagerReady()V

    .line 1436
    sget-object p0, Lcom/transsion/camera/app/ui/CameraAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[delayLoadUIManager] end"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private doDelayLoadUIManager()V
    .locals 4

    .line 1397
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasWindowFocus()Z

    move-result v0

    .line 1398
    sget-object v1, Lcom/transsion/camera/app/ui/CameraAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[doDelayLoadUIManager] mRootView hasWindowFocus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 1400
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->delayLoadUIManager()V

    goto :goto_0

    .line 1402
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/CameraAppUI$UIHandler;

    new-instance v1, Lcom/transsion/camera/app/ui/-$$Lambda$CameraAppUI$Gax-EDq3Nowqae6FAR-a6piX064;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/-$$Lambda$CameraAppUI$Gax-EDq3Nowqae6FAR-a6piX064;-><init>(Lcom/transsion/camera/app/ui/CameraAppUI;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private doHideCustomPreviewCover()V
    .locals 0

    .line 330
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->hideCustomPreviewCover()V

    return-void
.end method

.method private doLoadFilterUIManager()V
    .locals 4

    .line 1456
    sget-object v0, Lcom/transsion/camera/app/ui/CameraAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[doLoadFilterUIManager] start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1457
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mFilterUIManager:Lcom/transsion/camera/app/ui/manager/FilterUIManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1458
    iget-object v2, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModePickerLayout:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1459
    iget-object v3, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v3}, Lcom/transsion/camera/app/ui/manager/FilterUIManager;->init(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    .line 1461
    :cond_0
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mFrameOnceComed:Z

    .line 1464
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mSuperNightFilterUIManager:Lcom/transsion/camera/app/ui/manager/SuperNightFilterUIManager;

    if-eqz v0, :cond_3

    .line 1465
    iget-object v2, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModePickerLayout:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 1466
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, p0}, Lcom/transsion/camera/app/ui/manager/SuperNightFilterUIManager;->init(Landroid/view/View;Landroid/view/View;)V

    goto :goto_1

    .line 1468
    :cond_2
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mFrameOnceComed:Z

    .line 1471
    :cond_3
    :goto_1
    sget-object p0, Lcom/transsion/camera/app/ui/CameraAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[doLoadFilterUIManager] end"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private doLoadHintUIManager()V
    .locals 3

    .line 1440
    sget-object v0, Lcom/transsion/camera/app/ui/CameraAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[doLoadHintUIManager] start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1441
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-nez v0, :cond_0

    .line 1442
    new-instance v0, Lcom/transsion/camera/app/ui/manager/HintUIManager;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mMainScreenPosition:Lcom/transsion/camera/app/ui/MainScreenOriginPosition;

    invoke-direct {v0, v1, p0}, Lcom/transsion/camera/app/ui/manager/HintUIManager;-><init>(Lcom/transsion/camera/app/ui/MainScreenOriginPosition;Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    .line 1443
    iget-object v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mUIManagers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1444
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mHintRootLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 1445
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    iget v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->onOrientationChanged(I)V

    .line 1447
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mOnceLowPowerHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz v0, :cond_0

    .line 1448
    iget-object v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->showLowPowerHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    const/4 v0, 0x0

    .line 1449
    iput-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mOnceLowPowerHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 1452
    :cond_0
    sget-object p0, Lcom/transsion/camera/app/ui/CameraAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[doLoadHintUIManager] end"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private doSetupUIManagers()V
    .locals 9

    .line 1475
    sget-object v0, Lcom/transsion/camera/app/ui/CameraAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[doSetupUIManagers] start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1476
    new-instance v0, Lcom/transsion/camera/app/ui/CameraAppUI$SwitchWideCameraListenerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/CameraAppUI$SwitchWideCameraListenerImpl;-><init>(Lcom/transsion/camera/app/ui/CameraAppUI;Lcom/transsion/camera/app/ui/CameraAppUI$1;)V

    .line 1477
    new-instance v2, Lcom/transsion/camera/app/ui/CameraAppUI$SwitchTeleCameraListenerImpl;

    invoke-direct {v2, p0, v1}, Lcom/transsion/camera/app/ui/CameraAppUI$SwitchTeleCameraListenerImpl;-><init>(Lcom/transsion/camera/app/ui/CameraAppUI;Lcom/transsion/camera/app/ui/CameraAppUI$1;)V

    .line 1478
    new-instance v3, Lcom/transsion/camera/app/ui/CameraAppUI$SwitchBlurCameraListenerImpl;

    invoke-direct {v3, p0, v1}, Lcom/transsion/camera/app/ui/CameraAppUI$SwitchBlurCameraListenerImpl;-><init>(Lcom/transsion/camera/app/ui/CameraAppUI;Lcom/transsion/camera/app/ui/CameraAppUI$1;)V

    .line 1479
    new-instance v4, Lcom/transsion/camera/app/ui/CameraAppUI$SwitchDualCamBWCameraListenerImpl;

    invoke-direct {v4, p0, v1}, Lcom/transsion/camera/app/ui/CameraAppUI$SwitchDualCamBWCameraListenerImpl;-><init>(Lcom/transsion/camera/app/ui/CameraAppUI;Lcom/transsion/camera/app/ui/CameraAppUI$1;)V

    .line 1481
    iget-object v5, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    new-instance v6, Lcom/transsion/camera/app/ui/CameraAppUI$OnTouchListenerImpl;

    invoke-direct {v6, p0, v1}, Lcom/transsion/camera/app/ui/CameraAppUI$OnTouchListenerImpl;-><init>(Lcom/transsion/camera/app/ui/CameraAppUI;Lcom/transsion/camera/app/ui/CameraAppUI$1;)V

    invoke-virtual {v5, v6}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1483
    iget-object v5, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz v5, :cond_0

    .line 1484
    iget-object v6, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v5, v6, v7}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 1486
    :cond_0
    iget-object v5, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v5, v6, v7}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 1487
    iget-object v5, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v5, v6, v7}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 1488
    iget-object v5, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mGoogleLensUIManager:Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;

    if-eqz v5, :cond_1

    .line 1489
    iget-object v6, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v5, v6, v7}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 1498
    :cond_1
    iget-object v5, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    if-eqz v5, :cond_2

    .line 1499
    iget-object v6, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mRootView:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModePickerRootView:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v5, v6, v7, v8}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 1500
    iget-object v5, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-virtual {p0, v5}, Lcom/transsion/camera/app/ui/CameraAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 1503
    :cond_2
    iget-object v5, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mRootView:Landroid/view/ViewGroup;

    const v6, 0x7f090163

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModePickerLayout:Landroid/view/View;

    .line 1505
    iget-object v5, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mRootView:Landroid/view/ViewGroup;

    const v6, 0x7f09024f

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 1506
    iget-object v6, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    iget-object v7, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v6, v5, v7}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 1507
    iget-object v5, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mRootView:Landroid/view/ViewGroup;

    const v6, 0x7f090250

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 1508
    iget-object v6, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    iget-object v7, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v6, v5, v7}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 1517
    iget-object v5, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz v5, :cond_3

    .line 1518
    iget-object v5, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mRootView:Landroid/view/ViewGroup;

    const v6, 0x7f090275

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 1519
    iget-object v6, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    iget-object v7, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v6, v5, v7}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 1520
    iget-object v5, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    invoke-virtual {v5, v0}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->setSwitchWideCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;)V

    .line 1523
    :cond_3
    iget-object v5, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mRootView:Landroid/view/ViewGroup;

    const v6, 0x7f09018a

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 1524
    iget-object v6, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    iget-object v7, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mRootView:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v6, v7, v5, v8}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 1525
    iget-object v5, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    invoke-virtual {p0, v5}, Lcom/transsion/camera/app/ui/CameraAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 1526
    iget-object v5, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    invoke-virtual {v5, v0}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->setSwitchWideCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;)V

    .line 1528
    new-instance v5, Lcom/transsion/camera/app/common/interactive/CommonInteractive;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModePickerLayout:Landroid/view/View;

    iget-object v7, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mMainScreenPosition:Lcom/transsion/camera/app/ui/MainScreenOriginPosition;

    invoke-direct {v5, v6, v7, v8}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;-><init>(Landroid/view/View;Landroid/view/View;Lcom/transsion/camera/app/common/IImmutableFrameSize;)V

    .line 1529
    iget-object v6, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-virtual {v5, v6}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->setModeRegionControl(Lcom/transsion/camera/app/common/IModeRegionControl;)V

    .line 1530
    iget-object v6, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    iget-object v7, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v6, v7, v5, v8}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->init(Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;Landroid/view/LayoutInflater;)V

    .line 1531
    iget-object v5, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-virtual {v5, v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->setSwitchWideCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;)V

    .line 1533
    iget-object v5, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mPreviewGestureManager:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    const/16 v7, 0x8

    invoke-virtual {v5, v6, v7}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->registerGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;I)V

    .line 1534
    iget-object v5, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    if-eqz v5, :cond_4

    .line 1535
    iget-object v6, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mPreviewGestureManager:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    invoke-virtual {v6, v5, v7}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->registerGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;I)V

    .line 1538
    :cond_4
    iget-object v5, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mPreviewGestureManager:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    const/4 v7, 0x6

    invoke-virtual {v5, v6, v7}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->registerGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;I)V

    .line 1540
    iget-object v5, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    new-instance v6, Lcom/transsion/camera/app/ui/CameraAppUI$FragmentListenerImpl;

    invoke-direct {v6, p0, v1}, Lcom/transsion/camera/app/ui/CameraAppUI$FragmentListenerImpl;-><init>(Lcom/transsion/camera/app/ui/CameraAppUI;Lcom/transsion/camera/app/ui/CameraAppUI$1;)V

    invoke-virtual {v5, v6}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setSettingFragmentListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentListener;)V

    .line 1541
    iget-object v5, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {v5, v0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setSwitchWideCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;)V

    .line 1542
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setSwitchTeleCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchLogicalCameraListener;)V

    .line 1543
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setSwitchBlurCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchBlurCameraListener;)V

    .line 1544
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setSwitchDualCamBWCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualCamBWCameraListener;)V

    .line 1546
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    if-eqz v0, :cond_5

    .line 1547
    new-instance v2, Lcom/transsion/camera/app/ui/CameraAppUI$ModeChangedListenerImpl;

    invoke-direct {v2, p0, v1}, Lcom/transsion/camera/app/ui/CameraAppUI$ModeChangedListenerImpl;-><init>(Lcom/transsion/camera/app/ui/CameraAppUI;Lcom/transsion/camera/app/ui/CameraAppUI$1;)V

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setModePickerListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V

    .line 1549
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    new-instance v2, Lcom/transsion/camera/app/ui/CameraAppUI$CameraSwitchListenerImpl;

    invoke-direct {v2, p0, v1}, Lcom/transsion/camera/app/ui/CameraAppUI$CameraSwitchListenerImpl;-><init>(Lcom/transsion/camera/app/ui/CameraAppUI;Lcom/transsion/camera/app/ui/CameraAppUI$1;)V

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->setCameraSwitchListener(Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;)V

    .line 1551
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mRootView:Landroid/view/ViewGroup;

    const v2, 0x7f090232

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1552
    iget-object v2, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mThermalThrottleUIManager:Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v0, v3}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 1553
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mThermalThrottleUIManager:Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mMainScreenPosition:Lcom/transsion/camera/app/ui/MainScreenOriginPosition;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->getCutoutHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;->setCutoutHeight(I)V

    .line 1554
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mThermalThrottleUIManager:Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;->setPopupOptionControl(Lcom/transsion/camera/app/common/IAppUIControl$IPopupOptionControl;)V

    .line 1555
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mSettingFragmentManager:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    new-instance v2, Lcom/transsion/camera/app/ui/CameraAppUI$OnFragmentStateListenerImpl;

    invoke-direct {v2, p0, v1}, Lcom/transsion/camera/app/ui/CameraAppUI$OnFragmentStateListenerImpl;-><init>(Lcom/transsion/camera/app/ui/CameraAppUI;Lcom/transsion/camera/app/ui/CameraAppUI$1;)V

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V

    .line 1556
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModeOrderEditorManager:Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;

    if-eqz v0, :cond_6

    .line 1557
    new-instance v2, Lcom/transsion/camera/app/ui/CameraAppUI$OnEditorFragmentStateListenerImpl;

    invoke-direct {v2, p0, v1}, Lcom/transsion/camera/app/ui/CameraAppUI$OnEditorFragmentStateListenerImpl;-><init>(Lcom/transsion/camera/app/ui/CameraAppUI;Lcom/transsion/camera/app/ui/CameraAppUI$1;)V

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V

    :cond_6
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    .line 1559
    iget-object v2, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModePickerRootView:Landroid/view/ViewGroup;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/CameraAppUI;->updateNavigationBarHeight([Landroid/view/View;)V

    .line 1560
    sget-object p0, Lcom/transsion/camera/app/ui/CameraAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[doSetupUIManagers] end"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private doShowCustomPreviewCover(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 326
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->showCustomPreviewCover(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private doUpdateHelpGuide()V
    .locals 4

    .line 1568
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    if-eqz v0, :cond_2

    .line 1569
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getModeGuideLayoutsArrayId()I

    move-result v0

    .line 1570
    iget-object v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getSettingGuideLayoutsArrayId()I

    move-result v1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    if-ne v1, v2, :cond_0

    .line 1572
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->updateHelpGuideIcon(Z)V

    goto :goto_0

    .line 1574
    :cond_0
    iget-object v3, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->show()V

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    .line 1577
    iget-object v2, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->createSettingGuideItemUIList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1579
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    invoke-virtual {v1, v0, v3}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->setGuideItemList(ILjava/util/List;)V

    .line 1580
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->updateHelpGuideIcon(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private doUpdateInteractiveUIList()V
    .locals 2

    .line 1706
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    if-eqz v0, :cond_0

    .line 1707
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getModeInteractiveSettingUIEntries()[Ljava/lang/String;

    move-result-object v0

    .line 1708
    iget-object v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->getCommonSettingUIList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1709
    iget-object v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->setSettingUIList(Ljava/util/List;)V

    if-eqz v0, :cond_0

    .line 1710
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1711
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->show()V

    :cond_0
    return-void
.end method

.method private doUpdateOverlaySettingUIList(Z)V
    .locals 5

    .line 1634
    sget-object v0, Lcom/transsion/camera/app/ui/CameraAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[doUpdateOverlaySettingUIList] start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1635
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    if-eqz v0, :cond_5

    .line 1637
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v0, :cond_0

    .line 1638
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    .line 1639
    sget-object v1, Lcom/transsion/camera/app/ui/CameraAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[doUpdateOverlaySettingUIList] currentCameraId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "0"

    .line 1641
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030018

    .line 1642
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1643
    iget-object v2, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getModeSettingUIEntries()[Ljava/lang/String;

    move-result-object v2

    .line 1644
    iget-object v3, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    .line 1645
    invoke-virtual {v3, v2}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->getCommonSettingUIList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1646
    iget-object v3, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    .line 1647
    invoke-virtual {v4, v1}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->getCommonSettingUIList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1646
    invoke-virtual {v3, v1, v2}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->setSettingUIList(Ljava/util/List;Ljava/util/List;)V

    .line 1648
    iget-object v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz v1, :cond_5

    .line 1649
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    .line 1650
    invoke-interface {v1, v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    .line 1654
    iget-object v3, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    invoke-virtual {v3, v2}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->setOffsetPadding(I)V

    .line 1655
    iget-object v3, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getModeOffsetPadding()I

    move-result v3

    if-lez v3, :cond_2

    .line 1656
    iget-object v3, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getModeOffsetPadding()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->setOffsetPadding(I)V

    .line 1658
    :cond_2
    iget-object v3, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getWideCameraSettingUIEntries()[Ljava/lang/String;

    move-result-object v3

    .line 1659
    iget-object v4, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    invoke-virtual {v4, v3}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->createWideCameraItemUIList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1660
    iget-object v4, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    invoke-virtual {v4, v3, v0}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->setSettingUIList(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_2

    .line 1662
    :cond_3
    iget-object v3, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getFrontWideCameraSettingUIEntries()[Ljava/lang/String;

    move-result-object v3

    .line 1663
    iget-object v4, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    invoke-virtual {v4, v3}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->createWideCameraItemUIList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1664
    iget-object v4, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    invoke-virtual {v4, v3, v0}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->setFrontSettingUIList(Ljava/util/List;Ljava/lang/String;)V

    .line 1666
    :goto_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->setZoomOffsetPadding(I)V

    .line 1667
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getModeOffsetPadding()I

    move-result v0

    if-lez v0, :cond_4

    .line 1668
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getModeOffsetPadding()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->setZoomOffsetPadding(I)V

    .line 1670
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    new-instance v2, Lcom/transsion/camera/app/common/ModeConfig;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-direct {v2, v3, v1}, Lcom/transsion/camera/app/common/ModeConfig;-><init>(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->updateModeConfigToZoom(Lcom/transsion/camera/app/common/ModeConfig;)V

    .line 1675
    :cond_5
    iget v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mOrientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 1676
    iget-object v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->onOrientationChanged(I)V

    .line 1677
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz v0, :cond_6

    .line 1678
    iget v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->onOrientationChanged(I)V

    :cond_6
    if-eqz p1, :cond_8

    .line 1684
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->notifyCameraOperateActionToUI(I)V

    .line 1685
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p1, :cond_7

    .line 1686
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->notifyCameraOperateActionToUI(I)V

    .line 1688
    :cond_7
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->notifyCameraOperateActionToUI(I)V

    .line 1689
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p0, :cond_8

    .line 1690
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->notifyCameraOperateActionToUI(I)V

    .line 1693
    :cond_8
    sget-object p0, Lcom/transsion/camera/app/ui/CameraAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[doUpdateOverlaySettingUIList] end"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private doUpdateShutterType(IZ)V
    .locals 0

    .line 627
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->updateShutterType(IZ)V

    return-void
.end method

.method private doUpdateTopBar()V
    .locals 0

    .line 1564
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->updateSettingUIs()V

    return-void
.end method

.method private doUpdateTopBarSettingUIList()V
    .locals 7

    .line 1586
    sget-object v0, Lcom/transsion/camera/app/ui/CameraAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[doUpdateTopBarSettingUIList] start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1589
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v0, :cond_0

    .line 1590
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    .line 1591
    sget-object v1, Lcom/transsion/camera/app/ui/CameraAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[doUpdateTopBarSettingUIList] currentCameraId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "0"

    .line 1593
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030016

    .line 1594
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const v3, 0x7f080279

    const/4 v4, 0x0

    .line 1595
    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1596
    iget-object v3, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    if-eqz v3, :cond_4

    .line 1597
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getTopBarSettingUIEntries()[Ljava/lang/String;

    move-result-object v3

    .line 1598
    iget-object v4, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    invoke-virtual {v4, v3, v2, v1}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->getTopBarItemUIList([Ljava/lang/String;Ljava/util/List;Landroid/graphics/drawable/Drawable;)Ljava/util/List;

    move-result-object v1

    .line 1600
    sget-object v2, Lcom/transsion/camera/app/ui/manager/FilterUIManager;->filterModeEntries:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 1601
    iget-object v6, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1602
    iget-object v5, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mFilterUIManager:Lcom/transsion/camera/app/ui/manager/FilterUIManager;

    invoke-virtual {v5}, Lcom/transsion/camera/app/ui/manager/FilterUIManager;->getFilterTopBarItemUI()Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1604
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1606
    :cond_1
    iget-object v5, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.transsion.camera.feature.supernightfilter.mode.SuperNightFilterModeEntry"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1607
    iget-object v5, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mSuperNightFilterUIManager:Lcom/transsion/camera/app/ui/manager/SuperNightFilterUIManager;

    invoke-virtual {v5}, Lcom/transsion/camera/app/ui/manager/SuperNightFilterUIManager;->getFilterTopBarItemUI()Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1609
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1614
    :cond_3
    iget-object v2, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setSettingUIList(Ljava/util/List;)V

    .line 1615
    iget v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mCurrentAppUIState:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    .line 1617
    iget-object v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->show()V

    .line 1621
    :cond_4
    iget v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mOrientation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 1622
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/CameraAppUI;->onOrientationChanged(I)V

    .line 1625
    :cond_5
    iget v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mApertureType:I

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mApertureUIManager:Lcom/transsion/camera/app/ui/manager/ApertureUIManager;

    if-eqz v1, :cond_6

    .line 1626
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->setCurrentCameraId(Ljava/lang/String;)V

    .line 1629
    :cond_6
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->checkUpdateInteractiveUIList()V

    .line 1630
    sget-object p0, Lcom/transsion/camera/app/ui/CameraAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[doUpdateTopBarSettingUIList] end"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private doUpdateUIState(IILjava/lang/String;)V
    .locals 3

    .line 1717
    iput p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mCurrentAppUIState:I

    .line 1718
    sget-object v0, Lcom/transsion/camera/app/ui/CameraAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doUpdateUIState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const v0, 0x106000d

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 1834
    :pswitch_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->hide()V

    .line 1835
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->hide()V

    .line 1836
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->hide()V

    .line 1837
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->hide()V

    .line 1838
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->onBackPressed()Z

    .line 1839
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p1, :cond_0

    .line 1840
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->hide()V

    .line 1842
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    if-eqz p1, :cond_1

    .line 1843
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->hide()V

    .line 1845
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz p1, :cond_2

    .line 1846
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->hide()V

    .line 1848
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mGoogleLensUIManager:Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;

    if-eqz p1, :cond_3

    .line 1849
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->hide()V

    .line 1851
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p1, :cond_4

    .line 1852
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->show()V

    .line 1853
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->hideSavingDialog()V

    .line 1855
    :cond_4
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mBottomBarRootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1831
    :pswitch_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->transitionToSmile()V

    goto/16 :goto_1

    .line 1808
    :pswitch_2
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->hide()V

    .line 1809
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->hide()V

    .line 1810
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p1, :cond_5

    .line 1811
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->hide()V

    .line 1813
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    if-eqz p1, :cond_6

    .line 1814
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->hide()V

    .line 1816
    :cond_6
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz p1, :cond_7

    .line 1817
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->hide()V

    .line 1819
    :cond_7
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->hide()V

    .line 1820
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p1, :cond_8

    .line 1821
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->hide()V

    .line 1822
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->hideAllHint()V

    .line 1824
    :cond_8
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mGoogleLensUIManager:Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;

    if-eqz p1, :cond_9

    .line 1825
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->hide()V

    .line 1827
    :cond_9
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->hide()V

    .line 1828
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1796
    :pswitch_3
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p1, :cond_b

    if-nez p3, :cond_a

    .line 1798
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0f017d

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 1800
    :cond_a
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->show()V

    .line 1801
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    invoke-virtual {p1, p3, p2}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->showSavingDialog(Ljava/lang/String;I)V

    .line 1803
    :cond_b
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->hide()V

    .line 1804
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->hide()V

    .line 1805
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->hide()V

    goto/16 :goto_1

    .line 1765
    :pswitch_4
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->hide()V

    .line 1766
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->hide()V

    .line 1767
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->onBackPressed()Z

    .line 1768
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p1, :cond_c

    .line 1769
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->hide()V

    .line 1771
    :cond_c
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    if-eqz p1, :cond_d

    .line 1772
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->hide()V

    .line 1774
    :cond_d
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz p1, :cond_e

    .line 1775
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->hide()V

    .line 1777
    :cond_e
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mGoogleLensUIManager:Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;

    if-eqz p1, :cond_f

    .line 1778
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->hide()V

    .line 1780
    :cond_f
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->hide()V

    .line 1782
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mBottomBarRootView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1783
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    if-eqz p1, :cond_10

    .line 1784
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1785
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->hideModeRegion()V

    .line 1788
    :cond_10
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1789
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1790
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterAnimatorFlag:Z

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mHideShutter:Z

    .line 1791
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterAnimatorFlag:Z

    .line 1792
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->transitionToProcessing()V

    .line 1793
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->hide()V

    goto/16 :goto_1

    .line 1721
    :pswitch_5
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->show()V

    .line 1722
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->show()V

    .line 1723
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p1, :cond_11

    .line 1724
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->show()V

    .line 1726
    :cond_11
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    const/4 p2, 0x1

    if-eqz p1, :cond_12

    .line 1727
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->show()V

    .line 1728
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->updateArrowEnableState(Z)V

    .line 1729
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->updatePanelItemClickable(Z)V

    .line 1731
    :cond_12
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz p1, :cond_13

    .line 1732
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->show()V

    .line 1734
    :cond_13
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->show()V

    .line 1735
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mGoogleLensUIManager:Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;

    if-eqz p1, :cond_14

    .line 1736
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->show()V

    .line 1738
    :cond_14
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->show()V

    .line 1740
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->show()V

    .line 1741
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->transitionToIdle()V

    .line 1742
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mHideShutter:Z

    if-nez p1, :cond_15

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mHideShutterFromSelfTimer:Z

    if-eqz p1, :cond_16

    .line 1743
    :cond_15
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1744
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1745
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterAnimatorFlag:Z

    .line 1746
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mHideShutter:Z

    .line 1747
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mHideShutterFromSelfTimer:Z

    .line 1749
    :cond_16
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    if-eqz p1, :cond_19

    .line 1750
    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterAnimatorFlag:Z

    if-eqz p2, :cond_17

    .line 1751
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->hideModeRegion()V

    goto :goto_0

    .line 1752
    :cond_17
    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mIsModePickerSink:Z

    if-eqz p2, :cond_18

    .line 1753
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->showModeRegionOnSinked()V

    goto :goto_0

    .line 1755
    :cond_18
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->showModeRegion()V

    .line 1758
    :cond_19
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p1, :cond_1a

    .line 1759
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->show()V

    .line 1760
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->hideSavingDialog()V

    .line 1762
    :cond_1a
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->show()V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private enterARCoreMode()V
    .locals 5

    const-string v0, "com.transsion.camera.app.ArCoreMainActivity"

    .line 2028
    invoke-static {v0}, Lcom/transsion/camera/utils/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2029
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mIsAlreadyGotoAR:Z

    if-eqz v1, :cond_0

    goto :goto_1

    .line 2032
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mArActivityCoverLayout:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2033
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mArActivityCoverLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080311

    .line 2034
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2035
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    .line 2036
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2037
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2038
    iget-object v2, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mArActivityCoverLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2039
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2043
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "off"

    if-eqz v0, :cond_1

    const-string v2, "key_shutter_sound"

    .line 2044
    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2045
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v3, "key_fingerprint_capture"

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2046
    iget-object v3, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v4, "key_location"

    invoke-interface {v3, v4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v0, v2

    move-object v3, v0

    :goto_0
    const-string v4, "enableShutterSound"

    .line 2048
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "enablePrintFinger"

    .line 2049
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "enableLocation"

    .line 2050
    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 2052
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mIsAlreadyGotoAR:Z

    .line 2053
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mGotoActivityListener:Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;

    const/16 v0, 0x1000

    invoke-interface {p0, v1, v0}, Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;->onGotoActivity(Landroid/content/Intent;I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private enterSettingFragment()V
    .locals 6

    .line 1243
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v1, 0x11

    .line 1244
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/CameraAppUI;->notifyRawActionToAppUI(I)V

    .line 1245
    iget-object v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->dismissPopupWithoutAnimation()Z

    const v1, 0x7f030016

    .line 1246
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const v2, 0x7f08045e

    const/4 v3, 0x0

    .line 1247
    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1248
    iget-object v4, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    if-eqz v4, :cond_1

    .line 1249
    invoke-virtual {v4}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getPreferenceSettingUIEntries()[Ljava/lang/String;

    move-result-object v4

    .line 1251
    iget-object v5, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/transsion/camera/utils/FeatureSupport;->isDeveloperMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    const v3, 0x7f03001e

    .line 1252
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 1255
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    .line 1256
    invoke-virtual {v0, v4, v3, v1, v2}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->createPreferenceItemUIList([Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Landroid/graphics/drawable/Drawable;)Ljava/util/List;

    move-result-object v0

    .line 1257
    iget-object v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mSettingFragmentManager:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mIsSecureCamera:Z

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mVoiceInteraction:Z

    iget-object v4, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/transsion/camera/app/PermissionActivity;

    .line 1258
    invoke-virtual {v4}, Lcom/transsion/camera/app/PermissionActivity;->checkCameraLocationPermissions()Z

    move-result v4

    .line 1257
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->setSettingUIList(Ljava/util/List;ZZZ)V

    .line 1260
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mSettingFragmentManager:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->enterSettingFragment()V

    return-void
.end method

.method private isGoogleLensSupport()Z
    .locals 1

    .line 2121
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mIsSecureCamera:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mVoiceInteraction:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isMainThread()Z
    .locals 1

    .line 2173
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

.method private isSupportSuperNightFilter()Z
    .locals 2

    .line 760
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030014

    .line 761
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 762
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    const-string v1, "com.transsion.camera.feature.supernightfilter.mode.SuperNightFilterModeEntry"

    .line 764
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 766
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static synthetic lambda$Gax-EDq3Nowqae6FAR-a6piX064(Lcom/transsion/camera/app/ui/CameraAppUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->delayLoadUIManager()V

    return-void
.end method

.method private synthetic lambda$init$0()V
    .locals 0

    .line 944
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->settingPicked()V

    return-void
.end method

.method public static synthetic lambda$vBMRUyqRRfT4DQZS1e-2f7-FGJw(Lcom/transsion/camera/app/ui/CameraAppUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->doLoadHintUIManager()V

    return-void
.end method

.method public static synthetic lambda$xTqTTjUHdyRx7Wyw7x7cQJkoRMw(Lcom/transsion/camera/app/ui/CameraAppUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->doLoadFilterUIManager()V

    return-void
.end method

.method private notifyCameraStateToUI(I)V
    .locals 3

    .line 1958
    sget-object v0, Lcom/transsion/camera/app/ui/CameraAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCameraStateToUI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/transsion/camera/app/common/CameraState;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1959
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    if-eqz v0, :cond_0

    .line 1960
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->notifyCameraStateToUI(I)V

    .line 1963
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz p0, :cond_1

    .line 1964
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->notifyCameraStateToUI(I)V

    :cond_1
    return-void
.end method

.method private onCameraOperateAction(I)V
    .locals 3

    .line 2177
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mSettingFragmentManager:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    if-eqz v0, :cond_0

    .line 2178
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->notifyCameraOperateActionToUI(I)V

    .line 2180
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModeOrderEditorManager:Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;

    if-eqz v0, :cond_1

    .line 2181
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->notifyCameraOperateActionToUI(I)V

    .line 2183
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mUIManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;

    if-eqz v1, :cond_2

    .line 2185
    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->notifyCameraOperateActionToUI(I)V

    goto :goto_0

    .line 2188
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->modeNotifyCameraOperateActionCallback:Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;

    if-eqz v0, :cond_4

    .line 2189
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;->notifyCameraOperateAction(I)V

    :cond_4
    const/16 v0, 0x8

    if-ne p1, v0, :cond_5

    .line 2192
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mSpecifyModePolicy:Lcom/transsion/camera/app/SpecifyModePolicy;

    invoke-virtual {v0}, Lcom/transsion/camera/app/SpecifyModePolicy;->doActionAfterPreviewStarted()V

    .line 2194
    :cond_5
    sget-object v0, Lcom/transsion/camera/app/ui/CameraAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraOperateAction action :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 v0, 0xd

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    .line 2196
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mIsCaptured:Z

    :cond_6
    const/16 v0, 0xb

    if-ne p1, v0, :cond_7

    .line 2199
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterAnimatorFlag:Z

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mHideShutterFromSelfTimer:Z

    const/4 p1, 0x0

    .line 2200
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterAnimatorFlag:Z

    :cond_7
    return-void
.end method

.method private onUIManagerReady()V
    .locals 3

    .line 2205
    sget-object v0, Lcom/transsion/camera/app/ui/CameraAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUIManagerReady mVideoIntent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mVideoIntent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mPhotoIntent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mPhotoIntent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mOpenOnly: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mOpenOnly:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2207
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mOpenOnly:Z

    if-nez v0, :cond_1

    .line 2208
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mVideoIntent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2209
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mVideoIntent:Z

    .line 2210
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/CameraAppUI;->onShutterClick(I)V

    goto :goto_0

    .line 2211
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mPhotoIntent:Z

    if-eqz v0, :cond_1

    .line 2212
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mPhotoIntent:Z

    .line 2213
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    iget p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mDelayTime:I

    .line 2214
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "key_start_self_timer"

    .line 2213
    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private resumeRootLayout()V
    .locals 2

    .line 1130
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 1133
    :cond_0
    instance-of v1, v0, Lcom/transsion/camera/app/ui/widget/RootLayout;

    if-nez v1, :cond_1

    return-void

    .line 1136
    :cond_1
    check-cast v0, Lcom/transsion/camera/app/ui/widget/RootLayout;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/RootLayout;->resume()V

    .line 1137
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mArActivityCoverLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    .line 1138
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1139
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mArActivityCoverLayout:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private setBottomShadeViewsHeight(I)V
    .locals 3

    .line 2224
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModePickerRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2225
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 2226
    iget-object v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModePickerRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2227
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mBottomBarRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2228
    iget-object v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07019d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 2229
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mBottomBarRootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private varargs updateNavigationBarHeight([Landroid/view/View;)V
    .locals 5

    .line 1371
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/ScreenUtils;->getNavigationBarHeight(Landroid/content/Context;Z)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mNavigationBarHeight:I

    .line 1374
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 1375
    iget v4, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mNavigationBarHeight:I

    invoke-virtual {v3, v1, v1, v1, v4}, Landroid/view/View;->setPadding(IIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public changeUIWhenSwitchModeAfter()V
    .locals 0

    return-void
.end method

.method public changeUIWhenSwitchModeBefore()V
    .locals 1

    const/4 v0, 0x1

    .line 1231
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mUISinkModeChange:Z

    .line 1233
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz p0, :cond_0

    .line 1234
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->unInit()V

    :cond_0
    return-void
.end method

.method public currentThreadIsMain()Z
    .locals 0

    .line 340
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->isMainThread()Z

    move-result p0

    return p0
.end method

.method public doOnBGImageSaved(Landroid/net/Uri;[B)V
    .locals 2

    .line 1166
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mIsSecureCamera:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mIsCaptured:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1169
    :cond_0
    invoke-static {p2}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromExif([B)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    const/16 v0, 0x200

    const/4 v1, 0x0

    .line 1171
    invoke-static {p2, v0, v1}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromJpeg([BIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    .line 1174
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/CameraAppUI;->updateThumbnail(Landroid/graphics/Bitmap;)V

    .line 1176
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz p0, :cond_3

    .line 1177
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->updateThumbnailUri(Landroid/net/Uri;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public doUpdateCurrentModeUI()V
    .locals 0

    .line 2450
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    if-eqz p0, :cond_0

    .line 2451
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->flashModeListCurrentCamera()V

    :cond_0
    return-void
.end method

.method public endHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 0

    .line 723
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p0, :cond_0

    .line 724
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->endHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_0
    return-void
.end method

.method public enterModeEditorFragment()V
    .locals 1

    const/16 v0, 0x55

    .line 2445
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/CameraAppUI;->notifyRawActionToAppUI(I)V

    .line 2446
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->dismissPopupWithoutAnimation()Z

    return-void
.end method

.method public exitEditorFragment()V
    .locals 0

    .line 1276
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModeOrderEditorManager:Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;

    if-eqz p0, :cond_0

    .line 1277
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->exitEditorFragment()V

    :cond_0
    return-void
.end method

.method public exitGuideFragment()V
    .locals 0

    .line 1270
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    if-eqz p0, :cond_0

    .line 1271
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->exitGuideFragment()V

    :cond_0
    return-void
.end method

.method public exitSettingFragment()V
    .locals 1

    .line 1264
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mSettingFragmentManager:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 1265
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->exitSettingFragment(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getAboveMainCtrlInflateRoot()Landroid/view/ViewGroup;
    .locals 0

    .line 1288
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModeAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getActionSound()Lcom/transsion/camera/utils/sound/IActionSound;
    .locals 0

    .line 1367
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    return-object p0
.end method

.method public getBottomBarHeight()I
    .locals 0

    .line 1334
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mBottomBarRootView:Landroid/view/View;

    if-eqz p0, :cond_0

    .line 1335
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getCameraSwitchFlag()Z
    .locals 0

    .line 2233
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mCameraSwitchFlag:Z

    return p0
.end method

.method public getCurrentActionState()I
    .locals 0

    .line 287
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mCameraOperateAction:Lcom/transsion/camera/app/common/mode/CameraOperateAction;

    if-eqz p0, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->getCurrentActionState()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;
    .locals 0

    .line 737
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p0, :cond_0

    .line 738
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentUIState()I
    .locals 0

    .line 673
    iget p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mCurrentAppUIState:I

    return p0
.end method

.method public getCutoutHeight()I
    .locals 0

    .line 1303
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mMainScreenPosition:Lcom/transsion/camera/app/ui/MainScreenOriginPosition;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->getCutoutHeight()I

    move-result p0

    return p0
.end method

.method public getModeInflateRoot()Landroid/view/ViewGroup;
    .locals 0

    .line 1283
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModeInflateRoot:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getModePickRootHeight()I
    .locals 0

    .line 1343
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mMainScreenPosition:Lcom/transsion/camera/app/ui/MainScreenOriginPosition;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->getBottomHeight()I

    move-result p0

    return p0
.end method

.method public getModePickerTabHeight()I
    .locals 1

    .line 1323
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1324
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mRootView:Landroid/view/ViewGroup;

    const v0, 0x7f090163

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1326
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getNavigationBarHeight()I
    .locals 0

    .line 1298
    iget p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mNavigationBarHeight:I

    return p0
.end method

.method public getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;
    .locals 0

    .line 310
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    return-object p0
.end method

.method public getPreviewSurfaceType()I
    .locals 0

    .line 360
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->getPreviewSurfaceType()I

    move-result p0

    return p0
.end method

.method public getScreenState()I
    .locals 1

    .line 2135
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mRootView:Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;

    if-eqz v0, :cond_0

    .line 2136
    check-cast p0, Lcom/transsion/camera/app/ui/widget/RootLayout;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/RootLayout;->getScreenState()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getShutterTypeSelftimerOff()I
    .locals 0

    .line 637
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->getShutterTypeSelftimerOff()I

    move-result p0

    return p0
.end method

.method public getShutterTypeSelftimerOn()I
    .locals 0

    .line 647
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->getShutterTypeSelftimerOn()I

    move-result p0

    return p0
.end method

.method public getTopBarHeight()I
    .locals 0

    .line 1308
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->getToolbarHeight()I

    move-result p0

    return p0
.end method

.method public getTopOffset()I
    .locals 0

    .line 1318
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mMainScreenPosition:Lcom/transsion/camera/app/ui/MainScreenOriginPosition;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->getTopBarHeight()I

    move-result p0

    return p0
.end method

.method public getTopRegionHeight()I
    .locals 0

    .line 1313
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mMainScreenPosition:Lcom/transsion/camera/app/ui/MainScreenOriginPosition;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->getTopRegionHeight()I

    move-result p0

    return p0
.end method

.method public getVolumeIntercept()Z
    .locals 0

    .line 1890
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mIntercept:Z

    return p0
.end method

.method public gotoGallery()V
    .locals 0

    .line 1160
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz p0, :cond_0

    .line 1161
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->performClick()V

    :cond_0
    return-void
.end method

.method public hideCustomPreviewCover()V
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/CameraAppUI$UIHandler;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 322
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/CameraAppUI$UIHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 0

    .line 716
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p0, :cond_0

    .line 717
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_0
    return-void
.end method

.method public hidePopupOption()V
    .locals 0

    .line 2433
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz p0, :cond_0

    .line 2434
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->dismissPopup()Z

    :cond_0
    return-void
.end method

.method public hideWideCamera()V
    .locals 0

    .line 2398
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p0, :cond_0

    .line 2399
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->hideWideCamera()V

    :cond_0
    return-void
.end method

.method public init(ZLcom/transsion/camera/app/intent/IntentParser;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Landroid/app/FragmentManager;Landroid/content/ContentResolver;Lcom/transsion/camera/utils/sound/IActionSound;)V
    .locals 16

    move-object/from16 v10, p0

    move-object/from16 v11, p5

    .line 841
    sget-object v0, Lcom/transsion/camera/app/ui/CameraAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/profiler/PerformanceTracker;->create(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;

    move-result-object v12

    invoke-interface {v12}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->start()Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;

    .line 842
    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;

    iget-object v1, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mRawActionCallback:Lcom/transsion/camera/app/common/mode/CameraOperateAction$RawActionHandleCallback;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;-><init>(Lcom/transsion/camera/app/common/mode/CameraOperateAction$RawActionHandleCallback;)V

    iput-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mCameraOperateAction:Lcom/transsion/camera/app/common/mode/CameraOperateAction;

    move-object/from16 v0, p3

    .line 843
    iput-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mRootView:Landroid/view/ViewGroup;

    move-object/from16 v1, p4

    .line 844
    iput-object v1, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 845
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mContext:Landroid/content/Context;

    .line 846
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mApertureType:I

    .line 847
    iget-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f090166

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mModeInflateRoot:Landroid/view/ViewGroup;

    .line 848
    iget-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f090156

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mModeAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

    .line 849
    iget-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f09000b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

    .line 850
    iget-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f090167

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mModeInflateScrollRoot:Landroid/view/ViewGroup;

    .line 851
    iget-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f090162

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mModePickerRootView:Landroid/view/ViewGroup;

    .line 852
    iget-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0901f6

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    .line 853
    iget-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f09006e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mBottomBarRootView:Landroid/view/View;

    .line 854
    iget-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f090112

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mHintRootLayout:Landroid/view/ViewGroup;

    .line 855
    iget-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f09004e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mArActivityCoverLayout:Landroid/widget/FrameLayout;

    .line 856
    iget-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->getInstance(Landroid/content/Context;)Lcom/transsion/camera/app/ui/MainScreenOriginPosition;

    move-result-object v0

    iput-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mMainScreenPosition:Lcom/transsion/camera/app/ui/MainScreenOriginPosition;

    .line 857
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->getBottomHeight()I

    move-result v0

    invoke-direct {v10, v0}, Lcom/transsion/camera/app/ui/CameraAppUI;->setBottomShadeViewsHeight(I)V

    .line 858
    new-instance v0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    iget-object v1, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mPreviewGestureManager:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    move-object/from16 v8, p7

    .line 859
    iput-object v8, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    .line 861
    invoke-interface {v12}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->mark()V

    .line 862
    iget-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f09019b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 863
    new-instance v1, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-direct {v1, v0, v10}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;-><init>(Landroid/view/View;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    iput-object v1, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    .line 866
    iget-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f09019c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 867
    iget-object v1, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    iget-object v2, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 868
    iget-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object v0

    iput-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    .line 870
    iget-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 871
    iget-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    invoke-static {v0, v9}, Lcom/transsion/camera/utils/ScreenUtils;->getNavigationBarHeight(Landroid/content/Context;Z)I

    move-result v0

    iput v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mNavigationBarHeight:I

    .line 875
    iget-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    iget-object v1, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mMainScreenPosition:Lcom/transsion/camera/app/ui/MainScreenOriginPosition;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->getTopBarHeight()I

    move-result v1

    iget-object v2, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mMainScreenPosition:Lcom/transsion/camera/app/ui/MainScreenOriginPosition;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->getBottomHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->setPreviewOffset(II)V

    .line 876
    new-instance v0, Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;-><init>()V

    iput-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    .line 877
    new-instance v1, Lcom/transsion/camera/app/ui/PreviewGestureScrollAdapter;

    invoke-direct {v1, v0}, Lcom/transsion/camera/app/ui/PreviewGestureScrollAdapter;-><init>(Lcom/transsion/camera/app/ui/IScroll;)V

    iput-object v1, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mPreviewGestureScrollAdapter:Lcom/transsion/camera/app/ui/PreviewGestureScrollAdapter;

    .line 878
    iget-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mBottomBarRootView:Landroid/view/View;

    instance-of v1, v0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;

    if-eqz v1, :cond_0

    .line 879
    check-cast v0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;

    iget-object v1, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->setScrollListener(Lcom/transsion/camera/app/ui/IScroll;)V

    .line 881
    :cond_0
    iget-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mModeInflateScrollRoot:Landroid/view/ViewGroup;

    instance-of v1, v0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;

    if-eqz v1, :cond_1

    .line 882
    check-cast v0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;

    iget-object v1, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->setScrollListener(Lcom/transsion/camera/app/ui/IScroll;)V

    .line 885
    :cond_1
    new-instance v0, Lcom/transsion/camera/app/ui/CameraAppUI$ShutterResponseListener;

    const/4 v1, 0x0

    invoke-direct {v0, v10, v1}, Lcom/transsion/camera/app/ui/CameraAppUI$ShutterResponseListener;-><init>(Lcom/transsion/camera/app/ui/CameraAppUI;Lcom/transsion/camera/app/ui/CameraAppUI$1;)V

    iput-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterResponseListener:Lcom/transsion/camera/app/ui/CameraAppUI$ShutterResponseListener;

    .line 886
    iget-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mPreviewGestureScrollAdapter:Lcom/transsion/camera/app/ui/PreviewGestureScrollAdapter;

    const/16 v1, 0x8

    invoke-virtual {v10, v0, v1}, Lcom/transsion/camera/app/ui/CameraAppUI;->registerPreviewGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;I)V

    .line 887
    iget-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 888
    iget-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 889
    new-instance v7, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;

    const v3, 0x7f090250

    iget-object v4, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mContext:Landroid/content/Context;

    iget-boolean v6, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mIsSecureCamera:Z

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;-><init>(Lcom/transsion/camera/app/common/IAppUI;Landroid/app/FragmentManager;ILandroid/content/Context;IZ)V

    iput-object v7, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mModeOrderEditorManager:Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;

    :cond_2
    if-nez p1, :cond_3

    .line 893
    new-instance v0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v10}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;-><init>(Landroid/content/ContentResolver;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    iput-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    .line 894
    new-instance v14, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    iget-object v1, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mContext:Landroid/content/Context;

    iget-object v2, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mMainScreenPosition:Lcom/transsion/camera/app/ui/MainScreenOriginPosition;

    iget-object v6, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    iget-object v7, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mModeOrderEditorManager:Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;

    move-object v0, v14

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/MainScreenOriginPosition;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;Lcom/transsion/camera/app/ui/ScrollConsumer;Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;)V

    iput-object v14, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    .line 895
    iget-boolean v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mIsSecureCamera:Z

    invoke-virtual {v14, v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setSecureCamera(Z)V

    .line 896
    iget-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    new-instance v1, Lcom/transsion/camera/app/ui/CameraAppUI$2;

    invoke-direct {v1, v10}, Lcom/transsion/camera/app/ui/CameraAppUI$2;-><init>(Lcom/transsion/camera/app/ui/CameraAppUI;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setScrollListener(Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;)V

    .line 934
    :cond_3
    new-instance v0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    invoke-direct {v0, v10}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;-><init>(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    iput-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    .line 935
    new-instance v0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-direct {v0, v10}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;-><init>(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    iput-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    if-nez p1, :cond_4

    .line 936
    iget-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 937
    new-instance v0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;-><init>()V

    iput-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mGoogleLensUIManager:Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;

    .line 938
    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->isGoogleLensSupport()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->setGoogleLensSupport(Z)V

    .line 940
    :cond_4
    iget-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    iget-object v1, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterResponseListener:Lcom/transsion/camera/app/ui/CameraAppUI$ShutterResponseListener;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->setShutterHook(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;)V

    .line 941
    new-instance v0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    iget-object v1, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mContext:Landroid/content/Context;

    const v14, 0x7f090250

    invoke-direct {v0, v14, v1, v11, v10}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;-><init>(ILandroid/content/Context;Landroid/app/FragmentManager;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    iput-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    .line 942
    new-instance v6, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    iget-object v1, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mContext:Landroid/content/Context;

    iget-object v2, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mMainScreenPosition:Lcom/transsion/camera/app/ui/MainScreenOriginPosition;

    iget-object v3, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    move-object v0, v6

    move-object/from16 v4, p0

    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/MainScreenOriginPosition;Lcom/transsion/camera/app/ui/ScrollConsumer;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    iput-object v6, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    .line 943
    new-instance v0, Lcom/transsion/camera/app/ui/-$$Lambda$CameraAppUI$CmeiYxgvLH_SaE-kWyaDstDh1kY;

    invoke-direct {v0, v10}, Lcom/transsion/camera/app/ui/-$$Lambda$CameraAppUI$CmeiYxgvLH_SaE-kWyaDstDh1kY;-><init>(Lcom/transsion/camera/app/ui/CameraAppUI;)V

    invoke-virtual {v6, v0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setItemSelectHook(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;)V

    .line 947
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackWideCamera()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    .line 948
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getFrontWideCamera()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    .line 949
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v9, 0x0

    :cond_6
    :goto_0
    if-eqz v9, :cond_7

    .line 951
    iget-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 952
    new-instance v6, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    iget-object v2, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mMainScreenPosition:Lcom/transsion/camera/app/ui/MainScreenOriginPosition;

    iget-object v4, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mContext:Landroid/content/Context;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;-><init>(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/ui/MainScreenOriginPosition;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Landroid/content/Context;I)V

    iput-object v6, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    .line 955
    :cond_7
    iget v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mApertureType:I

    if-eqz v0, :cond_8

    .line 956
    new-instance v0, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;

    iget-object v1, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/CameraAppUI$UIHandler;

    iget-object v2, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mContext:Landroid/content/Context;

    iget v3, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mApertureType:I

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;-><init>(Landroid/os/Handler;Landroid/content/Context;I)V

    iput-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mApertureUIManager:Lcom/transsion/camera/app/ui/manager/ApertureUIManager;

    .line 959
    :cond_8
    new-instance v15, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move-object/from16 v5, p7

    move-object/from16 v6, p0

    move-object/from16 v7, p0

    move-object/from16 v8, p0

    move-object/from16 v9, p0

    invoke-direct/range {v0 .. v9}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;-><init>(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;Lcom/transsion/camera/app/common/IAppUIControl$IApertureUIControl;Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;)V

    iput-object v15, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    .line 961
    iget-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mMainScreenPosition:Lcom/transsion/camera/app/ui/MainScreenOriginPosition;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->getTopBarHeight()I

    move-result v0

    invoke-virtual {v15, v0}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->setTopOffset(I)V

    .line 963
    new-instance v0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    iget-object v1, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mModeOrderEditorManager:Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;

    invoke-direct {v0, v11, v14, v1, v10}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;-><init>(Landroid/app/FragmentManager;ILcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;Lcom/transsion/camera/app/common/IAppUI;)V

    iput-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mSettingFragmentManager:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    const-string v0, "init all UI Manager"

    .line 964
    invoke-interface {v12, v0}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->mark(Ljava/lang/String;)V

    .line 965
    new-instance v0, Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    iget-object v1, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mContext:Landroid/content/Context;

    const v2, 0x7f030017

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;-><init>(Landroid/content/Context;I)V

    iput-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    .line 966
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->resetSettingUIEntries()V

    const-string v0, "init all UI Provider"

    .line 967
    invoke-interface {v12, v0}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->mark(Ljava/lang/String;)V

    .line 969
    new-instance v0, Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;

    invoke-direct {v0, v13}, Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mThermalThrottleUIManager:Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;

    .line 970
    iget-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0900e5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/ViewStub;

    .line 971
    iget-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mRootView:Landroid/view/ViewGroup;

    const v2, 0x7f090223

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/view/ViewStub;

    .line 972
    new-instance v7, Lcom/transsion/camera/app/ui/manager/FilterUIManager;

    iget-object v2, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mContext:Landroid/content/Context;

    move-object v0, v7

    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/ui/manager/FilterUIManager;-><init>(Landroid/view/ViewStub;Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    iput-object v7, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mFilterUIManager:Lcom/transsion/camera/app/ui/manager/FilterUIManager;

    .line 973
    new-instance v7, Lcom/transsion/camera/app/ui/manager/SuperNightFilterUIManager;

    iget-object v2, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mContext:Landroid/content/Context;

    move-object v0, v7

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/ui/manager/SuperNightFilterUIManager;-><init>(Landroid/view/ViewStub;Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    iput-object v7, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mSuperNightFilterUIManager:Lcom/transsion/camera/app/ui/manager/SuperNightFilterUIManager;

    .line 974
    iget-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mFilterUIManager:Lcom/transsion/camera/app/ui/manager/FilterUIManager;

    const/4 v1, 0x4

    invoke-virtual {v10, v0, v1}, Lcom/transsion/camera/app/ui/CameraAppUI;->registerPreviewGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;I)V

    .line 975
    iget-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mSuperNightFilterUIManager:Lcom/transsion/camera/app/ui/manager/SuperNightFilterUIManager;

    invoke-virtual {v10, v0, v1}, Lcom/transsion/camera/app/ui/CameraAppUI;->registerPreviewGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;I)V

    .line 976
    iget-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mUIManagers:Ljava/util/List;

    iget-object v1, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mFilterUIManager:Lcom/transsion/camera/app/ui/manager/FilterUIManager;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 977
    iget-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mUIManagers:Ljava/util/List;

    iget-object v1, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mSuperNightFilterUIManager:Lcom/transsion/camera/app/ui/manager/SuperNightFilterUIManager;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 979
    new-instance v6, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    iget-object v1, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mContext:Landroid/content/Context;

    move-object v0, v6

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    iput-object v6, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    .line 980
    iget-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mMainScreenPosition:Lcom/transsion/camera/app/ui/MainScreenOriginPosition;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->getTopBarHeight()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->setTopOffset(I)V

    .line 981
    iget-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    const/4 v1, 0x5

    invoke-virtual {v10, v0, v1}, Lcom/transsion/camera/app/ui/CameraAppUI;->registerPreviewGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;I)V

    .line 982
    iget-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mUIManagers:Ljava/util/List;

    iget-object v1, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 984
    iget-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mUIManagers:Ljava/util/List;

    iget-object v1, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 985
    iget-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mUIManagers:Ljava/util/List;

    iget-object v1, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 986
    iget-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mUIManagers:Ljava/util/List;

    iget-object v1, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 987
    iget-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mUIManagers:Ljava/util/List;

    iget-object v1, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 988
    iget-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mUIManagers:Ljava/util/List;

    iget-object v1, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 989
    iget-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mUIManagers:Ljava/util/List;

    iget-object v1, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 990
    iget-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz v0, :cond_9

    .line 991
    iget-object v1, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mUIManagers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 993
    :cond_9
    iget-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mUIManagers:Ljava/util/List;

    iget-object v1, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 994
    iget-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mUIManagers:Ljava/util/List;

    iget-object v1, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 995
    iget-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mGoogleLensUIManager:Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;

    if-eqz v0, :cond_a

    .line 996
    iget-object v1, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mUIManagers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 998
    :cond_a
    iget v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mApertureType:I

    if-eqz v0, :cond_b

    .line 999
    iget-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mUIManagers:Ljava/util/List;

    iget-object v1, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mApertureUIManager:Lcom/transsion/camera/app/ui/manager/ApertureUIManager;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1001
    :cond_b
    new-instance v0, Lcom/transsion/camera/app/SpecifyModePolicy;

    iget-object v1, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mContext:Landroid/content/Context;

    iget-object v2, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mRootView:Landroid/view/ViewGroup;

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/camera/app/SpecifyModePolicy;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/transsion/camera/app/intent/IntentParser;)V

    iput-object v0, v10, Lcom/transsion/camera/app/ui/CameraAppUI;->mSpecifyModePolicy:Lcom/transsion/camera/app/SpecifyModePolicy;

    .line 1002
    invoke-interface {v12}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->stop()V

    return-void
.end method

.method public isModeTabScrolling()Z
    .locals 0

    .line 518
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 521
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->isModeTabScrolling()Z

    move-result p0

    return p0
.end method

.method public isSecureCamera()Z
    .locals 0

    .line 2126
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mIsSecureCamera:Z

    return p0
.end method

.method public synthetic lambda$init$0$CameraAppUI()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->lambda$init$0()V

    return-void
.end method

.method public loadLatestThumbnail()V
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    if-nez v0, :cond_0

    .line 456
    sget-object p0, Lcom/transsion/camera/app/ui/CameraAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "loadLatestThumbnail mAppStorageManager is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 460
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz p0, :cond_1

    .line 461
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->getAllBucketIds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->loadLatestThumbnail(Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method public loadLatestThumbnail(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1148
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mIsSecureCamera:Z

    if-nez p0, :cond_0

    .line 1149
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->loadLatestThumbnail(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public loadThumbnailByUri(Ljava/util/ArrayList;Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .line 1154
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz p0, :cond_0

    .line 1155
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->loadThumbnailByUri(Ljava/util/ArrayList;Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public notifyRawActionToAppUI(I)V
    .locals 4

    .line 261
    sget-object v0, Lcom/transsion/camera/app/ui/CameraAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyRawActionToAppUI action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mIsPaused = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mIsPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/16 v1, 0x9

    if-ne p1, v1, :cond_0

    .line 262
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mIsPaused:Z

    if-eqz v2, :cond_0

    .line 263
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mFirstSteadyFrameFlag:Z

    .line 265
    :cond_0
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mIsPaused:Z

    if-eqz v2, :cond_1

    return-void

    :cond_1
    const/16 v2, 0x5d

    if-ne p1, v2, :cond_3

    .line 269
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mFrameOnceComed:Z

    if-nez v2, :cond_2

    .line 270
    iget-object v2, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/CameraAppUI$UIHandler;

    const/16 v3, 0x6a

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 271
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mFrameOnceComed:Z

    goto :goto_0

    .line 273
    :cond_2
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->onUIManagerReady()V

    .line 276
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mCameraOperateAction:Lcom/transsion/camera/app/common/mode/CameraOperateAction;

    if-eqz v0, :cond_4

    .line 277
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->rawActionHandle(I)V

    :cond_4
    const/16 v0, 0x1f

    if-ne p1, v0, :cond_5

    .line 279
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mFirstSteadyFrameFlag:Z

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    .line 280
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mFirstSteadyFrameFlag:Z

    .line 281
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/CameraAppUI;->notifyRawActionToAppUI(I)V

    :cond_5
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 1348
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mFilterUIManager:Lcom/transsion/camera/app/ui/manager/FilterUIManager;

    .line 1349
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/FilterUIManager;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mSuperNightFilterUIManager:Lcom/transsion/camera/app/ui/manager/SuperNightFilterUIManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/SuperNightFilterUIManager;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    .line 1350
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->onBackPressed()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onBatteryStatusChanged(ZII)V
    .locals 1

    .line 1881
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mUIManagers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;

    if-eqz v0, :cond_0

    .line 1883
    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->onBatteryStatusChanged(ZII)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onContinuousShotProgress(II)V
    .locals 0

    .line 2357
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mContinuousShotUIManager:Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;

    if-nez p0, :cond_0

    .line 2358
    sget-object p0, Lcom/transsion/camera/app/ui/CameraAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mContinuousShotUIManager is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2362
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;->onContinuousShotProgress(II)V

    return-void
.end method

.method public onContinuousShotStop()V
    .locals 1

    .line 2367
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mContinuousShotUIManager:Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;

    if-nez p0, :cond_0

    .line 2368
    sget-object p0, Lcom/transsion/camera/app/ui/CameraAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mContinuousShotUIManager is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2372
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;->onContinuousShotStop()V

    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 0

    .line 1144
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->onEnterAnimationComplete()V

    return-void
.end method

.method public onModePaused()V
    .locals 0

    .line 471
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p0, :cond_0

    .line 472
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->pause()V

    :cond_0
    return-void
.end method

.method public onModeSettingReady()V
    .locals 3

    .line 478
    sget-object v0, Lcom/transsion/camera/app/ui/CameraAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onModeSettingReady, mIsUIManagerSetuped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mIsUIManagerSetuped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 479
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mIsUIManagerSetuped:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 480
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mIsUIManagerSetuped:Z

    .line 481
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/CameraAppUI$UIHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 482
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/CameraAppUI$UIHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/CameraAppUI$UIHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 485
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/CameraAppUI$UIHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 486
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/CameraAppUI$UIHandler;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 487
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/CameraAppUI$UIHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 1

    .line 1869
    iput p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mOrientation:I

    .line 1870
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mIsUIManagerSetuped:Z

    if-eqz v0, :cond_1

    .line 1871
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mUIManagers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;

    if-eqz v0, :cond_0

    .line 1873
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->onOrientationChanged(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onPreviewClick()Z
    .locals 1

    .line 1355
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mFilterUIManager:Lcom/transsion/camera/app/ui/manager/FilterUIManager;

    .line 1356
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/FilterUIManager;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mSuperNightFilterUIManager:Lcom/transsion/camera/app/ui/manager/SuperNightFilterUIManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/SuperNightFilterUIManager;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    .line 1357
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->onBackPressed()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onShutterClick(I)V
    .locals 2

    .line 785
    iget v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mCurrentAppUIState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    .line 789
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->triggerShutterClick(I)V

    return-void
.end method

.method public onShutterLongClickEnd()V
    .locals 0

    .line 799
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->triggerShutterUp()V

    return-void
.end method

.method public onShutterLongClickStart(I)V
    .locals 0

    .line 794
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->triggerShutterLongClick(I)V

    return-void
.end method

.method public onThermalThrottleChanged(I)V
    .locals 0

    .line 1864
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mThermalThrottleUIManager:Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;->onThermalThrottleReached(I)V

    return-void
.end method

.method public onZoomClick(Z)V
    .locals 2

    .line 804
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mZoomKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mCurrentAppUIState:I

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    .line 808
    :cond_0
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;->onZoomClick(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onZoomScaleEnd(Z)V
    .locals 2

    .line 832
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mZoomKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mCurrentAppUIState:I

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    .line 835
    :cond_0
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;->onZoomScaleEnd(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onZoomScaleStart(Z)V
    .locals 2

    .line 813
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mZoomKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mCurrentAppUIState:I

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    .line 817
    :cond_0
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;->onZoomScaleStart(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onZoomScaling(Z)V
    .locals 3

    .line 822
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mZoomKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mCurrentAppUIState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 827
    :cond_0
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;->onZoomScaling(Z)V

    return-void

    .line 823
    :cond_1
    :goto_0
    sget-object v0, Lcom/transsion/camera/app/ui/CameraAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onZoomScaling] isIncrease:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mZoomKeyEventCallback:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mZoomKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " mCurrentAppUIState:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mCurrentAppUIState:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public pause()V
    .locals 3

    const/16 v0, 0x1b

    .line 1061
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/CameraAppUI;->notifyRawActionToAppUI(I)V

    .line 1062
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 1063
    :try_start_0
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mIsPaused:Z

    .line 1064
    iget-object v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/CameraAppUI$UIHandler;

    const/16 v2, 0x69

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1065
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1066
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz v0, :cond_0

    .line 1067
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->pause()V

    .line 1069
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz v0, :cond_1

    .line 1070
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->pause()V

    .line 1072
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    if-eqz v0, :cond_2

    .line 1073
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->pause()V

    .line 1075
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz v0, :cond_3

    .line 1076
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->pause()V

    .line 1078
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mApertureUIManager:Lcom/transsion/camera/app/ui/manager/ApertureUIManager;

    if-eqz v0, :cond_4

    .line 1079
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->pause()V

    .line 1081
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    if-eqz v0, :cond_5

    .line 1082
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->pause()V

    .line 1084
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mPreviewGestureScrollAdapter:Lcom/transsion/camera/app/ui/PreviewGestureScrollAdapter;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/PreviewGestureScrollAdapter;->onPause()V

    .line 1085
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->onBackPressed()Z

    .line 1086
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->dismissPopup()Z

    .line 1087
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mThermalThrottleUIManager:Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;->pause()V

    const/4 v0, 0x0

    .line 1088
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/transsion/camera/app/ui/CameraAppUI;->setStartParameters(ZZZI)V

    return-void

    :catchall_0
    move-exception p0

    .line 1065
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public pausePreviewUI()V
    .locals 0

    .line 1095
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->pause()V

    return-void
.end method

.method public registerPreviewGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;I)V
    .locals 0

    .line 383
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mPreviewGestureManager:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->registerGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;I)V

    return-void
.end method

.method public registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V
    .locals 0

    .line 393
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    return-void
.end method

.method public registerShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;I)V
    .locals 0

    .line 561
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->registerOnShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;I)V

    return-void
.end method

.method public restoreCurrentMode()V
    .locals 0

    .line 2457
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->restoreCurrentMode()V

    return-void
.end method

.method public resume()V
    .locals 2

    const/4 v0, 0x0

    .line 1106
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mIsPaused:Z

    .line 1107
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mIsAlreadyGotoAR:Z

    .line 1108
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->resumeRootLayout()V

    const/16 v1, 0x1f

    .line 1109
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/CameraAppUI;->notifyRawActionToAppUI(I)V

    .line 1110
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mIsCaptured:Z

    .line 1111
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->exitEditorFragment()V

    .line 1112
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->exitSettingFragment()V

    .line 1113
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->exitGuideFragment()V

    .line 1114
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->resume()V

    .line 1115
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz v0, :cond_0

    .line 1116
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->resume()V

    .line 1118
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz v0, :cond_1

    .line 1119
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->resume()V

    .line 1121
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    if-eqz v0, :cond_2

    .line 1122
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->resume()V

    .line 1124
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mApertureUIManager:Lcom/transsion/camera/app/ui/manager/ApertureUIManager;

    if-eqz p0, :cond_3

    .line 1125
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->resume()V

    :cond_3
    return-void
.end method

.method public setAuxPreviewLensSupport(ZZ)V
    .locals 0

    .line 305
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->setAuxPreviewLensSupport(ZZ)V

    return-void
.end method

.method public setAuxPreviewModeSupport(Z)V
    .locals 0

    .line 2479
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    if-eqz p0, :cond_0

    .line 2480
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->setAuxPreviewModeSupport(Z)V

    :cond_0
    return-void
.end method

.method public setAuxPreviewSize(II)V
    .locals 0

    .line 300
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->setAuxPreviewSize(II)V

    return-void
.end method

.method public setCameraSwitchListener(Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;)V
    .locals 0

    .line 571
    iput-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mCameraSwitchListener:Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;

    return-void
.end method

.method public setFilterProcessor(Lcom/transsion/camera/app/common/mode/IFilterProcessor;)V
    .locals 0

    .line 350
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mFilterUIManager:Lcom/transsion/camera/app/ui/manager/FilterUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/FilterUIManager;->setFilterProcessor(Lcom/transsion/camera/app/common/mode/IFilterProcessor;)V

    return-void
.end method

.method public setGotoActivityListener(Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mGotoActivityListener:Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;

    return-void
.end method

.method public setIsSecureCamera(Z)V
    .locals 0

    .line 2106
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mIsSecureCamera:Z

    .line 2107
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mGoogleLensUIManager:Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;

    if-eqz p1, :cond_0

    .line 2108
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->isGoogleLensSupport()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->setGoogleLensSupport(Z)V

    :cond_0
    return-void
.end method

.method public setModeChangedListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModeChangeListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    return-void
.end method

.method public setModeList(Ljava/util/List;Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;",
            "Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;",
            ")V"
        }
    .end annotation

    .line 365
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    if-eqz v0, :cond_1

    .line 366
    iget-object v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModeOrderEditorManager:Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;

    if-eqz v1, :cond_0

    .line 367
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->isSecureCamera()Z

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setModeList(Ljava/util/List;Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;Z)V

    .line 368
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModeOrderEditorManager:Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->setModeList(Ljava/util/List;Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;)V

    goto :goto_0

    .line 370
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setModeList(Ljava/util/List;Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setModeNotifyCameraOperateActionCallBack(Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;)V
    .locals 0

    .line 2220
    iput-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->modeNotifyCameraOperateActionCallback:Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;

    return-void
.end method

.method public setModeUIControl(Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;)V
    .locals 0

    .line 2169
    iput-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModeUIControl:Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;

    return-void
.end method

.method public setPreviewSize(II)V
    .locals 0

    .line 295
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->setPreviewSize(II)V

    return-void
.end method

.method public setSettingManager(Lcom/transsion/camera/app/common/setting/ISettingManager;)V
    .locals 2

    .line 1182
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager;->getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 1183
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager;->getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    .line 1184
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager;->getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object p1

    .line 1185
    iget-object v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setSettingProvide(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;)V

    .line 1186
    iget-object v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 1187
    iget-object v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    if-eqz v1, :cond_0

    .line 1188
    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->setSettingProvide(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;)V

    .line 1190
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz v1, :cond_1

    .line 1191
    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->setSettingProvide(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;)V

    .line 1192
    iget-object v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 1194
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mSettingFragmentManager:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->setSettingProvide(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;)V

    .line 1195
    iget-object v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mSettingFragmentManager:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 1196
    iget-object v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->setSettingProvide(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;)V

    .line 1197
    iget-object v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 1198
    iget-object v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mFilterUIManager:Lcom/transsion/camera/app/ui/manager/FilterUIManager;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/manager/FilterUIManager;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 1199
    iget-object v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mSuperNightFilterUIManager:Lcom/transsion/camera/app/ui/manager/SuperNightFilterUIManager;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/manager/SuperNightFilterUIManager;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 1200
    iget-object v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->setSettingProvider(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;)V

    .line 1201
    iget-object v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 1202
    iget-object v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mGoogleLensUIManager:Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;

    if-eqz v1, :cond_2

    .line 1203
    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->setSettingProvide(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;)V

    .line 1204
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mGoogleLensUIManager:Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 1206
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    if-eqz p1, :cond_3

    .line 1207
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 1209
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 1210
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    if-eqz p1, :cond_4

    .line 1211
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    :cond_4
    const-string p1, "key_start_self_timer"

    .line 1213
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    return-void
.end method

.method public setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .locals 1

    .line 1222
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    if-eqz v0, :cond_0

    .line 1223
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    .line 1225
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz p0, :cond_1

    .line 1226
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    :cond_1
    return-void
.end method

.method public setShutterTypeSelftimerOff(I)V
    .locals 0

    .line 632
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->setShutterTypeSelftimerOff(I)V

    return-void
.end method

.method public setShutterTypeSelftimerOn(I)V
    .locals 0

    .line 642
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->setShutterTypeSelftimerOn(I)V

    return-void
.end method

.method public setStartParameters(ZZZI)V
    .locals 0

    .line 1099
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mVideoIntent:Z

    .line 1100
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mPhotoIntent:Z

    .line 1101
    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mOpenOnly:Z

    .line 1102
    iput p4, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mDelayTime:I

    return-void
.end method

.method public setStorageSettingProvider(Lcom/transsion/camera/app/common/storage/AppStorageManager;)V
    .locals 0

    .line 1217
    iput-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    .line 1218
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mSettingFragmentManager:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->setStorageSettingProvider(Lcom/transsion/camera/app/common/storage/IStorage$IStorageSettingProvider;)V

    return-void
.end method

.method public setSurfaceStatusListener(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;)V
    .locals 0

    .line 355
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->setSurfaceStatusListener(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;)V

    return-void
.end method

.method public setSwitchBlurCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchBlurCameraListener;)V
    .locals 0

    .line 586
    iput-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mSwitchBlurCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchBlurCameraListener;

    return-void
.end method

.method public setSwitchDualCamBWCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualCamBWCameraListener;)V
    .locals 0

    .line 591
    iput-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mSwitchDualCamBWListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualCamBWCameraListener;

    return-void
.end method

.method public setSwitchSatCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchSatCameraListener;)V
    .locals 0

    .line 596
    iput-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mSwitchSatCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchSatCameraListener;

    return-void
.end method

.method public setSwitchTeleCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchLogicalCameraListener;)V
    .locals 0

    .line 581
    iput-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mSwitchTeleCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchLogicalCameraListener;

    return-void
.end method

.method public setSwitchWideCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;)V
    .locals 0

    .line 576
    iput-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mSwitchWideCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    return-void
.end method

.method public setThumbnailListener(Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;)V
    .locals 2

    .line 403
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz v0, :cond_0

    .line 404
    new-instance v1, Lcom/transsion/camera/app/ui/CameraAppUI$ThumbnailListenerWrap;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/app/ui/CameraAppUI$ThumbnailListenerWrap;-><init>(Lcom/transsion/camera/app/ui/CameraAppUI;Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->setThumbnailListener(Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;)V

    :cond_0
    return-void
.end method

.method public setVoiceInteraction(Z)V
    .locals 3

    .line 2113
    sget-object v0, Lcom/transsion/camera/app/ui/CameraAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "voiceInteraction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2114
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mVoiceInteraction:Z

    .line 2115
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mGoogleLensUIManager:Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;

    if-eqz p1, :cond_0

    .line 2116
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->isGoogleLensSupport()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->setGoogleLensSupport(Z)V

    :cond_0
    return-void
.end method

.method public setVolumeIntercept(Z)V
    .locals 0

    .line 2131
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mIntercept:Z

    return-void
.end method

.method public setZoomKeyEventCallback(Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;)V
    .locals 0

    .line 780
    iput-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mZoomKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;

    return-void
.end method

.method public showCSNotSupportHint(Lcom/transsion/camera/app/common/ui/HintInfo;Ljava/lang/String;Z)V
    .locals 2

    if-nez p2, :cond_0

    .line 697
    sget-object p0, Lcom/transsion/camera/app/ui/CameraAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "don\'t show hint when msg is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 700
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 701
    iget-object p2, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mContext:Landroid/content/Context;

    const p3, 0x7f0f00a6

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 704
    iget-object p3, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mContext:Landroid/content/Context;

    const v0, 0x7f0f01ba

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 706
    :cond_2
    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 709
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p0, :cond_3

    .line 710
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_3
    return-void
.end method

.method public showCustomPreviewCover(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/CameraAppUI$UIHandler;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 316
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/CameraAppUI$UIHandler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 0

    .line 678
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p0, :cond_0

    .line 679
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_0
    return-void
.end method

.method public showLowPowerHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 1

    .line 685
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz v0, :cond_0

    .line 686
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->showLowPowerHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 689
    iput-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mOnceLowPowerHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    :cond_1
    :goto_0
    return-void
.end method

.method public showOrHideShutterPanel(ZZIZ)V
    .locals 9

    .line 2279
    sget-object v0, Lcom/transsion/camera/app/ui/CameraAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldShow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", withAnim: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", translation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", needModepickerChange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2281
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterAnimatorFlag:Z

    .line 2282
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2283
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_4

    .line 2286
    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterAnimatorFlag:Z

    if-eqz p2, :cond_2

    .line 2287
    iget-object p2, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2288
    iget-object p2, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 2289
    iget-object p2, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2290
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    if-eqz p1, :cond_1

    if-eqz p4, :cond_1

    .line 2291
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->showModeRegion()V

    .line 2292
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setModeOpaque()V

    .line 2294
    :cond_1
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterAnimatorFlag:Z

    goto/16 :goto_2

    .line 2296
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2297
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    int-to-float p2, p3

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 2298
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2299
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    if-eqz p1, :cond_3

    if-eqz p4, :cond_3

    .line 2300
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->hideModeRegion()V

    .line 2301
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setModeUnOpaque()V

    .line 2303
    :cond_3
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterAnimatorFlag:Z

    goto/16 :goto_2

    .line 2306
    :cond_4
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterAnimatorSet:Landroid/animation/AnimatorSet;

    .line 2309
    new-instance p2, Landroid/animation/ObjectAnimator;

    invoke-direct {p2}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 2310
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterAnimatorFlag:Z

    const/16 v4, 0x12c

    const-string v5, "translationY"

    const-string v6, "alpha"

    const-wide/16 v7, 0x12c

    if-eqz v3, :cond_6

    .line 2311
    iget-object p3, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    invoke-virtual {p3, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2312
    iget-object p3, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    if-eqz p3, :cond_5

    .line 2313
    invoke-virtual {p3, v4}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->modePickerShowAlphaAnimator(I)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 2315
    :cond_5
    iget-object p3, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    new-array v3, v1, [F

    aput p1, v3, v2

    invoke-static {p3, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 2316
    iget-object p3, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    new-array v3, v1, [F

    aput v0, v3, v2

    invoke-static {p3, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    .line 2318
    invoke-virtual {p3, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p3

    .line 2319
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterAnimatorFlag:Z

    goto :goto_0

    .line 2321
    :cond_6
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getAlpha()F

    move-result p1

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_7

    .line 2322
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    if-eqz p1, :cond_7

    .line 2323
    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->modePickerHideAlphaAnimator(I)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 2326
    :cond_7
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    new-array v3, v1, [F

    aput v0, v3, v2

    invoke-static {p1, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 2327
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    new-array v3, v1, [F

    int-to-float p3, p3

    aput p3, v3, v2

    invoke-static {v0, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    .line 2329
    invoke-virtual {p3, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p3

    .line 2330
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterAnimatorFlag:Z

    .line 2332
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v0, 0x2

    if-eqz p4, :cond_8

    .line 2334
    iget-object p4, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object p1, v3, v2

    aput-object p3, v3, v1

    aput-object p2, v3, v0

    invoke-virtual {p4, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1

    .line 2336
    :cond_8
    iget-object p2, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterAnimatorSet:Landroid/animation/AnimatorSet;

    new-array p4, v0, [Landroid/animation/Animator;

    aput-object p1, p4, v2

    aput-object p3, p4, v1

    invoke-virtual {p2, p4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2338
    :goto_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 2340
    :goto_2
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterAnimatorFlag:Z

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mHideShutter:Z

    return-void
.end method

.method public showWideCamera()V
    .locals 0

    .line 2391
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p0, :cond_0

    .line 2392
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->showWideCamera()V

    :cond_0
    return-void
.end method

.method public sinkUI(ZIZ)V
    .locals 7

    .line 2239
    sget-object v0, Lcom/transsion/camera/app/ui/CameraAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sinkUI: mUISink = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mUISinkModeChange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mUISinkModeChange:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2241
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mIsModePickerSink:Z

    .line 2243
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mSinkAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2244
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mSinkAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    xor-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 2247
    iget-object v2, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07030e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v1

    .line 2248
    :goto_0
    iget-object v3, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a002a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move p2, v1

    .line 2250
    :goto_1
    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mUISinkModeChange:Z

    if-eqz v4, :cond_3

    if-nez p1, :cond_3

    move v3, v1

    :cond_3
    if-eqz p3, :cond_4

    goto :goto_2

    :cond_4
    move v3, v1

    :goto_2
    if-eqz p3, :cond_5

    const/16 p1, 0x12c

    goto :goto_3

    :cond_5
    move p1, v1

    .line 2254
    :goto_3
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p3, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mSinkAnimatorSet:Landroid/animation/AnimatorSet;

    .line 2255
    iget-object p3, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    const/4 v4, 0x1

    new-array v5, v4, [F

    int-to-float p2, p2

    aput p2, v5, v1

    const-string p2, "translationY"

    invoke-static {p3, p2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    int-to-long v5, p1

    invoke-virtual {p3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 2256
    iget-object p3, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModePickerLayout:Landroid/view/View;

    if-eqz p3, :cond_6

    new-array v5, v4, [F

    int-to-float v0, v0

    aput v0, v5, v1

    const-string v0, "alpha"

    .line 2257
    invoke-static {p3, v0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    int-to-long v5, v3

    invoke-virtual {p3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p3

    .line 2258
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModePickerLayout:Landroid/view/View;

    new-array v3, v4, [F

    int-to-float v2, v2

    aput v2, v3, v1

    invoke-static {v0, p2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 2259
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mSinkAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object p3, v2, v1

    aput-object p2, v2, v4

    const/4 p2, 0x2

    aput-object p1, v2, p2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_4

    .line 2261
    :cond_6
    iget-object p2, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mSinkAnimatorSet:Landroid/animation/AnimatorSet;

    new-array p3, v4, [Landroid/animation/Animator;

    aput-object p1, p3, v1

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2263
    :goto_4
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mSinkAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2264
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mSinkAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 2265
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mUISinkModeChange:Z

    return-void
.end method

.method public start()V
    .locals 0

    .line 1055
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mGoogleLensUIManager:Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;

    if-eqz p0, :cond_0

    .line 1056
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->start()V

    :cond_0
    return-void
.end method

.method public startSelfTimerAnim(Lcom/transsion/camera/app/common/IAppUIControl$IApertureUIControl$AnimationType;)V
    .locals 1

    .line 2155
    iget v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mApertureType:I

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mApertureUIManager:Lcom/transsion/camera/app/ui/manager/ApertureUIManager;

    if-eqz p0, :cond_0

    .line 2156
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->startSelfTimerAnim(Lcom/transsion/camera/app/common/IAppUIControl$IApertureUIControl$AnimationType;)V

    :cond_0
    return-void
.end method

.method public stopSelfTimerAnim()V
    .locals 1

    .line 2162
    iget v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mApertureType:I

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mApertureUIManager:Lcom/transsion/camera/app/ui/manager/ApertureUIManager;

    if-eqz p0, :cond_0

    .line 2163
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->stopSelfTimerAnim()V

    :cond_0
    return-void
.end method

.method public switchSatCamera(Ljava/lang/String;)V
    .locals 0

    .line 2470
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mSwitchSatCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchSatCameraListener;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$ISwitchSatCameraListener;->onSwitchSatCameraListener(Ljava/lang/String;)V

    return-void
.end method

.method public switchSatCamera(Ljava/lang/String;Z)V
    .locals 0

    .line 2475
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mSwitchSatCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchSatCameraListener;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$ISwitchSatCameraListener;->onSwitchSatCameraListener(Ljava/lang/String;Z)V

    return-void
.end method

.method public transitionShutterToRegular()V
    .locals 0

    .line 657
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->transitionToRegular()V

    return-void
.end method

.method public transitionShutterToSmall()V
    .locals 0

    .line 652
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->transitionToSmall()V

    return-void
.end method

.method public triggerShutterClick(I)V
    .locals 0

    .line 775
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->triggerShutterClick(I)V

    return-void
.end method

.method public unInit()V
    .locals 3

    .line 1006
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->setShutterHook(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;)V

    .line 1007
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/CameraAppUI$UIHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1008
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setItemSelectHook(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;)V

    .line 1009
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setSettingFragmentListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentListener;)V

    .line 1010
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setSwitchWideCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;)V

    .line 1011
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setSwitchBlurCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchBlurCameraListener;)V

    .line 1012
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setSwitchDualCamBWCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualCamBWCameraListener;)V

    .line 1013
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz v0, :cond_0

    .line 1014
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->setSwitchWideCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;)V

    .line 1016
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    if-eqz v0, :cond_1

    .line 1017
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setModePickerListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V

    .line 1018
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/CameraAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 1020
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->setCameraSwitchListener(Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;)V

    .line 1021
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz v0, :cond_2

    .line 1022
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->setThumbnailListener(Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;)V

    .line 1024
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1025
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/CameraAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 1026
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mPreviewGestureManager:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->unregisterGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;)V

    .line 1027
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    if-eqz v0, :cond_3

    .line 1028
    iget-object v2, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mPreviewGestureManager:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->unregisterGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;)V

    .line 1030
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz v0, :cond_4

    .line 1031
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->setSwitchWideCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;)V

    .line 1032
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/CameraAppUI;->unregisterPreviewGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;)V

    .line 1034
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mSettingFragmentManager:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V

    .line 1035
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mSettingFragmentManager:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->unInit()V

    .line 1036
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mUIManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;

    if-eqz v2, :cond_5

    .line 1038
    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->unInit()V

    goto :goto_0

    .line 1041
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mThermalThrottleUIManager:Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;->unInit()V

    .line 1042
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mUIManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1043
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mFilterUIManager:Lcom/transsion/camera/app/ui/manager/FilterUIManager;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/CameraAppUI;->unregisterPreviewGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;)V

    .line 1044
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mPreviewGestureScrollAdapter:Lcom/transsion/camera/app/ui/PreviewGestureScrollAdapter;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/CameraAppUI;->unregisterPreviewGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;)V

    .line 1045
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mSuperNightFilterUIManager:Lcom/transsion/camera/app/ui/manager/SuperNightFilterUIManager;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/CameraAppUI;->unregisterPreviewGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;)V

    .line 1046
    iput-object v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    .line 1047
    iput-object v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mContinuousShotUIManager:Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;

    const/4 v0, 0x0

    .line 1048
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mFrameOnceComed:Z

    .line 1049
    iput-object v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    .line 1050
    iput-object v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mApertureUIManager:Lcom/transsion/camera/app/ui/manager/ApertureUIManager;

    .line 1051
    iput-object v1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mSpecifyModePolicy:Lcom/transsion/camera/app/SpecifyModePolicy;

    return-void
.end method

.method public unRegisterShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;)V
    .locals 0

    .line 566
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->unRegisterOnShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;)V

    return-void
.end method

.method public unregisterPreviewGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;)V
    .locals 0

    .line 388
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mPreviewGestureManager:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->unregisterGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;)V

    return-void
.end method

.method public unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V
    .locals 0

    .line 398
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    return-void
.end method

.method public updateApertureUI(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 2148
    iget v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mApertureType:I

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mApertureUIManager:Lcom/transsion/camera/app/ui/manager/ApertureUIManager;

    if-eqz p0, :cond_0

    .line 2149
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->updateApertureUI(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public updateCameraState(I)V
    .locals 3

    .line 601
    sget-object v0, Lcom/transsion/camera/app/ui/CameraAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateCameraState] state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/transsion/camera/app/common/CameraState;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 603
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/CameraAppUI$UIHandler;

    const/16 v0, 0x67

    invoke-virtual {p0, v0, p1, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public updateCurrentCamera(Ljava/lang/String;)V
    .locals 1

    .line 526
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModeOrderEditorManager:Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;

    if-eqz v0, :cond_0

    .line 527
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->updateCurrentCamera(Ljava/lang/String;)V

    .line 529
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    if-eqz p0, :cond_1

    .line 530
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->updateCurrentCamera(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public updateCurrentModes(Ljava/util/List;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2440
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->updateCurrentModes(Ljava/util/List;ILjava/lang/String;)V

    return-void
.end method

.method public updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V
    .locals 1

    .line 499
    iput-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    .line 500
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    if-eqz v0, :cond_0

    .line 501
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->updateCurrentMode(Ljava/lang/String;Z)V

    .line 505
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getTopBarSettingUIEntries()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 506
    array-length p1, p1

    if-nez p1, :cond_3

    .line 507
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz p1, :cond_2

    .line 508
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->hide()V

    .line 510
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    if-eqz p0, :cond_3

    .line 511
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->hide()V

    :cond_3
    return-void
.end method

.method public updateProcessingThumbUri(Landroid/net/Uri;)V
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz v0, :cond_0

    .line 445
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->updateProcessingThumbUri(Landroid/net/Uri;)V

    :cond_0
    const/16 p1, 0x57

    .line 447
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/CameraAppUI;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public updateShutterType(I)V
    .locals 2

    .line 608
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 609
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/CameraAppUI;->doUpdateShutterType(IZ)V

    goto :goto_0

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/CameraAppUI$UIHandler;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 612
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/CameraAppUI$UIHandler;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1, p1, p1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method public updateSpecifiedMode(Ljava/lang/String;)V
    .locals 3

    .line 745
    sget-object v0, Lcom/transsion/camera/app/ui/CameraAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSpecifiedMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "com.transsion.camera.feature.mode.supernight.SuperNightModeEntry"

    .line 747
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 748
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->isSupportSuperNightFilter()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "com.transsion.camera.feature.supernightfilter.mode.SuperNightFilterModeEntry"

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 754
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    .line 755
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->updateCurrentMode(Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public updateThumbnail(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 429
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 430
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->updateThumbnail(Landroid/graphics/Bitmap;Z)V

    :cond_0
    return-void
.end method

.method public updateThumbnailUri(Landroid/net/Uri;)V
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz v0, :cond_0

    .line 437
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->updateThumbnailUri(Landroid/net/Uri;)V

    :cond_0
    const/16 p1, 0x20

    .line 439
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/CameraAppUI;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public updateTopBarUI()V
    .locals 2

    .line 493
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/CameraAppUI$UIHandler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 494
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/CameraAppUI$UIHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public updateUIState(IILjava/lang/String;)V
    .locals 3

    .line 666
    sget-object v0, Lcom/transsion/camera/app/ui/CameraAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateUIState] state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/transsion/camera/app/common/AppUIState;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 667
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/CameraAppUI$UIHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 668
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/CameraAppUI$UIHandler;

    invoke-virtual {p0, v1, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public updateWideCameraAlpha(FZ)V
    .locals 0

    .line 2426
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p0, :cond_0

    .line 2427
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->updateWideCameraAlpha(FZ)V

    :cond_0
    return-void
.end method

.method public updateWideCameraUI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2377
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p0, :cond_0

    .line 2378
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->updateWideCameraUI(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateWideCameraUIByMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2384
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p0, :cond_0

    .line 2385
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->updateWideCameraUIByMode(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
