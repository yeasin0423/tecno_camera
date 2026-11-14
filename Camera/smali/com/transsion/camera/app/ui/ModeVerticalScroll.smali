.class public Lcom/transsion/camera/app/ui/ModeVerticalScroll;
.super Ljava/lang/Object;
.source "ModeVerticalScroll.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/scroll/IScrollOperation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/ModeVerticalScroll$IPanelStateListener;,
        Lcom/transsion/camera/app/ui/ModeVerticalScroll$SpreadingAnimationListener;,
        Lcom/transsion/camera/app/ui/ModeVerticalScroll$SupperAnimatorListener;,
        Lcom/transsion/camera/app/ui/ModeVerticalScroll$AnimatorTotalListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mHintMargin:I

.field private final mMainScreenOriginPosition:Lcom/transsion/camera/app/ui/MainScreenOriginPosition;

.field private final mMaxShakeHeight:F

.field private mModeMaskView:Landroid/view/View;

.field private mModePanelHideListener:Landroid/animation/Animator$AnimatorListener;

.field private mModePanelLayout:Landroid/view/View;

.field private mModePickerHeightUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mModePickerLayout:Landroid/view/ViewGroup;

.field private mPanelHintView:Landroid/view/View;

.field private mPanelStateListener:Lcom/transsion/camera/app/ui/ModeVerticalScroll$IPanelStateListener;

.field private final mPullInterpolator:Landroid/view/animation/Interpolator;

.field private mPushingDistance:F

.field private final mScrollStrategy:Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;

.field private final mShakeHeight:I

.field private final mSupportedModeNum:I

.field private final mTriggerHintHeight:I

.field private final mTriggerShrinkPushDistance:F

.field private final mTriggerSpreadPullDistance:I

.field private mWideCameraControl:Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/MainScreenOriginPosition;Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;)V
    .locals 4

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPullInterpolator:Landroid/view/animation/Interpolator;

    .line 39
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mDefaultInterpolator:Landroid/view/animation/PathInterpolator;

    .line 382
    new-instance v0, Lcom/transsion/camera/app/ui/ModeVerticalScroll$4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll$4;-><init>(Lcom/transsion/camera/app/ui/ModeVerticalScroll;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePickerHeightUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 391
    new-instance v0, Lcom/transsion/camera/app/ui/ModeVerticalScroll$5;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll$5;-><init>(Lcom/transsion/camera/app/ui/ModeVerticalScroll;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePanelHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 55
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mMainScreenOriginPosition:Lcom/transsion/camera/app/ui/MainScreenOriginPosition;

    .line 57
    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->getScreenHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0xf

    iput v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mTriggerSpreadPullDistance:I

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070195

    .line 60
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mTriggerShrinkPushDistance:F

    const v0, 0x7f07019f

    .line 61
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mMaxShakeHeight:F

    const v0, 0x7f070196

    .line 62
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mShakeHeight:I

    const v0, 0x7f07035a

    .line 63
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mTriggerHintHeight:I

    const v0, 0x7f07018b

    .line 64
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mHintMargin:I

    const v0, 0x7f030014

    .line 66
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f030015

    .line 67
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 68
    array-length v0, v0

    array-length p1, p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mSupportedModeNum:I

    .line 70
    new-instance p1, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;

    invoke-direct {p1, p2}, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;-><init>(Lcom/transsion/camera/app/ui/MainScreenOriginPosition;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mScrollStrategy:Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;

    .line 71
    iput-object p3, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mWideCameraControl:Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/ModeVerticalScroll;)Lcom/transsion/camera/app/ui/ModeVerticalScroll$IPanelStateListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelStateListener:Lcom/transsion/camera/app/ui/ModeVerticalScroll$IPanelStateListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/ModeVerticalScroll;)Landroid/view/View;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelHintView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/ui/ModeVerticalScroll;FZ)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->updateWideCameraAlpha(FZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/ui/ModeVerticalScroll;)Landroid/view/View;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModeMaskView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/ui/ModeVerticalScroll;)Landroid/view/ViewGroup;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePickerLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/app/ui/ModeVerticalScroll;)Landroid/view/View;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePanelLayout:Landroid/view/View;

    return-object p0
.end method

.method private varargs createObjectAnimator(Ljava/lang/Object;Ljava/lang/String;I[F)Landroid/animation/Animator;
    .locals 0

    .line 176
    invoke-static {p1, p2, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    int-to-long p1, p3

    .line 177
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method private createSpreadAnimation(Landroid/view/View;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/AnimatorSet;
    .locals 9

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 190
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->getOriginPanelTranslationY()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v4, 0x0

    aput v4, v1, v2

    const-string v5, "translationY"

    const/16 v6, 0x12c

    .line 189
    invoke-direct {p0, p1, v5, v6, v1}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->createObjectAnimator(Ljava/lang/Object;Ljava/lang/String;I[F)Landroid/animation/Animator;

    move-result-object v1

    new-array v7, v0, [F

    .line 191
    fill-array-data v7, :array_0

    const-string v8, "alpha"

    invoke-direct {p0, p1, v8, v6, v7}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->createObjectAnimator(Ljava/lang/Object;Ljava/lang/String;I[F)Landroid/animation/Animator;

    move-result-object v7

    new-array v8, v0, [F

    aput v4, v8, v3

    .line 194
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->getSpreadStateTranslationY()F

    move-result v4

    aput v4, v8, v2

    const/16 v4, 0x96

    .line 193
    invoke-direct {p0, p1, v5, v4, v8}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->createObjectAnimator(Ljava/lang/Object;Ljava/lang/String;I[F)Landroid/animation/Animator;

    move-result-object p1

    .line 195
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    if-eqz p2, :cond_0

    .line 197
    iget-object p2, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePickerHeightUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-array v0, v0, [I

    .line 198
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->currentModePickerHeight()I

    move-result v5

    aput v5, v0, v3

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->originModePickerHeight()I

    move-result v3

    aput v3, v0, v2

    .line 197
    invoke-direct {p0, p2, v6, v0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->createValueAnimator(Landroid/animation/ValueAnimator$AnimatorUpdateListener;I[I)Landroid/animation/Animator;

    move-result-object p2

    .line 199
    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_0

    .line 202
    :cond_0
    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p2

    invoke-virtual {p2, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 204
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mDefaultInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v4

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private varargs createValueAnimator(Landroid/animation/ValueAnimator$AnimatorUpdateListener;I[I)Landroid/animation/Animator;
    .locals 0

    .line 182
    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p0

    .line 183
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    int-to-long p1, p2

    .line 184
    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private currentModePickerHeight()I
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePickerLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 134
    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    return p0
.end method

.method private getInputRatio(F)F
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->validDistance(F)F

    move-result p1

    iget p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mTriggerSpreadPullDistance:I

    int-to-float p0, p0

    div-float/2addr p1, p0

    return p1
.end method

.method private getOriginPanelTranslationY()F
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePanelLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mMainScreenOriginPosition:Lcom/transsion/camera/app/ui/MainScreenOriginPosition;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->getBottomHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mMaxShakeHeight:F

    sub-float/2addr v0, p0

    return v0
.end method

.method private getSpreadStateTranslationY()F
    .locals 0

    .line 172
    iget p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mShakeHeight:I

    int-to-float p0, p0

    return p0
.end method

.method private originModePickerHeight()I
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mMainScreenOriginPosition:Lcom/transsion/camera/app/ui/MainScreenOriginPosition;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->getBottomHeight()I

    move-result p0

    return p0
.end method

.method private pullDistanceToHeight(F)I
    .locals 1

    .line 98
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->getInputRatio(F)F

    move-result p1

    .line 99
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPullInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 100
    iget p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mMaxShakeHeight:F

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private pushDistanceToTranslationY(I)I
    .locals 0

    .line 374
    div-int/lit8 p1, p1, 0x2

    return p1
.end method

.method private reachShrinking()Z
    .locals 1

    .line 370
    iget v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPushingDistance:F

    iget p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mTriggerShrinkPushDistance:F

    cmpl-float p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private startVibrator()V
    .locals 3

    .line 429
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mContext:Landroid/content/Context;

    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    const-wide/16 v0, 0x32

    const/4 v2, -0x1

    .line 430
    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 432
    invoke-virtual {p0, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_0
    return-void
.end method

.method private updateModePickerLayoutHeight(I)V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePickerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 113
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->originModePickerHeight()I

    move-result v1

    add-int/2addr v1, p1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 114
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePickerLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateWideCameraAlpha(FZ)V
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelHintView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 440
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mWideCameraControl:Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;

    if-eqz p0, :cond_1

    .line 441
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->updateWideCameraAlpha(FZ)V

    :cond_1
    return-void
.end method

.method private updateWideCameraUI(F)V
    .locals 4

    .line 118
    iget v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mTriggerHintHeight:I

    int-to-float v1, v0

    cmpl-float v1, p1, v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-lez v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mWideCameraControl:Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;

    if-eqz v1, :cond_1

    int-to-float v1, v0

    sub-float/2addr p1, v1

    .line 120
    iget v1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mTriggerSpreadPullDistance:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    div-float/2addr p1, v0

    sub-float/2addr v3, p1

    .line 121
    invoke-direct {p0, v3, v2}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->updateWideCameraAlpha(FZ)V

    goto :goto_0

    .line 124
    :cond_0
    invoke-direct {p0, v3, v2}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->updateWideCameraAlpha(FZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private validDistance(F)F
    .locals 0

    .line 108
    iget p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mTriggerSpreadPullDistance:I

    int-to-float p0, p0

    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method private validPanelTranslationY(F)F
    .locals 0

    .line 164
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->getOriginPanelTranslationY()F

    move-result p0

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method


# virtual methods
.method public down(FF)V
    .locals 0

    return-void
.end method

.method public pulling(FF)Z
    .locals 2

    .line 150
    iget v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mSupportedModeNum:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 153
    :cond_0
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->pullDistanceToHeight(F)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->updateModePickerLayoutHeight(I)V

    .line 154
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->updateWideCameraUI(F)V

    .line 155
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mScrollStrategy:Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->scroll(FF)Z

    move-result p0

    return p0
.end method

.method public pushing(FF)Z
    .locals 0

    neg-float p1, p2

    .line 360
    iput p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPushingDistance:F

    .line 361
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->getSpreadStateTranslationY()F

    move-result p1

    iget p2, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPushingDistance:F

    float-to-int p2, p2

    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->pushDistanceToTranslationY(I)I

    move-result p2

    int-to-float p2, p2

    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->validPanelTranslationY(F)F

    move-result p2

    add-float/2addr p1, p2

    .line 362
    iget-object p2, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePanelLayout:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 363
    iget-object p2, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelHintView:Landroid/view/View;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_0

    .line 364
    iget-object p2, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelHintView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 366
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->reachShrinking()Z

    move-result p0

    return p0
.end method

.method setModePanelLayout(Landroid/view/ViewGroup;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePanelLayout:Landroid/view/View;

    return-void
.end method

.method public setModePanelMask(Landroid/view/View;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModeMaskView:Landroid/view/View;

    return-void
.end method

.method setModePickerLayout(Landroid/view/ViewGroup;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePickerLayout:Landroid/view/ViewGroup;

    return-void
.end method

.method public setPanelHintView(Landroid/view/View;)V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelHintView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 88
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 90
    :cond_0
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelHintView:Landroid/view/View;

    return-void
.end method

.method public setPanelStateListener(Lcom/transsion/camera/app/ui/ModeVerticalScroll$IPanelStateListener;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelStateListener:Lcom/transsion/camera/app/ui/ModeVerticalScroll$IPanelStateListener;

    return-void
.end method

.method public startPulling()V
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mScrollStrategy:Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->startScroll()V

    return-void
.end method

.method public startShrinkingAnimation(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;)V
    .locals 11

    .line 282
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePanelLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    .line 283
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->getOriginPanelTranslationY()F

    move-result v1

    .line 285
    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePanelLayout:Landroid/view/View;

    const/4 v3, 0x2

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v6, 0x1

    aput v1, v4, v6

    const-string v7, "translationY"

    const/16 v8, 0x12c

    invoke-direct {p0, v2, v7, v8, v4}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->createObjectAnimator(Ljava/lang/Object;Ljava/lang/String;I[F)Landroid/animation/Animator;

    move-result-object v2

    .line 287
    iget-object v4, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePanelLayout:Landroid/view/View;

    new-array v9, v3, [F

    fill-array-data v9, :array_0

    const-string v10, "alpha"

    invoke-direct {p0, v4, v10, v8, v9}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->createObjectAnimator(Ljava/lang/Object;Ljava/lang/String;I[F)Landroid/animation/Animator;

    move-result-object v4

    .line 289
    iget-object v9, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePanelHideListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v4, v9}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 291
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    .line 292
    invoke-virtual {v9, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 293
    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mDefaultInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 295
    new-instance v2, Lcom/transsion/camera/app/ui/ModeVerticalScroll$AnimatorTotalListener;

    invoke-direct {v2, p1}, Lcom/transsion/camera/app/ui/ModeVerticalScroll$AnimatorTotalListener;-><init>(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;)V

    invoke-virtual {v9, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 296
    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    .line 297
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelStateListener:Lcom/transsion/camera/app/ui/ModeVerticalScroll$IPanelStateListener;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/ModeVerticalScroll$IPanelStateListener;->onPanelShrink()V

    .line 299
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModeMaskView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 300
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelHintView:Landroid/view/View;

    if-eqz p1, :cond_0

    new-array v2, v3, [F

    aput v0, v2, v5

    .line 301
    iget v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mMaxShakeHeight:F

    add-float/2addr v1, v0

    aput v1, v2, v6

    invoke-direct {p0, p1, v7, v8, v2}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->createObjectAnimator(Ljava/lang/Object;Ljava/lang/String;I[F)Landroid/animation/Animator;

    move-result-object p1

    .line 303
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelHintView:Landroid/view/View;

    new-array v1, v3, [F

    fill-array-data v1, :array_1

    invoke-direct {p0, v0, v10, v8, v1}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->createObjectAnimator(Ljava/lang/Object;Ljava/lang/String;I[F)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    .line 305
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 306
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 307
    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 308
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mDefaultInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 309
    new-instance p1, Lcom/transsion/camera/app/ui/ModeVerticalScroll$2;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll$2;-><init>(Lcom/transsion/camera/app/ui/ModeVerticalScroll;)V

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 318
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 320
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModeMaskView:Landroid/view/View;

    new-array v0, v3, [F

    fill-array-data v0, :array_2

    invoke-direct {p0, p1, v10, v8, v0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->createObjectAnimator(Ljava/lang/Object;Ljava/lang/String;I[F)Landroid/animation/Animator;

    move-result-object p1

    .line 322
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mDefaultInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 323
    new-instance v0, Lcom/transsion/camera/app/ui/ModeVerticalScroll$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll$3;-><init>(Lcom/transsion/camera/app/ui/ModeVerticalScroll;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 331
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    const/4 p1, 0x0

    .line 333
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModeMaskView:Landroid/view/View;

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 335
    invoke-direct {p0, p1, v5}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->updateWideCameraAlpha(FZ)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f000000    # 0.5f
        0x0
    .end array-data
.end method

.method public startShrinkingBackAnimation(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;)V
    .locals 8

    .line 341
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePanelLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    .line 342
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->getSpreadStateTranslationY()F

    move-result v1

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v0

    .line 343
    iget v2, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mTriggerShrinkPushDistance:F

    div-float/2addr v1, v2

    const/high16 v2, 0x43960000    # 300.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 344
    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePanelLayout:Landroid/view/View;

    const/4 v3, 0x2

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput v0, v4, v5

    .line 345
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->getSpreadStateTranslationY()F

    move-result v6

    const/4 v7, 0x1

    aput v6, v4, v7

    const-string v6, "translationY"

    .line 344
    invoke-direct {p0, v2, v6, v1, v4}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->createObjectAnimator(Ljava/lang/Object;Ljava/lang/String;I[F)Landroid/animation/Animator;

    move-result-object v2

    .line 346
    new-instance v4, Lcom/transsion/camera/app/ui/ModeVerticalScroll$AnimatorTotalListener;

    invoke-direct {v4, p1}, Lcom/transsion/camera/app/ui/ModeVerticalScroll$AnimatorTotalListener;-><init>(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;)V

    invoke-virtual {v2, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 347
    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 348
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelHintView:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 349
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelHintView:Landroid/view/View;

    new-array v2, v3, [F

    aput v0, v2, v5

    .line 350
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->getSpreadStateTranslationY()F

    move-result v0

    aput v0, v2, v7

    .line 349
    invoke-direct {p0, p1, v6, v1, v2}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->createObjectAnimator(Ljava/lang/Object;Ljava/lang/String;I[F)Landroid/animation/Animator;

    move-result-object p0

    .line 351
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 354
    :cond_0
    invoke-interface {p1}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;->onAnimationEnd()V

    :cond_1
    :goto_0
    return-void
.end method

.method public startSpreadingAnimation(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;Z)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 211
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->updateWideCameraAlpha(FZ)V

    .line 212
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePanelLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePanelLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePickerHeightUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-direct {p0, v0, v2}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->createSpreadAnimation(Landroid/view/View;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 215
    new-instance v2, Lcom/transsion/camera/app/ui/ModeVerticalScroll$AnimatorTotalListener;

    new-instance v3, Lcom/transsion/camera/app/ui/ModeVerticalScroll$SpreadingAnimationListener;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelStateListener:Lcom/transsion/camera/app/ui/ModeVerticalScroll$IPanelStateListener;

    invoke-direct {v3, p1, v4}, Lcom/transsion/camera/app/ui/ModeVerticalScroll$SpreadingAnimationListener;-><init>(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;Lcom/transsion/camera/app/ui/ModeVerticalScroll$IPanelStateListener;)V

    invoke-direct {v2, v3}, Lcom/transsion/camera/app/ui/ModeVerticalScroll$AnimatorTotalListener;-><init>(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 216
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 217
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->startVibrator()V

    .line 218
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelStateListener:Lcom/transsion/camera/app/ui/ModeVerticalScroll$IPanelStateListener;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/ModeVerticalScroll$IPanelStateListener;->onPanelSpreadStart()V

    .line 220
    new-instance p1, Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    const-string v0, "key_camera_guide_usage"

    const/4 v2, 0x2

    if-eqz p2, :cond_2

    .line 223
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p2

    const-string v3, "0"

    .line 222
    invoke-virtual {p1, v0, v3, p2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-le p1, v2, :cond_0

    return-void

    .line 227
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelHintView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 228
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePanelLayout:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelHintView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mHintMargin:I

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mMaxShakeHeight:F

    float-to-int p2, p2

    sub-int/2addr p1, p2

    .line 230
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v3, -0x2

    invoke-direct {p2, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 232
    invoke-virtual {p2, v1, p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 233
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelHintView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelHintView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 235
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelHintView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->createSpreadAnimation(Landroid/view/View;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/AnimatorSet;

    move-result-object p1

    .line 236
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 238
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModeMaskView:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 239
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 240
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModeMaskView:Landroid/view/View;

    const/16 p2, 0x12c

    new-array v0, v2, [F

    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->createObjectAnimator(Ljava/lang/Object;Ljava/lang/String;I[F)Landroid/animation/Animator;

    move-result-object p1

    .line 242
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mDefaultInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 243
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 246
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelHintView:Landroid/view/View;

    if-eqz p0, :cond_3

    const/16 p2, 0x8

    .line 247
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 250
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p2

    .line 249
    invoke-virtual {p1, v0, p0, p2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_4
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
    .end array-data
.end method

.method public startSpreadingBackAnimation(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;)V
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 256
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->updateWideCameraAlpha(FZ)V

    .line 258
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->currentModePickerHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->originModePickerHeight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mMaxShakeHeight:F

    div-float/2addr v0, v2

    const/high16 v2, 0x43960000    # 300.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    if-nez v0, :cond_0

    .line 260
    invoke-interface {p1}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;->onAnimationEnd()V

    .line 261
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelStateListener:Lcom/transsion/camera/app/ui/ModeVerticalScroll$IPanelStateListener;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll$IPanelStateListener;->onPanelSpreadBack()V

    return-void

    .line 264
    :cond_0
    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePickerHeightUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 265
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->currentModePickerHeight()I

    move-result v4

    aput v4, v3, v1

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->originModePickerHeight()I

    move-result v4

    const/4 v5, 0x1

    aput v4, v3, v5

    .line 264
    invoke-direct {p0, v2, v0, v3}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->createValueAnimator(Landroid/animation/ValueAnimator$AnimatorUpdateListener;I[I)Landroid/animation/Animator;

    move-result-object v0

    .line 266
    new-instance v2, Lcom/transsion/camera/app/ui/ModeVerticalScroll$AnimatorTotalListener;

    invoke-direct {v2, p1}, Lcom/transsion/camera/app/ui/ModeVerticalScroll$AnimatorTotalListener;-><init>(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 268
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 269
    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mDefaultInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v2, v5, [Landroid/animation/Animator;

    aput-object v0, v2, v1

    .line 270
    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 271
    new-instance v0, Lcom/transsion/camera/app/ui/ModeVerticalScroll$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll$1;-><init>(Lcom/transsion/camera/app/ui/ModeVerticalScroll;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 277
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public stopPulling()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public stopPushing()Z
    .locals 0

    .line 379
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->reachShrinking()Z

    move-result p0

    return p0
.end method
