.class public Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;
.super Ljava/lang/Object;
.source "ExposureAnimator.java"

# interfaces
.implements Lcom/transsion/camera/ui/setting/exposure/IExposureAnimator;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mDarkenAnimator:Landroid/animation/Animator;

.field private mPathInterpolator:Landroid/view/animation/PathInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method private startShowAnimateImpl(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_0

    .line 85
    sget-object p0, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "drawable is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 88
    :cond_0
    invoke-static {p1}, Lcom/transsion/camera/utils/AnimationUtils;->stopVectorAnimation(Landroid/graphics/drawable/Drawable;)Z

    const/4 p0, 0x0

    .line 89
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/AnimationUtils;->startVectorAnimation(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    return-void
.end method


# virtual methods
.method public cancelDarkenAnimate(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    .line 121
    sget-object p0, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "view is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;->mDarkenAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 127
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;->mDarkenAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;->mDarkenAnimator:Landroid/animation/Animator;

    :cond_1
    const/high16 p0, 0x3f800000    # 1.0f

    .line 130
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public startDarkenAnimate(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    .line 95
    sget-object p0, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "view is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 99
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;->cancelDarkenAnimate(Landroid/view/View;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 101
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;->mDarkenAnimator:Landroid/animation/Animator;

    const-wide/16 v1, 0x1

    .line 102
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 103
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;->mDarkenAnimator:Landroid/animation/Animator;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 104
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;->mDarkenAnimator:Landroid/animation/Animator;

    new-instance v1, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator$1;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator$1;-><init>(Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 114
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;->mDarkenAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public startShowAnimate(Landroid/view/View;)V
    .locals 5

    if-nez p1, :cond_0

    .line 53
    sget-object p0, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "view is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    const v0, 0x7f0900be

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;->startShowAnimateImpl(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 62
    fill-array-data v2, :array_0

    const-string v3, "scaleX"

    .line 63
    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    new-array v3, v1, [F

    .line 64
    fill-array-data v3, :array_1

    const-string v4, "scaleY"

    .line 65
    invoke-static {v4, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object v3, v1, v2

    .line 67
    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 69
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 70
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    const v0, 0x7f0900bf

    .line 73
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    if-eqz v0, :cond_2

    .line 75
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;->startShowAnimateImpl(Landroid/graphics/drawable/Drawable;)V

    .line 79
    :cond_2
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;->startDarkenAnimate(Landroid/view/View;)V

    return-void

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data
.end method
