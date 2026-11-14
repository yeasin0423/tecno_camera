.class public Lcom/transsion/camera/app/ui/GuidePagerRootFragment;
.super Landroid/app/Fragment;
.source "GuidePagerRootFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/GuidePagerRootFragment$PagerListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/transsion/camera/app/ui/GuidePagerAdapter;

.field private mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private mDots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mDotsLayout:Landroid/widget/LinearLayout;

.field private mGuidePager:Landroidx/viewpager/widget/ViewPager;

.field private mPagerIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/GuidePagerRootFragment;)Ljava/util/List;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mPagerIds:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/GuidePagerRootFragment;)Ljava/util/List;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mDots:Ljava/util/List;

    return-object p0
.end method

.method private createDotView()Landroid/widget/ImageView;
    .locals 5

    .line 100
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 101
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;I)I

    move-result v2

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 102
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 103
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, v3}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;I)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 104
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p0, 0x7f0803bc

    .line 105
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object v0
.end method

.method private initDots()V
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mPagerIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 86
    iget-object v0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mDotsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mDots:Ljava/util/List;

    move v0, v1

    .line 88
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mPagerIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->createDotView()Landroid/widget/ImageView;

    move-result-object v2

    .line 90
    iget-object v3, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mDots:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v3, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mDotsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mDots:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    const v0, 0x7f0803bb

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 95
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mDotsLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private initViewPager()V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mPagerIds:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 75
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mPagerIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 76
    iget-object v2, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mPagerIds:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2, v1}, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->newInstance(II)Lcom/transsion/camera/app/ui/GuidePagerItemFragment;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    :cond_0
    new-instance v1, Lcom/transsion/camera/app/ui/GuidePagerAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/app/ui/GuidePagerAdapter;-><init>(Landroid/app/FragmentManager;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mAdapter:Lcom/transsion/camera/app/ui/GuidePagerAdapter;

    .line 79
    iget-object v0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mGuidePager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mGuidePager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/transsion/camera/app/ui/GuidePagerRootFragment$PagerListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment$PagerListener;-><init>(Lcom/transsion/camera/app/ui/GuidePagerRootFragment;Lcom/transsion/camera/app/ui/GuidePagerRootFragment$1;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method private synthetic lambda$onCreateView$0(Landroid/view/View;)V
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->exitWithFadeOut()V

    return-void
.end method

.method public static newInstance(Ljava/util/List;)Lcom/transsion/camera/app/ui/GuidePagerRootFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/transsion/camera/app/ui/GuidePagerRootFragment;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;-><init>()V

    .line 37
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 38
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p0, "param1"

    invoke-virtual {v1, p0, v2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 39
    invoke-virtual {v0, v1}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public exit()V
    .locals 2

    .line 132
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "guide_pager_root"

    invoke-virtual {p0, v1, v0}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public exitWithFadeOut()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mAdapter:Lcom/transsion/camera/app/ui/GuidePagerAdapter;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mGuidePager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/GuidePagerAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;

    .line 111
    new-instance v1, Lcom/transsion/camera/app/ui/GuidePagerRootFragment$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment$1;-><init>(Lcom/transsion/camera/app/ui/GuidePagerRootFragment;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->startExitAnim(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public synthetic lambda$onCreateView$0$GuidePagerRootFragment(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->lambda$onCreateView$0(Landroid/view/View;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 45
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "param1"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mPagerIds:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0049

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090144

    .line 54
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mDotsLayout:Landroid/widget/LinearLayout;

    const p2, 0x7f09018c

    .line 55
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/viewpager/widget/ViewPager;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mGuidePager:Landroidx/viewpager/widget/ViewPager;

    .line 56
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->initViewPager()V

    .line 57
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->initDots()V

    const p2, 0x7f090133

    .line 58
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/transsion/camera/app/ui/-$$Lambda$GuidePagerRootFragment$csOr3BPhw3LkTzzRypZtHFNRHro;

    invoke-direct {p3, p0}, Lcom/transsion/camera/app/ui/-$$Lambda$GuidePagerRootFragment$csOr3BPhw3LkTzzRypZtHFNRHro;-><init>(Lcom/transsion/camera/app/ui/GuidePagerRootFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 66
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 67
    iget-object p0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz p0, :cond_0

    const/16 v0, 0x4e

    .line 68
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_0
    return-void
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method
