.class public Lcom/transsion/camera/app/ui/GuidePagerItemFragment;
.super Landroid/app/Fragment;
.source "GuidePagerItemFragment.java"


# instance fields
.field private mIndex:I

.field private mLayoutId:I

.field private final mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mRoot:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 30
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 20
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method private createAlphaAnim(Landroid/view/View;II)Landroid/animation/ValueAnimator;
    .locals 1

    const/4 p0, 0x2

    new-array p0, p0, [F

    int-to-float p2, p2

    const/4 v0, 0x0

    aput p2, p0, v0

    int-to-float p2, p3

    const/4 p3, 0x1

    aput p2, p0, p3

    const-string p2, "alpha"

    .line 113
    invoke-static {p1, p2, p0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 p1, 0x12c

    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method private createChildEnterAnim(Landroid/view/View;I)Landroid/animation/AnimatorSet;
    .locals 6

    .line 86
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 88
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/16 v2, 0x28

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;I)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->createTranslateAnim(Landroid/view/View;II)Landroid/animation/ValueAnimator;

    move-result-object v1

    const/4 v3, 0x1

    .line 89
    invoke-direct {p0, p1, v2, v3}, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->createAlphaAnim(Landroid/view/View;II)Landroid/animation/ValueAnimator;

    move-result-object p1

    int-to-long v4, p2

    .line 91
    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    const/4 p2, 0x2

    new-array p2, p2, [Landroid/animation/Animator;

    aput-object v1, p2, v2

    aput-object p1, p2, v3

    .line 92
    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 93
    iget-object p0, p0, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method private createChildExitAnim(Landroid/view/View;I)Landroid/animation/AnimatorSet;
    .locals 4

    .line 98
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 100
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/16 v2, 0x28

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;I)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1}, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->createTranslateAnim(Landroid/view/View;II)Landroid/animation/ValueAnimator;

    move-result-object v1

    const/4 v3, 0x1

    .line 101
    invoke-direct {p0, p1, v3, v2}, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->createAlphaAnim(Landroid/view/View;II)Landroid/animation/ValueAnimator;

    move-result-object p0

    int-to-long p1, p2

    .line 103
    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    const/4 p1, 0x2

    new-array p1, p1, [Landroid/animation/Animator;

    aput-object v1, p1, v2

    aput-object p0, p1, v3

    .line 104
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0
.end method

.method private createTranslateAnim(Landroid/view/View;II)Landroid/animation/ValueAnimator;
    .locals 1

    const/4 p0, 0x2

    new-array p0, p0, [F

    int-to-float p2, p2

    const/4 v0, 0x0

    aput p2, p0, v0

    int-to-float p2, p3

    const/4 p3, 0x1

    aput p2, p0, p3

    const-string p2, "translationY"

    .line 109
    invoke-static {p1, p2, p0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 p1, 0x12c

    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(II)Lcom/transsion/camera/app/ui/GuidePagerItemFragment;
    .locals 3

    .line 34
    new-instance v0, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;-><init>()V

    .line 35
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "layoutId"

    .line 36
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "index"

    .line 37
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 38
    invoke-virtual {v0, v1}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 44
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "layoutId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->mLayoutId:I

    .line 47
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->mIndex:I

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 54
    iget p3, p0, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->mLayoutId:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->mRoot:Landroid/view/View;

    .line 56
    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->mIndex:I

    if-nez p1, :cond_1

    .line 57
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 58
    :goto_0
    iget-object p2, p0, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->mRoot:Landroid/view/View;

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ge v0, p2, :cond_0

    .line 59
    iget-object p2, p0, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->mRoot:Landroid/view/View;

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x0

    .line 60
    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    mul-int/lit8 p3, v0, 0x64

    .line 61
    invoke-direct {p0, p2, p3}, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->createChildEnterAnim(Landroid/view/View;I)Landroid/animation/AnimatorSet;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_0
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 64
    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 65
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    .line 67
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->mRoot:Landroid/view/View;

    return-object p0
.end method

.method public startExitAnim(Landroid/animation/Animator$AnimatorListener;)V
    .locals 4

    .line 71
    iget-object v0, p0, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->mRoot:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 73
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->mRoot:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->mRoot:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 75
    iget-object v3, p0, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->mRoot:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v1

    mul-int/lit8 v3, v3, 0x64

    invoke-direct {p0, v2, v3}, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->createChildExitAnim(Landroid/view/View;I)Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    :cond_0
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 78
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 79
    iget-object p0, p0, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 80
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 81
    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    return-void
.end method
