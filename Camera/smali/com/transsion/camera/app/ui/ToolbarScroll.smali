.class public Lcom/transsion/camera/app/ui/ToolbarScroll;
.super Ljava/lang/Object;
.source "ToolbarScroll.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/scroll/IScrollOperation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/ToolbarScroll$IToolBarStateListener;,
        Lcom/transsion/camera/app/ui/ToolbarScroll$SupperAnimatorListener;,
        Lcom/transsion/camera/app/ui/ToolbarScroll$AnimatorTitleHideListener;,
        Lcom/transsion/camera/app/ui/ToolbarScroll$AnimatorTitleShowListener;,
        Lcom/transsion/camera/app/ui/ToolbarScroll$AnimatorTotalListener;,
        Lcom/transsion/camera/app/ui/ToolbarScroll$AnimatorPaddingUpdateLister;,
        Lcom/transsion/camera/app/ui/ToolbarScroll$ShrinkingBackAnimation;,
        Lcom/transsion/camera/app/ui/ToolbarScroll$ShrinkingAnimation;,
        Lcom/transsion/camera/app/ui/ToolbarScroll$SpreadingBackAnimation;,
        Lcom/transsion/camera/app/ui/ToolbarScroll$SpreadingAnimation;,
        Lcom/transsion/camera/app/ui/ToolbarScroll$Animation;,
        Lcom/transsion/camera/app/ui/ToolbarScroll$IAnimation;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mArrowHeight:I

.field private final mArrowMargin:I

.field private mContext:Landroid/content/Context;

.field private mCurrentTopPadding:I

.field private final mDefaultInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mMainScreenOriginPosition:Lcom/transsion/camera/app/ui/MainScreenOriginPosition;

.field private final mPaddingUpdateLister:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final mPullInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private mPushingDistance:F

.field private final mScrollStrategy:Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;

.field private final mShakeHeight:I

.field private final mShrink:Lcom/transsion/camera/app/ui/ToolbarScroll$IAnimation;

.field private final mShrinkBack:Lcom/transsion/camera/app/ui/ToolbarScroll$IAnimation;

.field private final mSpread:Lcom/transsion/camera/app/ui/ToolbarScroll$IAnimation;

.field private final mSpreadBack:Lcom/transsion/camera/app/ui/ToolbarScroll$IAnimation;

.field private final mTitleHideListener:Landroid/animation/Animator$AnimatorListener;

.field private final mTitleShowListener:Landroid/animation/Animator$AnimatorListener;

.field private mToolBarArrow:Landroid/view/View;

.field private mToolBarLayout:Landroid/view/ViewGroup;

.field private mToolBarStateListener:Lcom/transsion/camera/app/ui/ToolbarScroll$IToolBarStateListener;

.field private mToolBarTitle:Landroid/view/View;

.field private final mTriggerShrinkingDistance:I

.field private final mTriggerSpreadPullDistance:I

.field private final mTriggerSpreadingHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ToolbarScroll"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/ToolbarScroll;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/MainScreenOriginPosition;)V
    .locals 4

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mDefaultInterpolator:Landroid/view/animation/PathInterpolator;

    .line 29
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mPullInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 30
    new-instance v0, Lcom/transsion/camera/app/ui/ToolbarScroll$AnimatorPaddingUpdateLister;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/ToolbarScroll$AnimatorPaddingUpdateLister;-><init>(Lcom/transsion/camera/app/ui/ToolbarScroll;Lcom/transsion/camera/app/ui/ToolbarScroll$1;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mPaddingUpdateLister:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 31
    new-instance v0, Lcom/transsion/camera/app/ui/ToolbarScroll$AnimatorTitleShowListener;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/ToolbarScroll$AnimatorTitleShowListener;-><init>(Lcom/transsion/camera/app/ui/ToolbarScroll;Lcom/transsion/camera/app/ui/ToolbarScroll$1;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mTitleShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 32
    new-instance v0, Lcom/transsion/camera/app/ui/ToolbarScroll$AnimatorTitleHideListener;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/ToolbarScroll$AnimatorTitleHideListener;-><init>(Lcom/transsion/camera/app/ui/ToolbarScroll;Lcom/transsion/camera/app/ui/ToolbarScroll$1;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mTitleHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 50
    new-instance v0, Lcom/transsion/camera/app/ui/ToolbarScroll$SpreadingAnimation;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/ToolbarScroll$SpreadingAnimation;-><init>(Lcom/transsion/camera/app/ui/ToolbarScroll;Lcom/transsion/camera/app/ui/ToolbarScroll$1;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mSpread:Lcom/transsion/camera/app/ui/ToolbarScroll$IAnimation;

    .line 51
    new-instance v0, Lcom/transsion/camera/app/ui/ToolbarScroll$SpreadingBackAnimation;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/ToolbarScroll$SpreadingBackAnimation;-><init>(Lcom/transsion/camera/app/ui/ToolbarScroll;Lcom/transsion/camera/app/ui/ToolbarScroll$1;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mSpreadBack:Lcom/transsion/camera/app/ui/ToolbarScroll$IAnimation;

    .line 52
    new-instance v0, Lcom/transsion/camera/app/ui/ToolbarScroll$ShrinkingAnimation;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/ToolbarScroll$ShrinkingAnimation;-><init>(Lcom/transsion/camera/app/ui/ToolbarScroll;Lcom/transsion/camera/app/ui/ToolbarScroll$1;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mShrink:Lcom/transsion/camera/app/ui/ToolbarScroll$IAnimation;

    .line 53
    new-instance v0, Lcom/transsion/camera/app/ui/ToolbarScroll$ShrinkingBackAnimation;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/ToolbarScroll$ShrinkingBackAnimation;-><init>(Lcom/transsion/camera/app/ui/ToolbarScroll;Lcom/transsion/camera/app/ui/ToolbarScroll$1;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mShrinkBack:Lcom/transsion/camera/app/ui/ToolbarScroll$IAnimation;

    .line 57
    iput-object p2, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mMainScreenOriginPosition:Lcom/transsion/camera/app/ui/MainScreenOriginPosition;

    .line 58
    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->getScreenHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mTriggerSpreadPullDistance:I

    .line 59
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mContext:Landroid/content/Context;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070349

    .line 61
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mTriggerSpreadingHeight:I

    const v0, 0x7f07035a

    .line 62
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    const v0, 0x7f070346

    .line 63
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mShakeHeight:I

    const v0, 0x7f070347

    .line 64
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mTriggerShrinkingDistance:I

    const v0, 0x7f070344

    .line 65
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mArrowMargin:I

    .line 66
    new-instance p1, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;

    invoke-direct {p1, p2}, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;-><init>(Lcom/transsion/camera/app/ui/MainScreenOriginPosition;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mScrollStrategy:Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;

    return-void
.end method

.method static synthetic access$1000(Lcom/transsion/camera/app/ui/ToolbarScroll;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mPaddingUpdateLister:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/app/ui/ToolbarScroll;)I
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ToolbarScroll;->currentTopPadding()I

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/app/ui/ToolbarScroll;)I
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ToolbarScroll;->maxPaddingTop()I

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/app/ui/ToolbarScroll;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mShakeHeight:I

    return p0
.end method

.method static synthetic access$1500(Lcom/transsion/camera/app/ui/ToolbarScroll;)Landroid/view/View;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mToolBarTitle:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/transsion/camera/app/ui/ToolbarScroll;)Landroid/animation/Animator$AnimatorListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mTitleShowListener:Landroid/animation/Animator$AnimatorListener;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/transsion/camera/app/ui/ToolbarScroll;)Landroid/view/View;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mToolBarArrow:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/transsion/camera/app/ui/ToolbarScroll;)I
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ToolbarScroll;->originPaddingTop()I

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lcom/transsion/camera/app/ui/ToolbarScroll;)Landroid/animation/Animator$AnimatorListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mTitleHideListener:Landroid/animation/Animator$AnimatorListener;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/transsion/camera/app/ui/ToolbarScroll;I)I
    .locals 0

    .line 26
    iput p1, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mCurrentTopPadding:I

    return p1
.end method

.method static synthetic access$2100(Lcom/transsion/camera/app/ui/ToolbarScroll;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ToolbarScroll;->updateTopBarPadding(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/transsion/camera/app/ui/ToolbarScroll;)I
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ToolbarScroll;->titleTranslationY()I

    move-result p0

    return p0
.end method

.method static synthetic access$700()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 26
    sget-object v0, Lcom/transsion/camera/app/ui/ToolbarScroll;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$800(Lcom/transsion/camera/app/ui/ToolbarScroll;)Landroid/view/animation/PathInterpolator;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mDefaultInterpolator:Landroid/view/animation/PathInterpolator;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/app/ui/ToolbarScroll;Z)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ToolbarScroll;->assertTrue(Z)V

    return-void
.end method

.method private assertTrue(Z)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    .line 431
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method private beginArrowTranslationY()I
    .locals 0

    .line 356
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mMainScreenOriginPosition:Lcom/transsion/camera/app/ui/MainScreenOriginPosition;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->getTopBarAdditionalPullMaxHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    return p0
.end method

.method private currentTopPadding()I
    .locals 1

    .line 311
    iget v0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mCurrentTopPadding:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ToolbarScroll;->validPaddingTop(I)I

    move-result p0

    return p0
.end method

.method private maxPaddingTop()I
    .locals 1

    .line 324
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ToolbarScroll;->originPaddingTop()I

    move-result v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mMainScreenOriginPosition:Lcom/transsion/camera/app/ui/MainScreenOriginPosition;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->getTopBarAdditionalPullMaxHeight()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private onSpreadStart()V
    .locals 3

    .line 344
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mContext:Landroid/content/Context;

    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    const-wide/16 v0, 0x32

    const/4 v2, -0x1

    .line 345
    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 347
    invoke-virtual {p0, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_0
    return-void
.end method

.method private onUpdateTopBarPadding()V
    .locals 3

    .line 338
    iget v0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mCurrentTopPadding:I

    iget v1, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mArrowMargin:I

    sub-int/2addr v0, v1

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ToolbarScroll;->beginArrowTranslationY()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 339
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mToolBarArrow:Landroid/view/View;

    iget v1, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mCurrentTopPadding:I

    iget v2, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mArrowMargin:I

    sub-int/2addr v1, v2

    iget p0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mArrowHeight:I

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr v1, p0

    int-to-float p0, v1

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method private originPaddingBottom()I
    .locals 0

    .line 328
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mMainScreenOriginPosition:Lcom/transsion/camera/app/ui/MainScreenOriginPosition;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->getToolBarOriginPaddingHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    return p0
.end method

.method private originPaddingTop()I
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mMainScreenOriginPosition:Lcom/transsion/camera/app/ui/MainScreenOriginPosition;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->getCutoutHeight()I

    move-result v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mMainScreenOriginPosition:Lcom/transsion/camera/app/ui/MainScreenOriginPosition;

    .line 320
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->getToolBarOriginPaddingHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    return v0
.end method

.method private pullDistanceToPadding(I)I
    .locals 1

    int-to-float p1, p1

    .line 114
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ToolbarScroll;->validDistance(F)F

    move-result p1

    iget v0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mTriggerSpreadPullDistance:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mPullInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, p1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result p1

    .line 116
    iget p0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mTriggerSpreadingHeight:I

    int-to-float p0, p0

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private pushDistanceToPadding(I)I
    .locals 0

    .line 147
    div-int/lit8 p1, p1, 0x2

    return p1
.end method

.method private reachShrinking()Z
    .locals 1

    .line 151
    iget v0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mPushingDistance:F

    iget p0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mTriggerShrinkingDistance:I

    int-to-float p0, p0

    cmpl-float p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private titleTranslationY()I
    .locals 0

    .line 352
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ToolbarScroll;->originPaddingTop()I

    move-result p0

    return p0
.end method

.method private updateTopBarPadding(I)V
    .locals 4

    .line 332
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mToolBarLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mToolBarLayout:Landroid/view/ViewGroup;

    .line 333
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v2

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ToolbarScroll;->originPaddingBottom()I

    move-result v3

    .line 332
    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 334
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ToolbarScroll;->onUpdateTopBarPadding()V

    return-void
.end method

.method private validDistance(F)F
    .locals 0

    .line 120
    iget p0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mTriggerSpreadPullDistance:I

    int-to-float p0, p0

    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method private validPaddingTop(I)I
    .locals 2

    .line 315
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ToolbarScroll;->originPaddingTop()I

    move-result v0

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ToolbarScroll;->maxPaddingTop()I

    move-result v1

    iget p0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mShakeHeight:I

    add-int/2addr v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public down(FF)V
    .locals 0

    return-void
.end method

.method originTopBarPadding()V
    .locals 1

    .line 91
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ToolbarScroll;->originPaddingTop()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ToolbarScroll;->updateTopBarPadding(I)V

    return-void
.end method

.method public pulling(FF)Z
    .locals 2

    .line 107
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ToolbarScroll;->originPaddingTop()I

    move-result v0

    neg-float v1, p2

    float-to-int v1, v1

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/ToolbarScroll;->pullDistanceToPadding(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mCurrentTopPadding:I

    .line 108
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ToolbarScroll;->currentTopPadding()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ToolbarScroll;->updateTopBarPadding(I)V

    .line 110
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mScrollStrategy:Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->scroll(FF)Z

    move-result p0

    return p0
.end method

.method public pushing(FF)Z
    .locals 0

    .line 134
    iput p2, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mPushingDistance:F

    .line 135
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ToolbarScroll;->maxPaddingTop()I

    move-result p1

    iget p2, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mPushingDistance:F

    float-to-int p2, p2

    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/ToolbarScroll;->pushDistanceToPadding(I)I

    move-result p2

    sub-int/2addr p1, p2

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ToolbarScroll;->validPaddingTop(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mCurrentTopPadding:I

    .line 136
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ToolbarScroll;->currentTopPadding()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ToolbarScroll;->updateTopBarPadding(I)V

    .line 137
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ToolbarScroll;->reachShrinking()Z

    move-result p0

    return p0
.end method

.method setToolBarArrow(Landroid/view/View;)V
    .locals 2

    .line 78
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mToolBarArrow:Landroid/view/View;

    const/4 v0, 0x0

    .line 79
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 80
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 79
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 81
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mToolBarArrow:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mArrowHeight:I

    return-void
.end method

.method setToolBarStateListener(Lcom/transsion/camera/app/ui/ToolbarScroll$IToolBarStateListener;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mToolBarStateListener:Lcom/transsion/camera/app/ui/ToolbarScroll$IToolBarStateListener;

    return-void
.end method

.method setToolBarTitle(Landroid/view/View;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mToolBarTitle:Landroid/view/View;

    return-void
.end method

.method setToolbarLayout(Landroid/view/ViewGroup;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mToolBarLayout:Landroid/view/ViewGroup;

    return-void
.end method

.method public startPulling()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mScrollStrategy:Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->startScroll()V

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mToolBarStateListener:Lcom/transsion/camera/app/ui/ToolbarScroll$IToolBarStateListener;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/ToolbarScroll$IToolBarStateListener;->onToolbarStartPulling()V

    return-void
.end method

.method public startShrinkingAnimation(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;)V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mShrink:Lcom/transsion/camera/app/ui/ToolbarScroll$IAnimation;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/ui/ToolbarScroll$IAnimation;->start(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;)V

    .line 175
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mToolBarStateListener:Lcom/transsion/camera/app/ui/ToolbarScroll$IToolBarStateListener;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/ToolbarScroll$IToolBarStateListener;->onToolbarShrink()V

    return-void
.end method

.method public startShrinkingBackAnimation(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;)V
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mShrinkBack:Lcom/transsion/camera/app/ui/ToolbarScroll$IAnimation;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/ToolbarScroll$IAnimation;->start(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;)V

    return-void
.end method

.method public startSpreadingAnimation(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;Z)V
    .locals 0

    .line 161
    iget-object p2, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mSpread:Lcom/transsion/camera/app/ui/ToolbarScroll$IAnimation;

    invoke-interface {p2, p1}, Lcom/transsion/camera/app/ui/ToolbarScroll$IAnimation;->start(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;)V

    .line 162
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ToolbarScroll;->onSpreadStart()V

    .line 163
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mToolBarStateListener:Lcom/transsion/camera/app/ui/ToolbarScroll$IToolBarStateListener;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/ToolbarScroll$IToolBarStateListener;->onToolbarSpreadStart()V

    return-void
.end method

.method public startSpreadingBackAnimation(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mSpreadBack:Lcom/transsion/camera/app/ui/ToolbarScroll$IAnimation;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/ui/ToolbarScroll$IAnimation;->start(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;)V

    .line 169
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll;->mToolBarStateListener:Lcom/transsion/camera/app/ui/ToolbarScroll$IToolBarStateListener;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/ToolbarScroll$IToolBarStateListener;->onToolbarSpreadBack()V

    return-void
.end method

.method public stopPulling()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public stopPushing()Z
    .locals 0

    .line 156
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ToolbarScroll;->reachShrinking()Z

    move-result p0

    return p0
.end method
