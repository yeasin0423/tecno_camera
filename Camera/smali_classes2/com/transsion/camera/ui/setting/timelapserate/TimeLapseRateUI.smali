.class public Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "TimeLapseRateUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$TabViewHolder;,
        Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$TabAdapter;,
        Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$TimeLapseWarningCallbackImpl;,
        Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$MyStatusChangeListener;,
        Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$UIHandler;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION_240:I = 0xf0

.field private static final MSG_SHOW_AUTO_SELECTED_INFO:I = 0x1

.field private static final MSG_SHOW_HOLD_STEADY_INFO:I = 0x2

.field private static final MSG_UPDATE_TEXT_COLOR:I = 0x3

.field private static final PATH_INTERPOLATOR_X:F = 0.25f

.field private static final PATH_INTERPOLATOR_Y1:F = 0.1f

.field private static final PATH_INTERPOLATOR_Y2:F = 1.0f

.field private static final SETTING_KEY:Ljava/lang/String; = "key_time_lapse"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final ZERO_OFFSET:I


# instance fields
.field private mBottomBarRoot:Landroid/view/View;

.field private mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private mCurrentEntryValue:Ljava/lang/String;

.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mEntryRootView:Landroid/view/ViewGroup;

.field private mEntryView:Landroid/widget/FrameLayout;

.field private final mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mIndicator:Landroid/widget/TextView;

.field private mInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

.field private mModeBarRoot:Landroid/view/View;

.field private final mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mResources:Landroid/content/res/Resources;

.field private mScrollBarShown:Z

.field private mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

.field private mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mSupportedEntries:[Ljava/lang/String;

.field private mSupportedEntryValues:[Ljava/lang/String;

.field private mTimeLapseTab:Landroidx/recyclerview/widget/RecyclerView;

.field private final mUIHandler:Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$UIHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 3

    .line 112
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 59
    new-instance v1, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$MyStatusChangeListener;

    invoke-direct {v1, v0}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$MyStatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$1;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const/4 v1, 0x0

    .line 67
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mScrollBarShown:Z

    .line 70
    new-instance v1, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 113
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mResources:Landroid/content/res/Resources;

    .line 114
    new-instance v1, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$UIHandler;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$1;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mUIHandler:Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$UIHandler;

    .line 115
    new-instance v0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateSettingUISpec;

    invoke-direct {v0, p1}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 116
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 v0, 0x3e800000    # 0.25f

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1, v0, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 43
    sget-object v0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;)Landroid/content/res/Resources;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mResources:Landroid/content/res/Resources;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->onValueChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->showAutoSelectedInfo()V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->showHoldSteadyInfo()V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->updateTextColor()V

    return-void
.end method

.method static synthetic access$700(Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mTimeLapseTab:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$802(Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mScrollBarShown:Z

    return p1
.end method

.method static synthetic access$900(Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;)Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mCurrentEntryValue:Ljava/lang/String;

    return-object p0
.end method

.method private fadeIn()V
    .locals 3

    .line 368
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mTimeLapseTab:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 369
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mTimeLapseTab:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 370
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$1;-><init>(Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;)V

    .line 371
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xf0

    .line 391
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private fadeOut()V
    .locals 3

    .line 395
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mTimeLapseTab:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f070343

    .line 396
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 397
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$2;-><init>(Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;)V

    .line 398
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xf0

    .line 419
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private hideScrollBar()V
    .locals 3

    .line 352
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v1, 0x50

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 353
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mScrollBarShown:Z

    if-nez v0, :cond_0

    return-void

    .line 354
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->fadeOut()V

    .line 355
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mBottomBarRoot:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 356
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xf0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    if-eqz v0, :cond_2

    .line 359
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->transitionShutterToRegular()V

    .line 361
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getModeRegionControl()Lcom/transsion/camera/app/common/IModeRegionControl;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 363
    invoke-interface {p0}, Lcom/transsion/camera/app/common/IModeRegionControl;->showModeRegion()V

    :cond_3
    return-void
.end method

.method private synthetic lambda$createEntryView$0(Landroid/view/View;)V
    .locals 1

    .line 171
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mTimeLapseTab:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_0

    return-void

    .line 174
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 175
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->showScrollBar()V

    goto :goto_0

    .line 177
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->hideScrollBar()V

    :goto_0
    return-void
.end method

.method private onValueChanged(Ljava/lang/String;)V
    .locals 2

    .line 423
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 424
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result p1

    .line 425
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_0

    .line 426
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mIndicator:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mSupportedEntries:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->hideScrollBar()V

    .line 430
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mTimeLapseTab:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mSupportedEntryValues:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 432
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mUIHandler:Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$UIHandler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 433
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mUIHandler:Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$UIHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 434
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mCurrentEntryValue:Ljava/lang/String;

    const-string v0, "0"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 435
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mUIHandler:Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$UIHandler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 437
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p1, :cond_2

    .line 438
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private showAutoSelectedInfo()V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0f0217

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_0

    .line 130
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_0
    return-void
.end method

.method private showHoldSteadyInfo()V
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0f0168

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_0

    .line 123
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_0
    return-void
.end method

.method private showScrollBar()V
    .locals 3

    .line 330
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v1, 0x50

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 331
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mScrollBarShown:Z

    if-eqz v0, :cond_0

    return-void

    .line 332
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->fadeIn()V

    .line 333
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getModeRegionControl()Lcom/transsion/camera/app/common/IModeRegionControl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 335
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IModeRegionControl;->hideModeRegion()V

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 339
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mIndicator:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mSupportedEntries:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mUIHandler:Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$UIHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 342
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mUIHandler:Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$UIHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 343
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    if-eqz v0, :cond_3

    .line 344
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->transitionShutterToSmall()V

    .line 346
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mBottomBarRoot:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 347
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xf0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_4
    return-void
.end method

.method private updateTextColor()V
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mTimeLapseTab:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 136
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mTimeLapseTab:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 137
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mTimeLapseTab:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, -0x1

    .line 138
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 139
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0601ac

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .locals 2

    .line 147
    sget-object v0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "createEntryView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const v0, 0x7f0c00f4

    const/4 v1, 0x0

    .line 148
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mEntryView:Landroid/widget/FrameLayout;

    .line 149
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 150
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mEntryRootView:Landroid/view/ViewGroup;

    .line 151
    iput-object p3, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

    .line 152
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getBottombarRoot()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mBottomBarRoot:Landroid/view/View;

    .line 153
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getModeBarRoot()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mModeBarRoot:Landroid/view/View;

    .line 154
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getImmutableFrameSize()Lcom/transsion/camera/app/common/IImmutableFrameSize;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IImmutableFrameSize;->getBottomRegionHeight()I

    move-result p1

    .line 155
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mEntryView:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 156
    iget-object p3, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f070340

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p2, v1, v1, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 157
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mEntryView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mEntryView:Landroid/widget/FrameLayout;

    const p2, 0x7f090246

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mIndicator:Landroid/widget/TextView;

    .line 159
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mEntryView:Landroid/widget/FrameLayout;

    const p2, 0x7f090248

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mTimeLapseTab:Landroidx/recyclerview/widget/RecyclerView;

    .line 160
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 161
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mEntryView:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 162
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 163
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mTimeLapseTab:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 164
    new-instance p1, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$TabAdapter;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mSupportedEntryValues:[Ljava/lang/String;

    iget-object p3, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mSupportedEntries:[Ljava/lang/String;

    invoke-direct {p1, p0, p2, p3}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$TabAdapter;-><init>(Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 165
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mTimeLapseTab:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 166
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 168
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mIndicator:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mSupportedEntries:[Ljava/lang/String;

    aget-object p1, p3, p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mIndicator:Landroid/widget/TextView;

    new-instance p2, Lcom/transsion/camera/ui/setting/timelapserate/-$$Lambda$TimeLapseRateUI$xExtItH-pwwMOvd7ERs8nlnT9ps;

    invoke-direct {p2, p0}, Lcom/transsion/camera/ui/setting/timelapserate/-$$Lambda$TimeLapseRateUI$xExtItH-pwwMOvd7ERs8nlnT9ps;-><init>(Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mTimeLapseTab:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mResources:Landroid/content/res/Resources;

    const p3, 0x7f070343

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 181
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mEntryView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEntryRootView()Landroid/view/ViewGroup;
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mEntryRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getEntryView()Landroid/view/View;
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mEntryView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_time_lapse"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 271
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 274
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hideEntryView()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 201
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mTimeLapseTab:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 205
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->hideScrollBar()V

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_2

    .line 209
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_2
    return-void
.end method

.method public synthetic lambda$createEntryView$0$TimeLapseRateUI(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->lambda$createEntryView$0(Landroid/view/View;)V

    return-void
.end method

.method public notifyCameraOperateAction(I)V
    .locals 2

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x7

    if-eq p1, v1, :cond_2

    const/16 v1, 0x9

    if-eq p1, v1, :cond_2

    const/16 v1, 0xf

    if-eq p1, v1, :cond_0

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1f

    if-eq p1, v0, :cond_2

    const/16 v0, 0x37

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 479
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mUIHandler:Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$UIHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 480
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->hideScrollBar()V

    goto :goto_0

    .line 476
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 p1, 0x51

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    goto :goto_0

    .line 470
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_support_long_press_lock"

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    const-string v1, "on"

    .line 471
    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 473
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->hideScrollBar()V

    :goto_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 451
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mTimeLapseTab:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 452
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->hideScrollBar()V

    const/4 p0, 0x1

    return p0

    .line 455
    :cond_0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 2

    .line 290
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_0

    .line 292
    sget-object p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 295
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_1

    .line 296
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "wide_camera"

    invoke-virtual {p1, v1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 297
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "key_wide_camera_item_seleccted"

    invoke-virtual {p1, v1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 299
    :cond_1
    new-instance p1, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$TimeLapseWarningCallbackImpl;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$TimeLapseWarningCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$1;)V

    .line 300
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 302
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 303
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_2

    .line 305
    sget-object p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting\'s support is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 309
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->createSupportedEntries(Ljava/util/List;)V

    .line 310
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mSupportedEntryValues:[Ljava/lang/String;

    .line 311
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntries()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mSupportedEntries:[Ljava/lang/String;

    .line 313
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mSupportedEntryValues:[Ljava/lang/String;

    array-length p1, p1

    if-nez p1, :cond_3

    .line 314
    sget-object p1, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "support value is null! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_3
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
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V
    .locals 0

    .line 325
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V

    .line 326
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    return-void
.end method

.method public setupEntryView()V
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mIndicator:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mSupportedEntries:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mIndicator:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 215
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mScrollBarShown:Z

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getModeRegionControl()Lcom/transsion/camera/app/common/IModeRegionControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IModeRegionControl;->showModeRegion()V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 223
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_2

    .line 227
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mBottomBarRoot:Landroid/view/View;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 230
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 232
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    if-eqz v0, :cond_4

    .line 233
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->transitionShutterToRegular()V

    .line 235
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v0, :cond_5

    const/16 v1, 0x51

    .line 236
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 238
    :cond_5
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method
