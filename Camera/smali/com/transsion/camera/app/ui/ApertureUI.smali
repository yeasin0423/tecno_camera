.class public Lcom/transsion/camera/app/ui/ApertureUI;
.super Lcom/transsion/camera/app/ui/AbstractApertureUI;
.source "ApertureUI.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mApertureProgressView:Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;

.field private mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mRotateAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/ApertureUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/ApertureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .line 30
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractApertureUI;-><init>(I)V

    .line 25
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3e99999a    # 0.3f

    const/4 v1, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ApertureUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/ui/ApertureUI;)Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ApertureUI;->mApertureProgressView:Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;

    return-object p0
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 19
    sget-object v0, Lcom/transsion/camera/app/ui/ApertureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method private stopSwitchCameraAnim()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ApertureUI;->mApertureProgressView:Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;->stopDrawAnim()V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ApertureUI;->mRotateAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ApertureUI;->mRotateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 99
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ApertureUI;->mRotateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ApertureUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ApertureUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 103
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ApertureUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    return-void
.end method


# virtual methods
.method inflateApertureProgressView()V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractApertureUI;->mApertureRootView:Landroid/view/View;

    const v1, 0x7f09004d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ApertureUI;->mApertureProgressView:Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;

    return-void
.end method

.method inflateApertureSelfTimerView()V
    .locals 0

    return-void
.end method

.method inflateDoubleApertureView()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractApertureUI;->mApertureRootView:Landroid/view/View;

    const v1, 0x7f0900b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/opensource/svgaplayer/SVGAImageView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractApertureUI;->mDoubleApertureProgressView:Lcom/opensource/svgaplayer/SVGAImageView;

    .line 41
    new-instance v0, Lcom/opensource/svgaplayer/SVGAParser;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractApertureUI;->mDoubleApertureProgressView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/opensource/svgaplayer/SVGAParser;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractApertureUI;->mSVGAParser:Lcom/opensource/svgaplayer/SVGAParser;

    return-void
.end method

.method public startSwitchCameraAnim(Z)V
    .locals 5

    .line 46
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractApertureUI;->mApertureRootView:Landroid/view/View;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 51
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractApertureUI;->mApertureType:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 76
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractApertureUI;->mSVGAParser:Lcom/opensource/svgaplayer/SVGAParser;

    new-instance v0, Lcom/transsion/camera/app/ui/ApertureUI$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/ApertureUI$2;-><init>(Lcom/transsion/camera/app/ui/ApertureUI;)V

    const-string p0, "double_aperture_anim.svga"

    invoke-virtual {p1, p0, v0}, Lcom/opensource/svgaplayer/SVGAParser;->parse(Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V

    goto :goto_0

    .line 53
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ApertureUI;->mApertureProgressView:Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 55
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ApertureUI;->stopSwitchCameraAnim()V

    new-array p1, v1, [F

    .line 56
    fill-array-data p1, :array_0

    const-string v3, "alpha"

    invoke-static {v3, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 57
    iget-object v3, p0, Lcom/transsion/camera/app/ui/ApertureUI;->mApertureProgressView:Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;

    new-array v4, v2, [Landroid/animation/PropertyValuesHolder;

    aput-object p1, v4, v0

    invoke-static {v3, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ApertureUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 58
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 59
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ApertureUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x32

    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 60
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ApertureUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    new-array p1, v1, [F

    .line 62
    fill-array-data p1, :array_1

    const-string v1, "rotation"

    invoke-static {v1, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 63
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ApertureUI;->mApertureProgressView:Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    aput-object p1, v2, v0

    invoke-static {v1, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ApertureUI;->mRotateAnimator:Landroid/animation/ValueAnimator;

    .line 64
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ApertureUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 65
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ApertureUI;->mRotateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 66
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ApertureUI;->mRotateAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x1c2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 67
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ApertureUI;->mRotateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 68
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ApertureUI;->mRotateAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/transsion/camera/app/ui/ApertureUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/ApertureUI$1;-><init>(Lcom/transsion/camera/app/ui/ApertureUI;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method
