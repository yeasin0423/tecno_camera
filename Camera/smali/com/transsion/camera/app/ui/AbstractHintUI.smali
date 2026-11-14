.class public abstract Lcom/transsion/camera/app/ui/AbstractHintUI;
.super Ljava/lang/Object;
.source "AbstractHintUI.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/IHintUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;,
        Lcom/transsion/camera/app/ui/AbstractHintUI$ScaleAnimationEndListener;,
        Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;
    }
.end annotation


# static fields
.field protected static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAlwaysHintFadeInAnimator:Landroid/animation/Animator;

.field private mAlwaysHintFadeOutAnimator:Landroid/animation/Animator;

.field private mAlwaysHintText:Landroid/widget/TextView;

.field private final mAlwaysInfoStack:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/transsion/camera/app/common/ui/HintInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mAsdAlgorithResultLayoutWidth:I

.field protected mAsdEffectLayoutWidth:I

.field protected mAsdExpandAnimatorSet:Landroid/animation/AnimatorSet;

.field protected mAsdHideAnimatorSet:Landroid/animation/AnimatorSet;

.field private mAsdHideListener:Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;

.field private mAsdHintFadeInAnimator:Landroid/animation/Animator;

.field private mAsdHintFadeOutAnimator:Landroid/animation/Animator;

.field protected mAsdHintSlideInAnimator:Landroid/animation/Animator;

.field protected mAsdHintSlideOutAnimator:Landroid/animation/Animator;

.field protected mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

.field private mAutoHideHintText:Landroid/widget/TextView;

.field private mAutoHintFadeInAnimator:Landroid/animation/Animator;

.field private mAutoHintFadeOutAnimator:Landroid/animation/Animator;

.field private mCommonHintRoot:Landroid/widget/FrameLayout;

.field private mCommonHintRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mCurrentAlwaysInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mCurrentAutoHideInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mCurrentOrientation:I

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mDelayedShowDynamicHint:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mEnableUI:Z

.field private mEndHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mExtraTrans:I

.field protected mHideAsdOnly:Z

.field protected mHideAsdTemp:Z

.field private mIsAutoInfoShowing:Z

.field protected mIsNeedWaitScale:Z

.field protected volatile mIsSuperNightGuideShowing:Z

.field private mIsTransparent:Z

.field private final mMainScreenParameter:Lcom/transsion/camera/app/ui/MainScreenOriginPosition;

.field protected mModePickerControl:Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;

.field private mParentView:Landroid/view/View;

.field protected mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mPreviousExpandTime:J

.field private mProgressBarView:Landroid/widget/ProgressBar;

.field private mProgressHintRoot:Landroid/view/ViewGroup;

.field private mProgressHintText:Landroid/widget/TextView;

.field private mProgressLoadingView:Lcom/opensource/svgaplayer/SVGAImageView;

.field private mProgressRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field protected mRootView:Landroid/view/ViewGroup;

.field private mScaleListener:Lcom/transsion/camera/app/ui/AbstractHintUI$ScaleAnimationEndListener;

.field private mSuperNightGuideEnabled:Z

.field private mSuperNightGuideRoot:Landroid/view/View;

.field private mSuperNightScaleAnimatorSet:Landroid/animation/AnimatorSet;

.field protected mSuperNightSlideAnimatorSet:Landroid/animation/AnimatorSet;

.field private mSuperNightTwinkleView:Lcom/opensource/svgaplayer/SVGAImageView;

.field private mTempInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mTextViewIsRotate:Z

.field private mTransOrientation:I

.field private final mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/ui/MainScreenOriginPosition;)V
    .locals 2

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 74
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTempInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 81
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdExpandAnimatorSet:Landroid/animation/AnimatorSet;

    .line 82
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    .line 83
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 84
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mSuperNightSlideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 85
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mSuperNightScaleAnimatorSet:Landroid/animation/AnimatorSet;

    .line 88
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsTransparent:Z

    .line 95
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsNeedWaitScale:Z

    .line 96
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHideAsdTemp:Z

    .line 97
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHideAsdOnly:Z

    .line 102
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsSuperNightGuideShowing:Z

    .line 103
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mSuperNightGuideEnabled:Z

    .line 125
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentOrientation:I

    .line 126
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTransOrientation:I

    .line 127
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mExtraTrans:I

    .line 130
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mMainScreenParameter:Lcom/transsion/camera/app/ui/MainScreenOriginPosition;

    .line 131
    new-instance p1, Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;-><init>(Lcom/transsion/camera/app/ui/AbstractHintUI;Lcom/transsion/camera/app/ui/AbstractHintUI$1;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    .line 132
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    const/4 p1, 0x1

    .line 133
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mEnableUI:Z

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/AbstractHintUI;Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->doShowHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/transsion/camera/app/ui/AbstractHintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTempInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/app/ui/AbstractHintUI;)Lcom/transsion/camera/app/ui/AbstractHintUI$ScaleAnimationEndListener;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScaleListener:Lcom/transsion/camera/app/ui/AbstractHintUI$ScaleAnimationEndListener;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/app/ui/AbstractHintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/AbstractHintUI;Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->doHideInfo(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/ui/AbstractHintUI;Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->showDynamicAlwaysHintView(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/ui/AbstractHintUI;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->startSuperNightGuideAnim()V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/ui/AbstractHintUI;Z)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->stopSuperNightGuideAnim(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/transsion/camera/app/ui/AbstractHintUI;)Landroid/view/View;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mSuperNightGuideRoot:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/app/ui/AbstractHintUI;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mSuperNightScaleAnimatorSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/app/ui/AbstractHintUI;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateSpecifiedMode(Ljava/lang/String;)V

    return-void
.end method

.method private doAsdHintSlideAnim(ZZ)V
    .locals 3

    .line 867
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doAsdHintSlideAnim ----> isStart = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , resetAsdImmediately = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 869
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHintSlideOutAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->end()V

    .line 870
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHintSlideOutAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getAsdHintRootLayout()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 871
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHintSlideOutAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 873
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getAsdHintRootLayout()Landroid/view/ViewGroup;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    if-eqz p2, :cond_1

    .line 875
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getAsdHintRootLayout()Landroid/view/ViewGroup;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto :goto_0

    .line 877
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHintSlideInAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->end()V

    .line 878
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHintSlideInAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getAsdHintRootLayout()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 879
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHintSlideInAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :goto_0
    return-void
.end method

.method private doHideInfo(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 3

    .line 380
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doHideInfo,info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ,mCurrentAlwaysInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAlwaysInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 381
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    goto/16 :goto_1

    .line 426
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->hideProgressHintView()V

    goto/16 :goto_1

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAutoHideInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-ne p1, v0, :cond_b

    .line 412
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->hideAutoHideHintView()V

    .line 413
    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAutoHideInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 415
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_b

    .line 416
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz p1, :cond_b

    .line 417
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 418
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 419
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 420
    :cond_2
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->showAlwaysHintView(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    goto :goto_1

    .line 383
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAlwaysInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-ne p1, v0, :cond_a

    .line 384
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 385
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->isAsdDynamic()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 386
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdExpandAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-nez p1, :cond_6

    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_5

    .line 387
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-nez p1, :cond_6

    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_7

    .line 388
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 389
    :cond_6
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsNeedWaitScale:Z

    goto :goto_0

    .line 391
    :cond_7
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->hideAsdHintViewWithAnim()V

    .line 392
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->removeSuperGuideMessages()V

    goto :goto_0

    .line 395
    :cond_8
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->hideAlwaysHintView()V

    .line 397
    :goto_0
    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAlwaysInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    goto :goto_1

    .line 400
    :cond_9
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 401
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->showAlwaysHintView(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    goto :goto_1

    .line 405
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 406
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_b
    :goto_1
    return-void
.end method

.method private doShowHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 3

    .line 264
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mEndHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eq v0, p1, :cond_6

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mEnableUI:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 268
    :cond_0
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doShowHint,info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentAlwaysInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAlwaysInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 269
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getType()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 295
    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->showProgressHintView(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    goto :goto_0

    .line 281
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAlwaysInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz v0, :cond_3

    .line 282
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 283
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAlwaysInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 286
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->hideAsdHintView()V

    .line 287
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->hideAlwaysHintView()V

    const/4 v0, 0x0

    .line 288
    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAlwaysInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 289
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAutoHideInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 290
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->showAutoHideHintView(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 291
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 292
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 272
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAlwaysInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz v0, :cond_5

    if-eq p1, v0, :cond_5

    .line 273
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 274
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAlwaysInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 278
    :cond_5
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->showAlwaysHintView(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 300
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    .line 265
    :cond_6
    :goto_1
    sget-object p1, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This hint info should never be shown. mEnableUI:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mEnableUI:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private hideAlwaysHintView()V
    .locals 2

    .line 591
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideAlwaysHintView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysHintText:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->hideHintView(Landroid/widget/TextView;)V

    return-void
.end method

.method private hideAutoHideHintView()V
    .locals 2

    .line 604
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideAutoHideHintView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 605
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsAutoInfoShowing:Z

    .line 606
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAutoHideHintText:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->hideHintView(Landroid/widget/TextView;)V

    return-void
.end method

.method private hideHintView(Landroid/widget/TextView;)V
    .locals 0

    const/16 p0, 0x8

    .line 644
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p0, 0x0

    .line 645
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 646
    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private hideProgressHintView()V
    .locals 2

    .line 686
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideProgressHintView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 687
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 688
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressLoadingView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressLoadingView:Lcom/opensource/svgaplayer/SVGAImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation(Z)V

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressHintRoot:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 692
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressHintText:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initPadding()V
    .locals 6

    .line 238
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v0

    .line 239
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v1

    .line 240
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    .line 241
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    .line 242
    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mMainScreenParameter:Lcom/transsion/camera/app/ui/MainScreenOriginPosition;

    invoke-virtual {v5}, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->getCutoutHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v4, v0, v5, v1, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 244
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mMainScreenParameter:Lcom/transsion/camera/app/ui/MainScreenOriginPosition;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->getToolBarHeight()I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0, v1, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method

.method private removeDynamicAlwaysHintShowMessage(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 3

    .line 538
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeDynamicAlwaysHintShowMessage info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mDelayedShowDynamicHint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mDelayedShowDynamicHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 540
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mDelayedShowDynamicHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-ne p1, v0, :cond_0

    .line 541
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    const/16 p1, 0x6a

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private removeSuperGuideMessages()V
    .locals 2

    .line 795
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "removeSuperGuideMessages"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 796
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    if-eqz v0, :cond_2

    const/16 v1, 0x6b

    .line 797
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 800
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 801
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    const/4 v0, 0x1

    .line 804
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->stopSuperNightGuideAnim(Z)V

    :cond_2
    return-void
.end method

.method private showAlwaysHintView(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 5

    .line 546
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showAlwaysHintView, info:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " , mIsAutoInfoShowing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsAutoInfoShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 548
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsAutoInfoShowing:Z

    if-nez v0, :cond_7

    .line 549
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAlwaysInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 550
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 551
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->isAsdDynamic()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->isAsdDynamic()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 552
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPreviousExpandTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdExpandAnimatorSet:Landroid/animation/AnimatorSet;

    .line 553
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    .line 554
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 555
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_4

    .line 556
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 557
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 558
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTempInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 559
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTempInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTempInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 561
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTempInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherMessage(Ljava/lang/String;)V

    .line 562
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTempInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->showAsdHintView(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 563
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->hideAlwaysHintView()V

    .line 565
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPreviousExpandTime:J

    goto :goto_0

    .line 567
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    if-eqz v0, :cond_5

    .line 568
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x6a

    .line 569
    iput v1, v0, Landroid/os/Message;->what:I

    .line 570
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 571
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mDelayedShowDynamicHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 572
    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 573
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 574
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showAlwaysHintView delayed show dynamic hint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 578
    :cond_5
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->isTwinkleEnabled()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->showSuperNightGuide(Z)V

    goto :goto_1

    .line 580
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysHintText:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->showHintView(Lcom/transsion/camera/app/common/ui/HintInfo;Landroid/widget/TextView;)V

    .line 581
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->hideAsdHintView()V

    goto :goto_1

    .line 584
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 585
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    :cond_8
    :goto_1
    return-void
.end method

.method private showAutoHideHintView(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 2

    .line 596
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showAutoHideHintView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 597
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsAutoInfoShowing:Z

    .line 598
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAutoHideHintText:Landroid/widget/TextView;

    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->showHintView(Lcom/transsion/camera/app/common/ui/HintInfo;Landroid/widget/TextView;)V

    .line 600
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->stopSuperNightGuideAnim(Z)V

    return-void
.end method

.method private showDynamicAlwaysHintView(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 3

    .line 532
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showDynamicAlwaysHintView info:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 533
    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mDelayedShowDynamicHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 534
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->showAlwaysHintView(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method private showHintView(Lcom/transsion/camera/app/common/ui/HintInfo;Landroid/widget/TextView;)V
    .locals 4

    const/4 p0, 0x0

    .line 610
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 611
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 612
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 614
    :cond_0
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 617
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->isHighlight()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 618
    invoke-virtual {p2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f06008c

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    goto :goto_1

    .line 620
    :cond_1
    invoke-virtual {p2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f06008d

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 622
    :goto_1
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 623
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 625
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v0, p0, p0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 626
    invoke-virtual {p2, v0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 628
    :cond_2
    invoke-virtual {p2, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 631
    :goto_2
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->isBackgroundEnabled()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 632
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->isHighlight()Z

    move-result p0

    if-eqz p0, :cond_3

    const p0, 0x7f08030b

    .line 633
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_3

    :cond_3
    const p0, 0x7f08030a

    .line 635
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_3

    .line 638
    :cond_4
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    return-void
.end method

.method private showProgressHintView(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 4

    .line 650
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showProgressHintView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 651
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressHintRoot:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 652
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getProgressType()I

    move-result v0

    const/16 v2, 0x8

    const/high16 v3, -0x60000000

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 671
    :pswitch_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 672
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressHintRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 673
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressBarView:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 674
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressLoadingView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressLoadingView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->startAnimation()V

    goto :goto_0

    .line 663
    :pswitch_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 664
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressHintRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 665
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressBarView:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 666
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressLoadingView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressLoadingView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->startAnimation()V

    goto :goto_0

    .line 655
    :pswitch_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroid/view/ViewGroup;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 656
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressHintRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 657
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressBarView:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 658
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressLoadingView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressLoadingView:Lcom/opensource/svgaplayer/SVGAImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation(Z)V

    .line 680
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 681
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressHintText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showSuperNightGuide(Z)V
    .locals 4

    .line 778
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_super_night_guild"

    const-string v3, "off"

    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 779
    sget-object v1, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSuperNightGuildShowed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , superNightGuideEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , mSuperNightGuideEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mSuperNightGuideEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 781
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mSuperNightGuideEnabled:Z

    if-ne v1, p1, :cond_0

    .line 782
    sget-object p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "superNightGuideEnabled do not changed , return ! "

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 786
    :cond_0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mSuperNightGuideEnabled:Z

    .line 787
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->removeSuperGuideMessages()V

    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    .line 788
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    if-eqz p1, :cond_1

    const/16 v0, 0x6b

    const-wide/16 v1, 0xbb8

    .line 789
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 790
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    const/16 p1, 0x6c

    const-wide/16 v0, 0x2328

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method private startAlwaysHintAnimator(Landroid/animation/Animator;)V
    .locals 0

    .line 696
    invoke-virtual {p1}, Landroid/animation/Animator;->end()V

    .line 697
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysHintText:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 698
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private startAutoHideHintAnimator(Landroid/animation/Animator;)V
    .locals 0

    .line 702
    invoke-virtual {p1}, Landroid/animation/Animator;->end()V

    .line 703
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAutoHideHintText:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 704
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private startSuperNightGuideAnim()V
    .locals 6

    .line 809
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mSuperNightScaleAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 810
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 811
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mSuperNightScaleAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 813
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mSuperNightSlideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 814
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 815
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mSuperNightSlideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 818
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsAutoInfoShowing:Z

    if-eqz v0, :cond_2

    .line 819
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->hideAutoHideHintView()V

    .line 822
    :cond_2
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsSuperNightGuideShowing:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsTransparent:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    .line 826
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsSuperNightGuideShowing:Z

    .line 827
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mSuperNightGuideRoot:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 828
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mSuperNightGuideRoot:Landroid/view/View;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x42400000    # 48.0f

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;F)F

    move-result v3

    neg-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 829
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mSuperNightGuideRoot:Landroid/view/View;

    const/4 v3, 0x2

    new-array v3, v3, [F

    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;F)F

    move-result v4

    neg-float v4, v4

    aput v4, v3, v2

    const/4 v4, 0x0

    aput v4, v3, v0

    const-string v4, "translationY"

    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 831
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mSuperNightSlideAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 832
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mSuperNightSlideAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v4, v0, [Landroid/animation/Animator;

    aput-object v1, v4, v2

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 833
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mSuperNightSlideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 834
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mSuperNightTwinkleView:Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/opensource/svgaplayer/SVGAImageView;->isAnimating()Z

    move-result v1

    if-nez v1, :cond_4

    .line 835
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mSuperNightTwinkleView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v1}, Lcom/opensource/svgaplayer/SVGAImageView;->startAnimation()V

    .line 838
    :cond_4
    invoke-direct {p0, v0, v2}, Lcom/transsion/camera/app/ui/AbstractHintUI;->doAsdHintSlideAnim(ZZ)V

    :cond_5
    :goto_0
    return-void
.end method

.method private stopSuperNightGuideAnim(Z)V
    .locals 3

    .line 842
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsSuperNightGuideShowing:Z

    if-nez v0, :cond_0

    return-void

    .line 846
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 847
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 848
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 850
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mSuperNightSlideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 851
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 852
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mSuperNightSlideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 854
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mSuperNightTwinkleView:Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 855
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mSuperNightTwinkleView:Lcom/opensource/svgaplayer/SVGAImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation(Z)V

    .line 857
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mSuperNightGuideRoot:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 858
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsSuperNightGuideShowing:Z

    .line 860
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->doAsdHintSlideAnim(ZZ)V

    .line 861
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p1

    const-string v1, "key_super_night_guild"

    const-string v2, "on"

    invoke-virtual {p0, v1, v2, p1, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 862
    sget-object p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "key_super_night_guild ----> on "

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateSpecifiedMode(Ljava/lang/String;)V
    .locals 0

    .line 374
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mModePickerControl:Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;

    if-eqz p0, :cond_0

    .line 375
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;->updateSpecifiedMode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected createFloatValueAnimator(FFILandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;
    .locals 1

    const/4 p0, 0x2

    new-array p0, p0, [F

    const/4 v0, 0x0

    aput p1, p0, v0

    const/4 p1, 0x1

    aput p2, p0, p1

    .line 752
    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    int-to-long p1, p3

    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p0

    .line 753
    invoke-virtual {p0, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p0
.end method

.method protected createValueAnimator(IIILandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;
    .locals 1

    const/4 p0, 0x2

    new-array p0, p0, [I

    const/4 v0, 0x0

    aput p1, p0, v0

    const/4 p1, 0x1

    aput p2, p0, p1

    .line 746
    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p0

    int-to-long p1, p3

    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p0

    .line 747
    invoke-virtual {p0, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p0
.end method

.method public endHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mEndHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    return-void
.end method

.method public fadeInHint()V
    .locals 3

    .line 455
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[fadeInHint], mIsSuperNightGuideTwinkling = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsSuperNightGuideShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 456
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsTransparent:Z

    .line 457
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysHintFadeOutAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 458
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAutoHintFadeOutAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 459
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHintFadeOutAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 460
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysHintFadeInAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->startAlwaysHintAnimator(Landroid/animation/Animator;)V

    .line 461
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAutoHintFadeInAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->startAutoHideHintAnimator(Landroid/animation/Animator;)V

    .line 462
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHintFadeInAnimator:Landroid/animation/Animator;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->startAsdHintAnimator(Landroid/animation/Animator;)V

    .line 463
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAlwaysInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz v0, :cond_0

    .line 464
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->isTwinkleEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->showSuperNightGuide(Z)V

    :cond_0
    return-void
.end method

.method public fadeOutHint()V
    .locals 3

    .line 470
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[fadeOutHint], mIsSuperNightGuideTwinkling = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsSuperNightGuideShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 471
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsTransparent:Z

    .line 472
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysHintFadeInAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    .line 473
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAutoHintFadeInAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    .line 474
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHintFadeInAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    .line 475
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysHintFadeOutAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->startAlwaysHintAnimator(Landroid/animation/Animator;)V

    .line 476
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAutoHintFadeOutAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->startAutoHideHintAnimator(Landroid/animation/Animator;)V

    .line 477
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHintFadeOutAnimator:Landroid/animation/Animator;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->startAsdHintAnimator(Landroid/animation/Animator;)V

    .line 478
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->stopSuperNightGuideAnim(Z)V

    return-void
.end method

.method abstract getAsdHintRootLayout()Landroid/view/ViewGroup;
.end method

.method public getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    return-object p0
.end method

.method abstract getExpandInitValue()[I
.end method

.method abstract getOverallValue()[I
.end method

.method abstract getShrinkTargetValue()[I
.end method

.method public hideAllHint()V
    .locals 1

    .line 361
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->hideAsdHintView()V

    .line 362
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->hideAlwaysHintView()V

    .line 363
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->hideAutoHideHintView()V

    .line 364
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->hideProgressHintView()V

    const/4 v0, 0x1

    .line 365
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->stopSuperNightGuideAnim(Z)V

    return-void
.end method

.method abstract hideAsdHintView()V
.end method

.method protected hideAsdHintViewWithAnim()V
    .locals 2

    .line 885
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPreviousExpandTime:J

    .line 886
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdExpandAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 887
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    .line 888
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 889
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsNeedWaitScale:Z

    return-void

    .line 892
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->stopAsdAnimatorSet()V

    .line 893
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->initAsdHieAnimator()V

    .line 894
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHideAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHideListener:Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 895
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 2

    .line 305
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getType()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 314
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    const/16 v0, 0x66

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 311
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    const/16 v0, 0x65

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 307
    :cond_2
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->removeDynamicAlwaysHintShowMessage(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 308
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    const/16 v0, 0x67

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const v0, 0x7f0c005c

    const/4 v1, 0x1

    .line 179
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mParentView:Landroid/view/View;

    const p2, 0x7f090116

    .line 180
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroid/view/ViewGroup;

    .line 181
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mParentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 182
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mParentView:Landroid/view/View;

    const v0, 0x7f09021c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mSuperNightGuideRoot:Landroid/view/View;

    .line 183
    new-instance v0, Lcom/transsion/camera/app/ui/AbstractHintUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AbstractHintUI$1;-><init>(Lcom/transsion/camera/app/ui/AbstractHintUI;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroid/view/ViewGroup;

    const v0, 0x7f09021a

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/opensource/svgaplayer/SVGAImageView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mSuperNightTwinkleView:Lcom/opensource/svgaplayer/SVGAImageView;

    const p2, 0x7f02000d

    .line 202
    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysHintFadeOutAnimator:Landroid/animation/Animator;

    const v0, 0x7f02000c

    .line 203
    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysHintFadeInAnimator:Landroid/animation/Animator;

    .line 204
    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAutoHintFadeOutAnimator:Landroid/animation/Animator;

    .line 205
    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAutoHintFadeInAnimator:Landroid/animation/Animator;

    .line 206
    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHintFadeOutAnimator:Landroid/animation/Animator;

    .line 207
    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHintFadeInAnimator:Landroid/animation/Animator;

    const p2, 0x7f02000f

    .line 208
    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHintSlideOutAnimator:Landroid/animation/Animator;

    const p2, 0x7f02000e

    .line 209
    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHintSlideInAnimator:Landroid/animation/Animator;

    .line 210
    new-instance p2, Landroid/view/animation/PathInterpolator;

    const/high16 v0, 0x3e800000    # 0.25f

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p2, v0, v1, v0, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 211
    new-instance p2, Lcom/transsion/camera/app/ui/AbstractHintUI$ScaleAnimationEndListener;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI$ScaleAnimationEndListener;-><init>(Lcom/transsion/camera/app/ui/AbstractHintUI;Lcom/transsion/camera/app/ui/AbstractHintUI$1;)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScaleListener:Lcom/transsion/camera/app/ui/AbstractHintUI$ScaleAnimationEndListener;

    .line 212
    new-instance p2, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;

    invoke-direct {p2, p0, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;-><init>(Lcom/transsion/camera/app/ui/AbstractHintUI;Lcom/transsion/camera/app/ui/AbstractHintUI$1;)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHideListener:Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;

    .line 213
    new-instance p2, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-direct {p2, p1}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 214
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method abstract initAsdHieAnimator()V
.end method

.method abstract initAsdHieAnimatorByInfo(Lcom/transsion/camera/app/common/ui/HintInfo;)V
.end method

.method abstract initExpandAnimator([I[ILcom/transsion/camera/app/common/ui/HintInfo;)V
.end method

.method abstract initShrinkAnimator([I[ILcom/transsion/camera/app/common/ui/HintInfo;)V
.end method

.method public onOrientationChanged(I)V
    .locals 7

    .line 483
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    const/16 v1, 0x10e

    const/16 v2, 0xb4

    const/16 v3, 0x5a

    const/4 v4, 0x0

    if-eqz p1, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 496
    :cond_1
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mMainScreenParameter:Lcom/transsion/camera/app/ui/MainScreenOriginPosition;

    invoke-virtual {v5}, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->getToolBarHeight()I

    move-result v5

    invoke-virtual {v0, v5, v4, v4, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_0

    .line 493
    :cond_2
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mMainScreenParameter:Lcom/transsion/camera/app/ui/MainScreenOriginPosition;

    invoke-virtual {v5}, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->getToolBarHeight()I

    move-result v5

    invoke-virtual {v0, v4, v4, v5, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_0

    .line 490
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mMainScreenParameter:Lcom/transsion/camera/app/ui/MainScreenOriginPosition;

    invoke-virtual {v5}, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->getToolBarHeight()I

    move-result v5

    invoke-virtual {v0, v4, v5, v4, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 501
    :goto_0
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentOrientation:I

    .line 502
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 503
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTransOrientation:I

    const/16 v5, 0x10

    const/4 v6, 0x0

    if-ne v0, v5, :cond_5

    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentOrientation:I

    if-eq v0, v3, :cond_4

    if-ne v0, v1, :cond_5

    .line 505
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mExtraTrans:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    goto :goto_1

    .line 507
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setTranslationY(F)V

    :goto_1
    const/4 v0, 0x1

    if-eq p1, v2, :cond_7

    .line 510
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTextViewIsRotate:Z

    if-eqz v1, :cond_6

    .line 511
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTextViewIsRotate:Z

    .line 512
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    :goto_2
    if-ge v4, v1, :cond_6

    .line 513
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setRotation(F)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 516
    :cond_6
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, p1, v0}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_4

    .line 518
    :cond_7
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTextViewIsRotate:Z

    if-nez v1, :cond_9

    .line 519
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    move v2, v4

    :goto_3
    if-ge v2, v1, :cond_8

    .line 520
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/high16 v5, 0x43340000    # 180.0f

    invoke-virtual {v3, v5}, Landroid/view/View;->setRotation(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 522
    :cond_8
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTextViewIsRotate:Z

    .line 524
    :cond_9
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v4, v0}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 526
    :goto_4
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    :cond_a
    :goto_5
    return-void
.end method

.method public resetEndHint()V
    .locals 1

    const/4 v0, 0x0

    .line 351
    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mEndHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    return-void
.end method

.method public resetSuperNightGuide()V
    .locals 1

    .line 345
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->removeSuperGuideMessages()V

    const/4 v0, 0x0

    .line 346
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mSuperNightGuideEnabled:Z

    return-void
.end method

.method public resume()V
    .locals 1

    const/4 v0, 0x1

    .line 234
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mEnableUI:Z

    return-void
.end method

.method public setEnableHintUI(Z)V
    .locals 0

    .line 356
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mEnableUI:Z

    return-void
.end method

.method public setModePickerControl(Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mModePickerControl:Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;

    return-void
.end method

.method abstract setupAsdHintViews(Landroid/view/ViewGroup;)V
.end method

.method public setupViews()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f09008b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 220
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f09008a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    .line 221
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f090047

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysHintText:Landroid/widget/TextView;

    .line 222
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f090063

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAutoHideHintText:Landroid/widget/TextView;

    .line 223
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f09019e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 224
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0901a2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressHintRoot:Landroid/view/ViewGroup;

    .line 225
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f090114

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/opensource/svgaplayer/SVGAImageView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressLoadingView:Lcom/opensource/svgaplayer/SVGAImageView;

    .line 226
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f090113

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressBarView:Landroid/widget/ProgressBar;

    .line 227
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f090115

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressHintText:Landroid/widget/TextView;

    .line 228
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->setupAsdHintViews(Landroid/view/ViewGroup;)V

    .line 229
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->initPadding()V

    return-void
.end method

.method abstract showAsdHintView(Lcom/transsion/camera/app/common/ui/HintInfo;)V
.end method

.method public showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 2

    .line 249
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getType()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    const/16 v0, 0x68

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 255
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    const/16 v0, 0x64

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 251
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    const/16 v0, 0x69

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method abstract startAsdHintAnimator(Landroid/animation/Animator;)V
.end method

.method protected startAsdScaleAnimator(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 2

    .line 709
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdExpandAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 710
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 711
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdExpandAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 713
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 714
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 715
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 717
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getAsdHintRootLayout()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 718
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 719
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 720
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    .line 721
    :cond_4
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 722
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateEffectLayout(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 724
    :cond_5
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 725
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateAlgoritLayout(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 727
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getExpandInitValue()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getOverallValue()[I

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->initExpandAnimator([I[ILcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 728
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getOverallValue()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getShrinkTargetValue()[I

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->initShrinkAnimator([I[ILcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 729
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdExpandAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScaleListener:Lcom/transsion/camera/app/ui/AbstractHintUI$ScaleAnimationEndListener;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 730
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScaleListener:Lcom/transsion/camera/app/ui/AbstractHintUI$ScaleAnimationEndListener;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 731
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdExpandAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 732
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 733
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 734
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 735
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 736
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 738
    :cond_7
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->initAsdHieAnimatorByInfo(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    const/4 p1, 0x1

    .line 739
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHideAsdTemp:Z

    .line 740
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHideAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHideListener:Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 741
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :goto_0
    return-void
.end method

.method protected stopAsdAnimatorSet()V
    .locals 2

    .line 758
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdExpandAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdExpandAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 760
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdExpandAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 762
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 763
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 764
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 766
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 767
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 768
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 770
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 771
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 772
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherMessage(Ljava/lang/String;)V

    .line 773
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public unInit()V
    .locals 3

    .line 435
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "unInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 437
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 438
    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAlwaysInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 439
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 441
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherMessage(Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 443
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressLoadingView:Lcom/opensource/svgaplayer/SVGAImageView;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressLoadingView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0, v2}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation(Z)V

    .line 445
    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressLoadingView:Lcom/opensource/svgaplayer/SVGAImageView;

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mSuperNightTwinkleView:Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 448
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mSuperNightTwinkleView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0, v2}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation(Z)V

    .line 449
    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mSuperNightTwinkleView:Lcom/opensource/svgaplayer/SVGAImageView;

    :cond_1
    return-void
.end method

.method abstract updateAlgoritLayout(Lcom/transsion/camera/app/common/ui/HintInfo;)V
.end method

.method abstract updateEffectLayout(Lcom/transsion/camera/app/common/ui/HintInfo;)V
.end method
