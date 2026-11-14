.class Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy;
.super Ljava/lang/Object;
.source "TopBarUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/TopBarUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAnimationStrategy"
.end annotation


# instance fields
.field private mBackgroundAnimator:Landroid/animation/AnimatorSet;

.field private mChildAnimators:[Landroid/animation/AnimatorSet;

.field private mPathInterpolator:Landroid/view/animation/PathInterpolator;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/TopBarUI;)V
    .locals 3

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 v0, 0x3e800000    # 0.25f

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1, v0, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy;Landroid/view/View;IZLandroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy;->handleBackgroundAnimation(Landroid/view/View;IZLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private handleBackgroundAnimation(Landroid/view/View;IZLandroid/animation/Animator$AnimatorListener;)V
    .locals 8

    if-nez p1, :cond_0

    .line 123
    invoke-static {}, Lcom/transsion/camera/app/ui/TopBarUI;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "popupBackground is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 127
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy;->mBackgroundAnimator:Landroid/animation/AnimatorSet;

    int-to-float v1, p2

    .line 128
    invoke-direct {p0, p1, p3, v1, v0}, Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy;->initPopupAnim(Landroid/view/View;ZFLandroid/animation/AnimatorSet;)V

    if-eqz p3, :cond_1

    .line 131
    iget-object v0, p0, Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy;->mBackgroundAnimator:Landroid/animation/AnimatorSet;

    new-instance v7, Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy$1;-><init>(Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy;Landroid/animation/Animator$AnimatorListener;Landroid/view/View;IZ)V

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 154
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy;->mBackgroundAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private handleChildViewAnimationImpl(Landroid/view/View;IZLandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;
    .locals 1

    .line 180
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    int-to-float p2, p2

    .line 181
    invoke-direct {p0, p1, p3, p2, v0}, Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy;->initPopupAnim(Landroid/view/View;ZFLandroid/animation/AnimatorSet;)V

    if-nez p3, :cond_0

    .line 183
    new-instance p1, Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy$2;

    invoke-direct {p1, p0, p4}, Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy$2;-><init>(Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy;Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 203
    :cond_0
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-object v0
.end method

.method private handleChildViewsAnimation(Landroid/view/ViewGroup;IZLandroid/animation/Animator$AnimatorListener;)V
    .locals 4

    if-nez p1, :cond_0

    .line 160
    invoke-static {}, Lcom/transsion/camera/app/ui/TopBarUI;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "popupContainer is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 164
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 166
    invoke-static {}, Lcom/transsion/camera/app/ui/TopBarUI;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "invalid child count: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 170
    :cond_1
    new-array v1, v0, [Landroid/animation/AnimatorSet;

    iput-object v1, p0, Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy;->mChildAnimators:[Landroid/animation/AnimatorSet;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 172
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 174
    iget-object v3, p0, Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy;->mChildAnimators:[Landroid/animation/AnimatorSet;

    invoke-direct {p0, v2, p2, p3, p4}, Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy;->handleChildViewAnimationImpl(Landroid/view/View;IZLandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;

    move-result-object v2

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private initPopupAnim(Landroid/view/View;ZFLandroid/animation/AnimatorSet;)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    neg-float v1, p3

    :goto_0
    if-eqz p2, :cond_1

    neg-float p3, p3

    goto :goto_1

    :cond_1
    move p3, v0

    :goto_1
    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p2, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v0

    :goto_2
    if-eqz p2, :cond_3

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    if-eqz p2, :cond_4

    const/16 p2, 0x96

    goto :goto_4

    :cond_4
    const/16 p2, 0xc8

    :goto_4
    const/4 v2, 0x2

    new-array v4, v2, [F

    const/4 v5, 0x0

    aput v1, v4, v5

    const/4 v1, 0x1

    aput p3, v4, v1

    const-string p3, "translationY"

    .line 215
    invoke-static {p1, p3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    new-array v2, v2, [F

    aput v3, v2, v5

    aput v0, v2, v1

    const-string v0, "alpha"

    .line 216
    invoke-static {p1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 217
    iget-object p0, p0, Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p4, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 218
    invoke-virtual {p4, p3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    int-to-long p0, p2

    .line 219
    invoke-virtual {p4, p0, p1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    return-void
.end method


# virtual methods
.method public cancelAnimation(Landroid/view/ViewGroup;Landroid/view/View;Z)V
    .locals 3

    .line 254
    iget-object p1, p0, Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy;->mBackgroundAnimator:Landroid/animation/AnimatorSet;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 255
    iget-object p1, p0, Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy;->mBackgroundAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 256
    iput-object v0, p0, Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy;->mBackgroundAnimator:Landroid/animation/AnimatorSet;

    .line 258
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy;->mChildAnimators:[Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_3

    array-length p1, p1

    if-lez p1, :cond_3

    const/4 p1, 0x0

    .line 259
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy;->mChildAnimators:[Landroid/animation/AnimatorSet;

    array-length v2, v1

    if-ge p1, v2, :cond_2

    .line 260
    aget-object v1, v1, p1

    if-eqz v1, :cond_1

    .line 261
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 262
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 265
    :cond_2
    iput-object v0, p0, Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy;->mChildAnimators:[Landroid/animation/AnimatorSet;

    :cond_3
    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    const/4 p0, 0x0

    .line 268
    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationY(F)V

    const/high16 p0, 0x3f800000    # 1.0f

    .line 269
    invoke-virtual {p2, p0}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    return-void
.end method

.method public isAnimationRunning()Z
    .locals 7

    .line 239
    iget-object v0, p0, Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy;->mBackgroundAnimator:Landroid/animation/AnimatorSet;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 242
    :goto_0
    iget-object v3, p0, Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy;->mChildAnimators:[Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_3

    array-length v3, v3

    if-lez v3, :cond_3

    move v3, v2

    move v4, v3

    .line 243
    :goto_1
    iget-object v5, p0, Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy;->mChildAnimators:[Landroid/animation/AnimatorSet;

    array-length v6, v5

    if-ge v3, v6, :cond_2

    .line 244
    aget-object v5, v5, v3

    if-eqz v5, :cond_1

    .line 245
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v1

    goto :goto_2

    :cond_1
    move v5, v2

    :goto_2
    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move v2, v4

    :cond_3
    or-int p0, v0, v2

    return p0
.end method

.method public startPopupAnimation(Landroid/view/ViewGroup;Landroid/view/View;ZLandroid/animation/Animator$AnimatorListener;)V
    .locals 2

    .line 114
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 116
    invoke-direct {p0, p2, v0, p3, p4}, Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy;->handleBackgroundAnimation(Landroid/view/View;IZLandroid/animation/Animator$AnimatorListener;)V

    .line 117
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy;->handleChildViewsAnimation(Landroid/view/ViewGroup;IZLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public startReplaceAnimation(Landroid/view/View;)V
    .locals 4

    if-nez p1, :cond_0

    .line 225
    invoke-static {}, Lcom/transsion/camera/app/ui/TopBarUI;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "popupContainer is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 229
    fill-array-data v1, :array_0

    const-string v2, "scaleX"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v2, v0, [F

    .line 230
    fill-array-data v2, :array_1

    const-string v3, "scaleY"

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object v2, v0, v1

    .line 231
    invoke-static {p1, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    .line 232
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 233
    iget-object p0, p0, Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 234
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
