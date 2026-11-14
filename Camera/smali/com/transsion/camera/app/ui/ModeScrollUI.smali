.class public Lcom/transsion/camera/app/ui/ModeScrollUI;
.super Ljava/lang/Object;
.source "ModeScrollUI.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/IModeScrollUI;
.implements Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/ModeScrollUI$ModeViewAnimatorListener;,
        Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final MAX_TAB_MODE_COUNT:I

.field private final mBottomHeight:I

.field private mContext:Landroid/content/Context;

.field private mCurrentModeView:Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;

.field private mFadeAnimatorPending:Z

.field private mFadeAnimatorSet:Landroid/animation/AnimatorSet;

.field private mInScrolling:Z

.field private mListener:Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;

.field private final mModeHorizontalScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;

.field private mModeUIItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/mode/ModeUIItem;",
            ">;"
        }
    .end annotation
.end field

.field private mNextModeView:Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;

.field private final mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mRootView:Landroid/view/View;

.field private mScrollAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mScrollAnimatorSet:Landroid/animation/AnimatorSet;

.field private mScrollModeIndex:I

.field private mScrollUIVisible:Z

.field private mSelectedModeName:Ljava/lang/String;

.field private final mTopBarHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ModeScrollUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/ModeScrollUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;Lcom/transsion/camera/app/ui/MainScreenOriginPosition;Landroid/content/Context;)V
    .locals 5

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mFadeAnimatorPending:Z

    .line 33
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mFadeAnimatorSet:Landroid/animation/AnimatorSet;

    .line 34
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollAnimatorSet:Landroid/animation/AnimatorSet;

    .line 35
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3e800000    # 0.25f

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mModeUIItems:Ljava/util/List;

    const/4 v1, -0x1

    .line 40
    iput v1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollModeIndex:I

    .line 50
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mInScrolling:Z

    .line 219
    new-instance v0, Lcom/transsion/camera/app/ui/ModeScrollUI$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/ModeScrollUI$3;-><init>(Lcom/transsion/camera/app/ui/ModeScrollUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 53
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mModeHorizontalScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;

    .line 54
    iput-object p3, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mContext:Landroid/content/Context;

    .line 55
    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->getTopBarHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mTopBarHeight:I

    .line 56
    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->getBottomHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mBottomHeight:I

    .line 57
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0a0018

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->MAX_TAB_MODE_COUNT:I

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/ModeScrollUI;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mInScrolling:Z

    return p0
.end method

.method static synthetic access$200()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 28
    sget-object v0, Lcom/transsion/camera/app/ui/ModeScrollUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/ui/ModeScrollUI;)Landroid/view/View;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/ui/ModeScrollUI;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mFadeAnimatorPending:Z

    return p0
.end method

.method static synthetic access$402(Lcom/transsion/camera/app/ui/ModeScrollUI;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mFadeAnimatorPending:Z

    return p1
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/ui/ModeScrollUI;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mFadeAnimatorSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method private inScrollAnimation()Z
    .locals 0

    .line 264
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$setModeList$0(Lcom/transsion/camera/app/common/FeatureResource;)V
    .locals 7

    .line 88
    new-instance v6, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    iget-object v1, p1, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    iget-object v2, p1, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    iget v3, p1, Lcom/transsion/camera/app/common/FeatureResource;->mSelectedIconId:I

    iget v4, p1, Lcom/transsion/camera/app/common/FeatureResource;->mUnSelectedIconId:I

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;-><init>(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mModeUIItems:Ljava/util/List;

    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private modeChanged(I)Z
    .locals 0

    .line 268
    iget p0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollModeIndex:I

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private modeIndex(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 245
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mModeUIItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 246
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mModeUIItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    iget-object v1, v1, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->mName:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private modeItem(I)Lcom/transsion/camera/app/ui/mode/ModeUIItem;
    .locals 0

    .line 241
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mModeUIItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    return-object p0
.end method

.method private scrollStarted(I)V
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mListener:Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;

    if-eqz p0, :cond_0

    .line 154
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;->scrollStarted(I)V

    :cond_0
    return-void
.end method

.method private scrollStopped(I)V
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mListener:Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;

    if-eqz p0, :cond_0

    .line 160
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;->scrollStopped(I)V

    :cond_0
    return-void
.end method

.method private scrollTo(I)V
    .locals 1

    .line 254
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeScrollUI;->inScrollAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 257
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModeScrollUI;->modeChanged(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    iget v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollModeIndex:I

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/ModeScrollUI;->slideMode(II)V

    .line 259
    iput p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollModeIndex:I

    :cond_1
    return-void
.end method

.method private showMode(I)V
    .locals 4

    .line 181
    sget-object v0, Lcom/transsion/camera/app/ui/ModeScrollUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "scrollUIAnimator showMode"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 182
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeScrollUI;->inScrollAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    sget-object p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "scrollUIAnimator showMode inScrolling return now"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mFadeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 187
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollUIVisible:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 188
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollUIVisible:Z

    .line 189
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModeScrollUI;->scrollStarted(I)V

    .line 190
    sget-object v0, Lcom/transsion/camera/app/ui/ModeScrollUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "scrollUIAnimator showMode set mRootView visible"

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mNextModeView:Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;->hide()V

    .line 194
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mCurrentModeView:Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModeScrollUI;->modeItem(I)Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;->show(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    .line 195
    new-instance p1, Lcom/transsion/camera/app/ui/ModeScrollUI$2;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/ModeScrollUI$2;-><init>(Lcom/transsion/camera/app/ui/ModeScrollUI;)V

    new-array v0, v2, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mCurrentModeView:Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;->createFadeInAnimator()Landroid/animation/Animator;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/ModeScrollUI;->startFadeAnimation(Landroid/animation/Animator$AnimatorListener;[Landroid/animation/Animator;)V

    return-void
.end method

.method private slideMode(II)V
    .locals 4

    .line 199
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mCurrentModeView:Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mNextModeView:Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;

    if-nez v0, :cond_0

    goto :goto_1

    .line 202
    :cond_0
    sget-object v0, Lcom/transsion/camera/app/ui/ModeScrollUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "scrollUIAnimator slideMode start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 203
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollUIVisible:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 204
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollUIVisible:Z

    .line 205
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModeScrollUI;->scrollStarted(I)V

    .line 206
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mFadeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 209
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mNextModeView:Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mModeUIItems:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;->show(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    .line 210
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mCurrentModeView:Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mModeUIItems:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;->show(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    const/4 v0, 0x2

    if-ge p1, p2, :cond_2

    .line 212
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    new-array p2, v0, [Landroid/animation/Animator;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mNextModeView:Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;->createRightEnterAnimator()Landroid/animation/Animator;

    move-result-object v0

    aput-object v0, p2, v1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mNextModeView:Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;->createFadeInAnimator()Landroid/animation/Animator;

    move-result-object v0

    aput-object v0, p2, v2

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/ModeScrollUI;->startScrollAnimation(Landroid/animation/Animator$AnimatorListener;[Landroid/animation/Animator;)V

    goto :goto_0

    .line 214
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    new-array p2, v0, [Landroid/animation/Animator;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mNextModeView:Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;->createLeftEnterAnimator()Landroid/animation/Animator;

    move-result-object v0

    aput-object v0, p2, v1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mNextModeView:Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;->createFadeInAnimator()Landroid/animation/Animator;

    move-result-object v0

    aput-object v0, p2, v2

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/ModeScrollUI;->startScrollAnimation(Landroid/animation/Animator$AnimatorListener;[Landroid/animation/Animator;)V

    .line 216
    :goto_0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeScrollUI;->startVibrator()V

    :cond_3
    :goto_1
    return-void
.end method

.method private varargs startFadeAnimation(Landroid/animation/Animator$AnimatorListener;[Landroid/animation/Animator;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mFadeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 131
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mFadeAnimatorSet:Landroid/animation/AnimatorSet;

    .line 132
    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 133
    iget-object p2, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mFadeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 134
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mFadeAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 135
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeScrollUI;->inScrollAnimation()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 136
    sget-object p1, Lcom/transsion/camera/app/ui/ModeScrollUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "scrollUIAnimator startFadeAnimation pending"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 137
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mFadeAnimatorPending:Z

    goto :goto_0

    .line 139
    :cond_0
    sget-object p1, Lcom/transsion/camera/app/ui/ModeScrollUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "scrollUIAnimator startFadeAnimation now"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 140
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mFadeAnimatorPending:Z

    .line 141
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mFadeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :goto_0
    return-void
.end method

.method private varargs startScrollAnimation(Landroid/animation/Animator$AnimatorListener;[Landroid/animation/Animator;)V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 233
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollAnimatorSet:Landroid/animation/AnimatorSet;

    .line 234
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 235
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 236
    iget-object p2, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 237
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private startVibrator()V
    .locals 3

    .line 405
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mContext:Landroid/content/Context;

    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    const-wide/16 v0, 0x32

    const/4 v2, -0x1

    .line 406
    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 408
    invoke-virtual {p0, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_0
    return-void
.end method

.method private validModeIndex(I)I
    .locals 0

    .line 272
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mModeUIItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private validScrollModeIndex(I)I
    .locals 0

    .line 276
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModeScrollUI;->validModeIndex(I)I

    move-result p1

    iget p0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->MAX_TAB_MODE_COUNT:I

    add-int/lit8 p0, p0, -0x1

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public canScrollToNext()Z
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mSelectedModeName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ModeScrollUI;->modeIndex(Ljava/lang/String;)I

    move-result v0

    iget p0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->MAX_TAB_MODE_COUNT:I

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    if-ge v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public canScrollToPrevious()Z
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mSelectedModeName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ModeScrollUI;->modeIndex(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canScrolling()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public hide(Z)V
    .locals 4

    .line 106
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mCurrentModeView:Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mNextModeView:Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mInScrolling:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollUIVisible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 110
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollUIVisible:Z

    .line 111
    iget v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollModeIndex:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ModeScrollUI;->scrollStopped(I)V

    .line 113
    :cond_1
    sget-object v0, Lcom/transsion/camera/app/ui/ModeScrollUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "scrollUIAnimator hide start"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mNextModeView:Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;->createFadeOutAnimator()Landroid/animation/Animator;

    move-result-object v0

    if-nez p1, :cond_2

    const-wide/16 v2, 0x0

    .line 116
    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 118
    :cond_2
    new-instance v2, Lcom/transsion/camera/app/ui/ModeScrollUI$1;

    invoke-direct {v2, p0, p1}, Lcom/transsion/camera/app/ui/ModeScrollUI$1;-><init>(Lcom/transsion/camera/app/ui/ModeScrollUI;Z)V

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/animation/Animator;

    aput-object v0, p1, v1

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/ui/ModeScrollUI;->startFadeAnimation(Landroid/animation/Animator$AnimatorListener;[Landroid/animation/Animator;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 62
    iput-object p2, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mRootView:Landroid/view/View;

    const v0, 0x7f0c0071

    const/4 v1, 0x1

    .line 63
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 65
    iget v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mTopBarHeight:I

    iget v1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mBottomHeight:I

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 66
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 69
    new-instance p1, Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mRootView:Landroid/view/View;

    const v0, 0x7f09009a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mRootView:Landroid/view/View;

    const v1, 0x7f090099

    .line 70
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mRootView:Landroid/view/View;

    const v2, 0x7f090095

    .line 71
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mRootView:Landroid/view/View;

    const v3, 0x7f090098

    .line 72
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;-><init>(Landroid/view/View;Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mCurrentModeView:Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;

    .line 73
    new-instance p1, Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mRootView:Landroid/view/View;

    const v0, 0x7f090176

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mRootView:Landroid/view/View;

    const v1, 0x7f090175

    .line 74
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mRootView:Landroid/view/View;

    const v2, 0x7f090173

    .line 75
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mRootView:Landroid/view/View;

    const v3, 0x7f090174

    .line 76
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;-><init>(Landroid/view/View;Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mNextModeView:Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;

    .line 77
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mRootView:Landroid/view/View;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 78
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mCurrentModeView:Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;->hide()V

    .line 79
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mNextModeView:Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;->hide()V

    .line 80
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mModeHorizontalScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->setModeIconLayout(Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;)V

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public synthetic lambda$setModeList$0$ModeScrollUI(Lcom/transsion/camera/app/common/FeatureResource;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModeScrollUI;->lambda$setModeList$0(Lcom/transsion/camera/app/common/FeatureResource;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mCurrentModeView:Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mNextModeView:Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;

    if-eqz v1, :cond_0

    .line 167
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;->setOrientation(I)V

    .line 168
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mNextModeView:Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;->setOrientation(I)V

    :cond_0
    return-void
.end method

.method public scrollToNext()V
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mSelectedModeName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ModeScrollUI;->modeIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollModeIndex:I

    .line 303
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mSelectedModeName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ModeScrollUI;->modeIndex(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ModeScrollUI;->validScrollModeIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ModeScrollUI;->scrollTo(I)V

    return-void
.end method

.method public scrollToPrevious()V
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mSelectedModeName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ModeScrollUI;->modeIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollModeIndex:I

    .line 297
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mSelectedModeName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ModeScrollUI;->modeIndex(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ModeScrollUI;->validScrollModeIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ModeScrollUI;->scrollTo(I)V

    return-void
.end method

.method public scrolling(FF)V
    .locals 0

    const/4 p1, 0x0

    .line 314
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/ModeScrollUI;->hide(Z)V

    .line 315
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mSelectedModeName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModeScrollUI;->modeIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollModeIndex:I

    const/4 p1, 0x1

    .line 316
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mInScrolling:Z

    return-void
.end method

.method public setModeList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;)V"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mModeUIItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 87
    new-instance v0, Lcom/transsion/camera/app/ui/-$$Lambda$ModeScrollUI$2Ov0pz1sXmMdbTwBdxHX4eY999Y;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/-$$Lambda$ModeScrollUI$2Ov0pz1sXmMdbTwBdxHX4eY999Y;-><init>(Lcom/transsion/camera/app/ui/ModeScrollUI;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setScrollListener(Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mListener:Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;

    return-void
.end method

.method public showMode(Ljava/lang/String;)V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mSelectedModeName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 177
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModeScrollUI;->modeIndex(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModeScrollUI;->showMode(I)V

    return-void
.end method

.method public stopScroll()V
    .locals 2

    const/4 v0, 0x0

    .line 321
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mInScrolling:Z

    .line 322
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mModeUIItems:Ljava/util/List;

    iget v1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollModeIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->mName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/ModeScrollUI;->updateSelectedMode(Ljava/lang/String;)V

    return-void
.end method

.method public updateSelectedMode(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mSelectedModeName:Ljava/lang/String;

    return-void
.end method
