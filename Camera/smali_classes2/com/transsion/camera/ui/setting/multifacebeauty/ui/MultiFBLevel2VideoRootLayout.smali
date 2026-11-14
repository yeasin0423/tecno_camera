.class public Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;
.super Landroid/widget/RelativeLayout;
.source "MultiFBLevel2VideoRootLayout.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final mLevel2Items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/camera/ui/setting/multifacebeauty/data/MultiFaceBeautyItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final mLevel3Items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/camera/ui/setting/multifacebeauty/data/MultiFaceBeautyItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private DURATION:I

.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private mConfigNotShowGuide:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentEntryValue:Ljava/lang/String;

.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mEntryFeatureCount:I

.field private mFBItemOnClickListener:Lcom/transsion/camera/ui/setting/multifacebeauty/listener/FBItemOnClickListener;

.field private mFeatureAdapter:Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/FeatureAdapter;

.field private mFeatureDotView:Lcom/opensource/svgaplayer/SVGAImageView;

.field private mFeatureOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private mFeatureScrollThreshold:I

.field private mHanlder:Landroid/os/Handler;

.field private mIsRVLevel2Visible:Z

.field private mIsRVLevel3Visible:Z

.field private mLeftScrollInAnim:Landroid/view/animation/Animation;

.field private mLevel2SelectedPosition:I

.field private mListener:Lcom/transsion/camera/ui/setting/multifacebeauty/listener/FBItemOnClickListener;

.field private mNeedToShowGuide:Z

.field private mPresetAdapter:Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/PresetAdapter;

.field private mPresetDotView:Lcom/opensource/svgaplayer/SVGAImageView;

.field private mPresetOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private mPresetScrollThreshold:I

.field private mRecyclerViewLevel2:Landroidx/recyclerview/widget/RecyclerView;

.field private mRecyclerViewLevel3:Landroidx/recyclerview/widget/RecyclerView;

.field private mRightScrollInAnim:Landroid/view/animation/Animation;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mTranslateAnimator:Landroid/animation/ValueAnimator;

.field private mTranslateDistance:F

.field private mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;

    .line 44
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mLevel2Items:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mLevel3Items:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 104
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "ai"

    .line 60
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mCurrentEntryValue:Ljava/lang/String;

    const/16 v0, 0x12c

    .line 65
    iput v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->DURATION:I

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mIsRVLevel2Visible:Z

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mIsRVLevel3Visible:Z

    .line 75
    iput v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mEntryFeatureCount:I

    const/4 v0, -0x1

    .line 78
    iput v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mLevel2SelectedPosition:I

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    .line 118
    new-instance v0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout$1;-><init>(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mPresetOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 139
    new-instance v0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout$2;-><init>(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mFeatureOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 269
    new-instance v0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout$3;-><init>(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mListener:Lcom/transsion/camera/ui/setting/multifacebeauty/listener/FBItemOnClickListener;

    .line 324
    new-instance v0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout$4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout$4;-><init>(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 352
    new-instance v0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout$5;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout$5;-><init>(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 366
    new-instance v0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout$6;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout$6;-><init>(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 415
    new-instance v0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout$7;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout$7;-><init>(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mHanlder:Landroid/os/Handler;

    .line 105
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 109
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "ai"

    .line 60
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mCurrentEntryValue:Ljava/lang/String;

    const/16 p2, 0x12c

    .line 65
    iput p2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->DURATION:I

    const/4 p2, 0x1

    .line 69
    iput-boolean p2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mIsRVLevel2Visible:Z

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mIsRVLevel3Visible:Z

    .line 75
    iput v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mEntryFeatureCount:I

    const/4 v0, -0x1

    .line 78
    iput v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mLevel2SelectedPosition:I

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    .line 118
    new-instance v0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout$1;-><init>(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mPresetOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 139
    new-instance v0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout$2;-><init>(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mFeatureOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 269
    new-instance v0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout$3;-><init>(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mListener:Lcom/transsion/camera/ui/setting/multifacebeauty/listener/FBItemOnClickListener;

    .line 324
    new-instance v0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout$4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout$4;-><init>(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 352
    new-instance v0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout$5;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout$5;-><init>(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 366
    new-instance v0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout$6;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout$6;-><init>(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 415
    new-instance v0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout$7;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout$7;-><init>(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mHanlder:Landroid/os/Handler;

    .line 110
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mContext:Landroid/content/Context;

    const v0, 0x7f010029

    .line 111
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mLeftScrollInAnim:Landroid/view/animation/Animation;

    const v0, 0x7f01002a

    .line 112
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mRightScrollInAnim:Landroid/view/animation/Animation;

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070213

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mPresetScrollThreshold:I

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070205

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mFeatureScrollThreshold:I

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f050039

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    xor-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mConfigNotShowGuide:Z

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mPresetScrollThreshold:I

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;)Lcom/transsion/camera/ui/setting/multifacebeauty/listener/FBItemOnClickListener;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mListener:Lcom/transsion/camera/ui/setting/multifacebeauty/listener/FBItemOnClickListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;)Lcom/transsion/camera/ui/setting/multifacebeauty/listener/FBItemOnClickListener;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mFBItemOnClickListener:Lcom/transsion/camera/ui/setting/multifacebeauty/listener/FBItemOnClickListener;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mRecyclerViewLevel2:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mIsRVLevel2Visible:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mIsRVLevel2Visible:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;)F
    .locals 0

    .line 42
    iget p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mTranslateDistance:F

    return p0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mIsRVLevel3Visible:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mIsRVLevel3Visible:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;Landroid/view/View;)Z
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->isOpaque(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;)Landroid/content/Context;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;)Lcom/transsion/camera/app/common/setting/StatusMonitor;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->hideFeatureDotView()V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mFeatureScrollThreshold:I

    return p0
.end method

.method static synthetic access$2000(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->hidePresetDotView()V

    return-void
.end method

.method static synthetic access$2100(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;)Landroid/os/Handler;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mHanlder:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->showPresetDotView()V

    return-void
.end method

.method static synthetic access$2300(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->showFeatureDotView()V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mRecyclerViewLevel3:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$400()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 42
    sget-object v0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$500(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->startSwitch()V

    return-void
.end method

.method static synthetic access$600(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->featureRvScrollIn()V

    return-void
.end method

.method static synthetic access$700(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;)Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/FeatureAdapter;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mFeatureAdapter:Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/FeatureAdapter;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->featureRvScrollOut()V

    return-void
.end method

.method static synthetic access$900(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;)Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/PresetAdapter;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mPresetAdapter:Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/PresetAdapter;

    return-object p0
.end method

.method private featureRvScrollIn()V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mRecyclerViewLevel2:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 161
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v1, "custom"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mRecyclerViewLevel3:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mRightScrollInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 166
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mConfigNotShowGuide:Z

    if-nez v0, :cond_1

    .line 167
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->handleDotViewForFeatureIn()V

    .line 168
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->handleGuideLogic()V

    :cond_1
    return-void
.end method

.method private featureRvScrollOut()V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mRecyclerViewLevel3:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mRecyclerViewLevel2:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mLeftScrollInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 175
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mConfigNotShowGuide:Z

    if-nez v0, :cond_0

    .line 176
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->handleDotViewForFeatureOut()V

    .line 177
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->handleGuideLogic()V

    :cond_0
    return-void
.end method

.method private handleDotViewForFeatureIn()V
    .locals 3

    .line 182
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->hidePresetDotView()V

    .line 183
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mNeedToShowGuide:Z

    if-nez v0, :cond_0

    return-void

    .line 186
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mHanlder:Landroid/os/Handler;

    const/4 v0, 0x1

    const-wide/16 v1, 0x5dc

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private handleDotViewForFeatureOut()V
    .locals 3

    .line 190
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->hideFeatureDotView()V

    .line 191
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mNeedToShowGuide:Z

    if-nez v0, :cond_0

    return-void

    .line 194
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mHanlder:Landroid/os/Handler;

    const/4 v0, 0x0

    const-wide/16 v1, 0x5dc

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private handleGuideLogic()V
    .locals 5

    .line 214
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mNeedToShowGuide:Z

    if-eqz v0, :cond_0

    .line 215
    iget v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mEntryFeatureCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mEntryFeatureCount:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 217
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_multi_face_not_show_guide"

    const-string v3, "1"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 220
    iput v4, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mEntryFeatureCount:I

    .line 221
    iput-boolean v4, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mNeedToShowGuide:Z

    :cond_0
    return-void
.end method

.method private hideFeatureDotView()V
    .locals 2

    .line 458
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mHanlder:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 459
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mFeatureDotView:Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mFeatureDotView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {p0, v1}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation(Z)V

    :cond_0
    return-void
.end method

.method private hidePresetDotView()V
    .locals 2

    .line 444
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mHanlder:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 445
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mPresetDotView:Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mPresetDotView:Lcom/opensource/svgaplayer/SVGAImageView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation(Z)V

    :cond_0
    return-void
.end method

.method private initAnimation()V
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 315
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 316
    iget v2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->DURATION:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 317
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 318
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 319
    iget v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mTranslateDistance:F

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    .line 320
    iget v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 321
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static initLevel2Data([Ljava/lang/String;[Landroid/graphics/drawable/Drawable;)V
    .locals 6

    .line 489
    sget-object v0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mLevel2Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 490
    :goto_0
    array-length v1, p0

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 492
    sget-object v1, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mLevel2Items:Ljava/util/ArrayList;

    new-instance v2, Lcom/transsion/camera/ui/setting/multifacebeauty/data/MultiFaceBeautyItem;

    const v3, 0x7f0c0089

    aget-object v4, p0, v0

    aget-object v5, p1, v0

    invoke-direct {v2, v3, v4, v5}, Lcom/transsion/camera/ui/setting/multifacebeauty/data/MultiFaceBeautyItem;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    if-ne v0, v1, :cond_1

    .line 494
    sget-object v1, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mLevel2Items:Ljava/util/ArrayList;

    new-instance v3, Lcom/transsion/camera/ui/setting/multifacebeauty/data/MultiFaceBeautyItem;

    const v4, 0x7f0c0082

    aget-object v5, p0, v0

    invoke-direct {v3, v4, v5, v2}, Lcom/transsion/camera/ui/setting/multifacebeauty/data/MultiFaceBeautyItem;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 497
    :cond_2
    sget-object p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mLevel2Items:Ljava/util/ArrayList;

    new-instance p1, Lcom/transsion/camera/ui/setting/multifacebeauty/data/MultiFaceBeautyItem;

    const v0, 0x7f0c0083

    const-string v1, "fake"

    invoke-direct {p1, v0, v1, v2}, Lcom/transsion/camera/ui/setting/multifacebeauty/data/MultiFaceBeautyItem;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static initLevel3Data([Ljava/lang/String;[Landroid/graphics/drawable/Drawable;)V
    .locals 6

    .line 501
    sget-object v0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mLevel3Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 502
    sget-object v0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mLevel3Items:Ljava/util/ArrayList;

    new-instance v1, Lcom/transsion/camera/ui/setting/multifacebeauty/data/MultiFaceBeautyItem;

    const v2, 0x7f0c0083

    const-string v3, "fake"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/transsion/camera/ui/setting/multifacebeauty/data/MultiFaceBeautyItem;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    sget-object v0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mLevel3Items:Ljava/util/ArrayList;

    new-instance v1, Lcom/transsion/camera/ui/setting/multifacebeauty/data/MultiFaceBeautyItem;

    const v2, 0x7f0c0084

    const-string v3, "feature"

    invoke-direct {v1, v2, v3, v4}, Lcom/transsion/camera/ui/setting/multifacebeauty/data/MultiFaceBeautyItem;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 504
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 505
    sget-object v1, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mLevel3Items:Ljava/util/ArrayList;

    new-instance v2, Lcom/transsion/camera/ui/setting/multifacebeauty/data/MultiFaceBeautyItem;

    const v3, 0x7f0c0089

    aget-object v4, p0, v0

    aget-object v5, p1, v0

    invoke-direct {v2, v3, v4, v5}, Lcom/transsion/camera/ui/setting/multifacebeauty/data/MultiFaceBeautyItem;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private intDotView()V
    .locals 1

    .line 307
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mConfigNotShowGuide:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f090197

    .line 310
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/opensource/svgaplayer/SVGAImageView;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mPresetDotView:Lcom/opensource/svgaplayer/SVGAImageView;

    const v0, 0x7f0900dc

    .line 311
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/opensource/svgaplayer/SVGAImageView;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mFeatureDotView:Lcom/opensource/svgaplayer/SVGAImageView;

    return-void
.end method

.method private isOpaque(Landroid/view/View;)Z
    .locals 0

    .line 478
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p0

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x3ca3d70a    # 0.02f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private showFeatureDotView()V
    .locals 1

    .line 451
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->hidePresetDotView()V

    .line 452
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mFeatureDotView:Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mNeedToShowGuide:Z

    if-eqz v0, :cond_0

    .line 453
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mFeatureDotView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->startAnimation()V

    :cond_0
    return-void
.end method

.method private showPresetDotView()V
    .locals 1

    .line 437
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->hideFeatureDotView()V

    .line 438
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mPresetDotView:Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mNeedToShowGuide:Z

    if-eqz v0, :cond_0

    .line 439
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mPresetDotView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->startAnimation()V

    :cond_0
    return-void
.end method

.method private startSwitch()V
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 412
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private updateGuideData()V
    .locals 4

    const/4 v0, 0x1

    .line 203
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mNeedToShowGuide:Z

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_multi_face_not_show_guide"

    const-string v3, "0"

    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 208
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mNeedToShowGuide:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public init()V
    .locals 4

    .line 236
    sget-object v0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const v0, 0x7f09016e

    .line 237
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mRecyclerViewLevel2:Landroidx/recyclerview/widget/RecyclerView;

    .line 238
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070219

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mTranslateDistance:F

    .line 240
    new-instance v0, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/PresetAdapter;

    sget-object v1, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mLevel2Items:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/PresetAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mPresetAdapter:Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/PresetAdapter;

    .line 241
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mListener:Lcom/transsion/camera/ui/setting/multifacebeauty/listener/FBItemOnClickListener;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;->setListener(Lcom/transsion/camera/ui/setting/multifacebeauty/listener/FBItemOnClickListener;)V

    .line 242
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mRecyclerViewLevel2:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mPresetAdapter:Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/PresetAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 243
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mRecyclerViewLevel2:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 244
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 245
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mRecyclerViewLevel2:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 246
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mRecyclerViewLevel2:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mPresetOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    const v0, 0x7f09016f

    .line 248
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mRecyclerViewLevel3:Landroidx/recyclerview/widget/RecyclerView;

    .line 249
    new-instance v0, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/FeatureAdapter;

    sget-object v2, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mLevel3Items:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v3}, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/FeatureAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mFeatureAdapter:Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/FeatureAdapter;

    .line 250
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mListener:Lcom/transsion/camera/ui/setting/multifacebeauty/listener/FBItemOnClickListener;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;->setListener(Lcom/transsion/camera/ui/setting/multifacebeauty/listener/FBItemOnClickListener;)V

    .line 251
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mRecyclerViewLevel3:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mFeatureAdapter:Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/FeatureAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 252
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mRecyclerViewLevel3:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 253
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 254
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mRecyclerViewLevel3:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 255
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mRecyclerViewLevel3:Landroidx/recyclerview/widget/RecyclerView;

    iget v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mTranslateDistance:F

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 256
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mRecyclerViewLevel3:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 257
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mRecyclerViewLevel3:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mFeatureOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 258
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mRecyclerViewLevel3:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 259
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->intDotView()V

    .line 260
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->initAnimation()V

    return-void
.end method

.method public notifyFaceBeautyOff()V
    .locals 3

    .line 527
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "is_widecam_item_ui_support_in_widecam"

    invoke-static {v0, v2, v1}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_0

    const-string v0, "key_conflict_ui_state"

    .line 529
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v1, "value_facebeauty_ui_off"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 465
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mRecyclerViewLevel3:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->isOpaque(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 466
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mListener:Lcom/transsion/camera/ui/setting/multifacebeauty/listener/FBItemOnClickListener;

    const-string v0, "adjust_custom"

    invoke-interface {p0, v0, v1, v1}, Lcom/transsion/camera/ui/setting/multifacebeauty/listener/FBItemOnClickListener;->onFBItemOnClick(Ljava/lang/String;II)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 265
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 266
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->init()V

    return-void
.end method

.method public resetViews()V
    .locals 3

    .line 510
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mRecyclerViewLevel2:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 511
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mRecyclerViewLevel2:Landroidx/recyclerview/widget/RecyclerView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 512
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mRecyclerViewLevel3:Landroidx/recyclerview/widget/RecyclerView;

    iget v2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mTranslateDistance:F

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 513
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mRecyclerViewLevel3:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void
.end method

.method public setCameraOperationControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 199
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->updateGuideData()V

    return-void
.end method

.method public setFBItemOnClickListener(Lcom/transsion/camera/ui/setting/multifacebeauty/listener/FBItemOnClickListener;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mFBItemOnClickListener:Lcom/transsion/camera/ui/setting/multifacebeauty/listener/FBItemOnClickListener;

    return-void
.end method

.method public setItemClickable(Z)V
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mFeatureAdapter:Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/FeatureAdapter;

    if-eqz v0, :cond_0

    .line 519
    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;->setItemClickable(Z)V

    .line 521
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mPresetAdapter:Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/PresetAdapter;

    if-eqz p0, :cond_1

    .line 522
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;->setItemClickable(Z)V

    :cond_1
    return-void
.end method

.method public setLevel2SelectPosition(I)V
    .locals 0

    .line 482
    iput p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mLevel2SelectedPosition:I

    .line 483
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mPresetAdapter:Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/PresetAdapter;

    if-eqz p0, :cond_0

    .line 484
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/adapter/MultiFBAdapter;->updateSelectPosition(I)V

    :cond_0
    return-void
.end method

.method public setStatusMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setVisibility(I)V
    .locals 4

    if-nez p1, :cond_0

    .line 301
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->mHanlder:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 303
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public unInit()V
    .locals 0

    .line 473
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->hideFeatureDotView()V

    .line 474
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->hidePresetDotView()V

    return-void
.end method
