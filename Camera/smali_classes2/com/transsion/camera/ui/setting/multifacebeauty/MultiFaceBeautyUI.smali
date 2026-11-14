.class public Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;
.super Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;
.source "MultiFaceBeautyUI.java"


# static fields
.field private static final CUTTING_FACE_DEFAULT_VALUE:Ljava/lang/String; = "10"

.field private static final CUTTING_NOSE_DEFAULT_VALUE:Ljava/lang/String; = "85"

.field private static EYE_DEFAULT_VALUE:Ljava/lang/String; = "40"

.field private static FACE_DEFAULT_VALUE:Ljava/lang/String; = "65"

.field private static final HAIR:Ljava/lang/String; = "20"

.field private static final MAKE_UP_VALUE:Ljava/lang/String; = "0"

.field private static final MIDDLE_PROGRESS:I = 0x32

.field private static SOFTEN_DEFAULT_VALUE:Ljava/lang/String; = "60"

.field private static final THREE_DIMENSIONAL:Ljava/lang/String; = "25"

.field private static WHITEN_DEFAULT_VALUE:Ljava/lang/String; = "40"

.field private static mIsFirst:Z = true


# instance fields
.field private DURATION:I

.field private TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mAlwaysHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mBottomBarRoot:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

.field private mEntryRootView:Landroid/view/ViewGroup;

.field private mEntryView:Landroid/view/View;

.field private mFBItemOnClickListener:Lcom/transsion/camera/ui/setting/multifacebeauty/listener/FBItemOnClickListener;

.field private mFBSeekBar:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;

.field private mFaceAttributeSupport:Z

.field private mInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

.field private mLevel1RootView:Landroid/view/View;

.field private mLevel2RootView:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;

.field private mModeBarRoot:Landroid/view/View;

.field private mMultiFBSwitching:Z

.field private mMultiFaceBeautyCompare:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mMultiFaceBeautyIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mNeedShowLevel2:Z

.field private mOldSelectedPostion:I

.field private mSelfTimerBegin:Z

.field private mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

.field private mTranslateAnimator:Landroid/animation/ValueAnimator;

.field private mTranslateAnimator2:Landroid/animation/ValueAnimator;

.field private mTranslateDistance:F

.field private mTranslateDistance2:F

.field private mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mTranslateUpdateListener2:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 8

    .line 136
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;-><init>(Landroid/content/res/Resources;)V

    .line 94
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/16 v0, 0xc8

    .line 104
    iput v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->DURATION:I

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mMultiFaceBeautyIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 110
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mMultiFaceBeautyCompare:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 111
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mFBSeekBar:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;

    .line 114
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 115
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mAlwaysHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 117
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mMultiFBSwitching:Z

    .line 118
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mSelfTimerBegin:Z

    const/4 v0, -0x1

    .line 132
    iput v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mOldSelectedPostion:I

    .line 324
    new-instance v0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$4;-><init>(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 338
    new-instance v0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$5;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$5;-><init>(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mTranslateUpdateListener2:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 350
    new-instance v0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$6;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$6;-><init>(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 365
    new-instance v0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$7;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$7;-><init>(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 736
    new-instance v0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$11;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$11;-><init>(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mFBItemOnClickListener:Lcom/transsion/camera/ui/setting/multifacebeauty/listener/FBItemOnClickListener;

    const v0, 0x7f070208

    .line 137
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mTranslateDistance:F

    const v0, 0x7f070209

    .line 138
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mTranslateDistance2:F

    .line 139
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v3, 0x3e800000    # 0.25f

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v4, v3, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/4 v3, 0x2

    new-array v4, v3, [F

    .line 140
    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 141
    iget v5, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->DURATION:I

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 142
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput v5, v4, v2

    .line 143
    iget v6, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mTranslateDistance:F

    aput v6, v4, v1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    .line 144
    iget v6, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->DURATION:I

    int-to-long v6, v6

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 145
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v3, v3, [F

    .line 146
    iget v4, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mTranslateDistance2:F

    neg-float v4, v4

    aput v4, v3, v2

    aput v5, v3, v1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    .line 147
    iget v2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->DURATION:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 148
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 149
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->addAnimatorListener()V

    const v0, 0x7f050018

    .line 150
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mFaceAttributeSupport:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;)Lcom/transsion/camera/app/common/storage/DataStore;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->updateDataStoreResetValue()V

    return-void
.end method

.method static synthetic access$1000(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;)Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mFBSeekBar:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;Z)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->notifyFaceBeautyState(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;II)V
    .locals 0

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->showDialog(II)V

    return-void
.end method

.method static synthetic access$1300(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->hideAlwaysHint()V

    return-void
.end method

.method static synthetic access$1400(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;Ljava/lang/String;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->showAutoHint(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;I)Ljava/lang/String;
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->getKeyByPostion(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;Ljava/lang/String;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->onFeatureItemSelected(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;)Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mLevel2RootView:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->showLevel2()V

    return-void
.end method

.method static synthetic access$600(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;)Landroid/view/View;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mModeBarRoot:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;)Landroid/view/View;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mBottomBarRoot:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->showOrHideLevel2()V

    return-void
.end method

.method private addAnimatorListener()V
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 291
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 292
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 296
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 300
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mTranslateUpdateListener2:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 301
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$3;-><init>(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2
    return-void
.end method

.method private getKeyByPostion(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    .line 719
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f030073

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    sub-int/2addr p1, v0

    .line 721
    aget-object p0, p0, p1

    return-object p0

    :cond_0
    const-string p0, "0"

    return-object p0
.end method

.method private getSkinColor()Ljava/lang/String;
    .locals 1

    const-string p0, "debug.vendor.sys.oobe.camera_skin"

    const-string v0, "0"

    .line 154
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private hideAllHint()V
    .locals 0

    .line 1049
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->hideAutoHint()V

    .line 1050
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->hideAlwaysHint()V

    return-void
.end method

.method private hideAllViews()V
    .locals 0

    .line 1037
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->hideAllHint()V

    .line 1038
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->hideLevel2RootView()V

    .line 1039
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->hideLevel1RootView()V

    .line 1040
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->hideDialog()V

    return-void
.end method

.method private hideAlwaysHint()V
    .locals 2

    .line 815
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_0

    .line 816
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mAlwaysHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 817
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_0

    .line 818
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->getKey()Ljava/lang/String;

    move-result-object p0

    const-string v1, "multi_facebeauty_always_hint_hide"

    invoke-virtual {v0, p0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private hideAutoHint()V
    .locals 1

    .line 798
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_0

    .line 799
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_0
    return-void
.end method

.method private hideDialog()V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private hideLevel1RootView()V
    .locals 1

    const/4 v0, 0x0

    .line 1054
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->setEnable(Z)V

    .line 1055
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mLevel1RootView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private hideLevel2RootView()V
    .locals 2

    .line 1064
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mLevel2RootView:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1065
    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;->setItemClickable(Z)V

    .line 1066
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mLevel2RootView:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private initData(Landroid/view/View;)V
    .locals 2

    .line 886
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 887
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 886
    invoke-static {p1, v0, v1}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;->initLevel2Data(Landroid/view/View;[Ljava/lang/String;[Landroid/graphics/drawable/Drawable;)V

    .line 888
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f030072

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 890
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->typedArrayToDrawableArray(Landroid/content/res/TypedArray;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 891
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 892
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mResources:Landroid/content/res/Resources;

    const p1, 0x7f030073

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;->initLevel3Data([Ljava/lang/String;[Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private initInteractiveUI()V
    .locals 0

    .line 534
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->showLevel1()V

    return-void
.end method

.method private notifyFaceBeautyState(Z)V
    .locals 3

    .line 1115
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[notifyFaceBeautyState] , visibility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1116
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "is_widecam_item_ui_support_in_widecam"

    invoke-static {v0, v2, v1}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1117
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_1

    const-string v0, "key_conflict_ui_state"

    if-eqz p1, :cond_0

    .line 1119
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "value_facebeauty_ui_on"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1121
    :cond_0
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "value_facebeauty_ui_off"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private onFeatureItemSelected(Ljava/lang/String;)V
    .locals 6

    .line 825
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mFBSeekBar:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 826
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mFBSeekBar:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    .line 827
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mFBSeekBar:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 828
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->notifyFaceBeautyState(Z)V

    :cond_0
    const/4 v0, -0x1

    .line 830
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "threedimensional"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_1
    const-string v4, "nose"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_2
    const-string v4, "hair"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_3
    const-string v4, "face"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_4
    const-string v4, "eye"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_5
    const-string v4, "cuttingface"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    goto :goto_0

    :sswitch_6
    const-string v4, "whiten"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v1

    goto :goto_0

    :sswitch_7
    const-string v4, "soften"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v3

    goto :goto_0

    :sswitch_8
    const-string v4, "makeup"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x7

    :cond_1
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 859
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "nothing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    move v0, v3

    goto/16 :goto_1

    .line 856
    :pswitch_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "20"

    invoke-virtual {v0, p1, v5, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    .line 853
    :pswitch_1
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v0, p1, v5, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    .line 850
    :pswitch_2
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "25"

    invoke-virtual {v0, p1, v5, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 847
    :pswitch_3
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "85"

    invoke-virtual {v0, p1, v5, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 844
    :pswitch_4
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "10"

    invoke-virtual {v0, p1, v5, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 841
    :pswitch_5
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    sget-object v4, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->EYE_DEFAULT_VALUE:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, p1, v4, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 838
    :pswitch_6
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    sget-object v4, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->FACE_DEFAULT_VALUE:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, p1, v4, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 835
    :pswitch_7
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    sget-object v4, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->WHITEN_DEFAULT_VALUE:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, p1, v4, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 832
    :pswitch_8
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    sget-object v4, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->SOFTEN_DEFAULT_VALUE:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, p1, v4, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 863
    :goto_1
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mFBSeekBar:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-ne v4, v2, :cond_2

    .line 864
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mFBSeekBar:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 865
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->notifyFaceBeautyState(Z)V

    .line 868
    :cond_2
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mFBSeekBar:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3, v3}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->updateSeekBarData(IIII)V

    .line 870
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v0, "custom"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 872
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setMultiFBCustomValueDone(Ljava/lang/String;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4076aef7 -> :sswitch_8
        -0x357661ad -> :sswitch_7
        -0x2f04469b -> :sswitch_6
        -0x10f4dd73 -> :sswitch_5
        0x18a31 -> :sswitch_4
        0x2fd65d -> :sswitch_3
        0x30bfe2 -> :sswitch_2
        0x33afd3 -> :sswitch_1
        0x6c5d03b3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onModePanelStartPulling()V
    .locals 3

    .line 997
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mEntryView:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 998
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1000
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mMultiFaceBeautyIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_1

    .line 1001
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1003
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mMultiFaceBeautyCompare:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_2

    .line 1004
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1006
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mLevel2RootView:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 1007
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 1008
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mLevel2RootView:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1009
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mLevel2RootView:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;

    iget v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mTranslateDistance2:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    .line 1012
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mModeBarRoot:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 1013
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 1014
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mModeBarRoot:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1017
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mBottomBarRoot:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 1018
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 1021
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mFBSeekBar:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    .line 1022
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mFBSeekBar:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1025
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    if-eqz v0, :cond_7

    .line 1026
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->transitionShutterToRegular()V

    .line 1028
    :cond_7
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->hideAllHint()V

    return-void
.end method

.method private onModePanelStartReset()V
    .locals 0

    .line 1032
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->resetAllViews()V

    .line 1033
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->showLevel1()V

    return-void
.end method

.method private resetAllViews()V
    .locals 1

    .line 1078
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    if-eqz v0, :cond_0

    .line 1079
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->transitionShutterToRegular()V

    .line 1082
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->resetLevel2RootView()V

    .line 1083
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->resetLevel1RootView()V

    .line 1084
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->resetModeAndBottom()V

    return-void
.end method

.method private resetLevel1RootView()V
    .locals 3

    const/4 v0, 0x1

    .line 1097
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->setEnable(Z)V

    .line 1098
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mLevel1RootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1099
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mFBSeekBar:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1100
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mMultiFaceBeautyIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1101
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mMultiFaceBeautyCompare:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private resetLevel2RootView()V
    .locals 2

    .line 1088
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mLevel2RootView:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1089
    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;->setItemClickable(Z)V

    .line 1090
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mLevel2RootView:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1091
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mLevel2RootView:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;

    iget v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mTranslateDistance2:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    .line 1092
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mLevel2RootView:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method private resetModeAndBottom()V
    .locals 3

    .line 1105
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mBottomBarRoot:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1106
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mModeBarRoot:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1107
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mBottomBarRoot:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 1108
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mModeBarRoot:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 1109
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mModeBarRoot:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1110
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mMultiFBSwitching:Z

    return-void
.end method

.method private showAllViews()V
    .locals 0

    .line 1044
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->showLevel2RootView()V

    .line 1045
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->showLevel1RootView()V

    return-void
.end method

.method private showAlwaysHint(Ljava/lang/String;)V
    .locals 2

    .line 804
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mAlwaysHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz v1, :cond_0

    .line 805
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 806
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mAlwaysHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 807
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mAlwaysHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 808
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_0

    .line 809
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->getKey()Ljava/lang/String;

    move-result-object p0

    const-string v0, "multi_facebeauty_always_hint_show"

    invoke-virtual {p1, p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private showAutoHint(Ljava/lang/String;)V
    .locals 3

    .line 789
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAutoHintInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 790
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz v0, :cond_0

    .line 791
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 792
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 793
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_0
    return-void
.end method

.method private showBeautyUI()V
    .locals 2

    .line 907
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mNeedShowLevel2:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 908
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->showLevel2RootView()V

    .line 909
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mNeedShowLevel2:Z

    .line 911
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->hideDialog()V

    .line 912
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->showLevel1RootView()V

    .line 913
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mEntryView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 914
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 916
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mMultiFaceBeautyIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p0, :cond_2

    .line 917
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private showDialog(II)V
    .locals 2

    .line 253
    new-instance p2, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    .line 254
    invoke-virtual {p2, v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0f0136

    .line 255
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    new-instance v0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$2;-><init>(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;)V

    const v1, 0x7f0f0137

    .line 256
    invoke-virtual {p2, v1, v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    new-instance v0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$1;-><init>(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;I)V

    const p1, 0x7f0f0135

    .line 262
    invoke-virtual {p2, p1, v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 278
    invoke-virtual {p2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    .line 279
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showLevel1()V
    .locals 2

    .line 550
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mEntryView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 551
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mMultiFaceBeautyIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 552
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mMultiFaceBeautyCompare:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private showLevel1RootView()V
    .locals 1

    const/4 v0, 0x1

    .line 1059
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->setEnable(Z)V

    .line 1060
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mLevel1RootView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showLevel2()V
    .locals 1

    .line 626
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mLevel2RootView:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private showLevel2RootView()V
    .locals 2

    .line 1071
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mLevel2RootView:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1072
    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;->setItemClickable(Z)V

    .line 1073
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mLevel2RootView:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showOrHideLevel2()V
    .locals 8

    .line 585
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mLevel2RootView:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v1

    const/4 v3, 0x0

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    .line 587
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v4, 0x2

    new-array v5, v4, [F

    const/4 v6, 0x0

    aput v0, v5, v6

    const/4 v0, 0x1

    aput v1, v5, v0

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    .line 589
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mModeBarRoot:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 591
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 592
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mBottomBarRoot:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    cmpl-float v2, v1, v3

    if-lez v2, :cond_2

    move v2, v3

    goto :goto_1

    .line 593
    :cond_2
    iget v2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mTranslateDistance:F

    .line 594
    :goto_1
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    new-array v7, v4, [F

    aput v1, v7, v6

    aput v2, v7, v0

    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 595
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mLevel2RootView:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getTranslationY()F

    move-result v1

    cmpg-float v2, v1, v3

    if-gez v2, :cond_3

    move v5, v3

    goto :goto_2

    .line 596
    :cond_3
    iget v5, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mTranslateDistance2:F

    neg-float v5, v5

    .line 597
    :goto_2
    iget-object v7, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    new-array v4, v4, [F

    aput v1, v4, v6

    aput v5, v4, v0

    invoke-virtual {v7, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 598
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 599
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 601
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    if-eqz v1, :cond_5

    if-gez v2, :cond_4

    .line 603
    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->transitionShutterToSmall()V

    goto :goto_3

    .line 605
    :cond_4
    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->transitionShutterToRegular()V

    :cond_5
    :goto_3
    cmpl-float v1, v5, v3

    if-nez v1, :cond_6

    move v1, v0

    goto :goto_4

    :cond_6
    move v1, v6

    .line 610
    :goto_4
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v3, "key_multi_face_state"

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v2

    if-eqz v1, :cond_7

    const-string v4, "key_multi_face_state_on"

    goto :goto_5

    :cond_7
    const-string v4, "key_multi_face_state_off"

    :goto_5
    invoke-virtual {v2, v3, v4}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v1, :cond_9

    .line 613
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mMultiFaceBeautyCompare:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v1, :cond_8

    .line 614
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 616
    :cond_8
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "oldSelected"

    const-string v4, "1"

    invoke-virtual {v1, v3, v4, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mOldSelectedPostion:I

    .line 617
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->getKeyByPostion(I)Ljava/lang/String;

    move-result-object v1

    .line 618
    iget v2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mOldSelectedPostion:I

    if-eq v2, v0, :cond_9

    .line 619
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->onFeatureItemSelected(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method private updateDataStoreResetValue()V
    .locals 5

    .line 727
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    sget-object v1, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->SOFTEN_DEFAULT_VALUE:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "soften"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 728
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    sget-object v1, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->WHITEN_DEFAULT_VALUE:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "whiten"

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 729
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    sget-object v1, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->FACE_DEFAULT_VALUE:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "face"

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 730
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    sget-object v1, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->EYE_DEFAULT_VALUE:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "eye"

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 731
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "nose"

    const-string v3, "85"

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 732
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cuttingface"

    const-string v3, "10"

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 733
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    const-string v1, "makeup"

    const-string v2, "0"

    invoke-virtual {p0, v1, v2, v0, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private updateDefaultValue(Ljava/lang/String;)V
    .locals 9

    .line 158
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mFaceAttributeSupport:Z

    const-string v1, "white"

    const-string v2, "65"

    const-string v3, "1"

    const-string v4, "40"

    const-string v5, "30"

    const-string v6, "0"

    if-eqz v0, :cond_7

    .line 159
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v7, "20"

    const-string v8, "45"

    if-eqz v0, :cond_3

    .line 160
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mGenderValue:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    sput-object v5, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->SOFTEN_DEFAULT_VALUE:Ljava/lang/String;

    .line 163
    sput-object v6, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->WHITEN_DEFAULT_VALUE:Ljava/lang/String;

    .line 164
    sput-object v2, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->FACE_DEFAULT_VALUE:Ljava/lang/String;

    .line 165
    sput-object v5, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->EYE_DEFAULT_VALUE:Ljava/lang/String;

    goto :goto_0

    .line 167
    :cond_0
    sput-object v8, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->SOFTEN_DEFAULT_VALUE:Ljava/lang/String;

    .line 168
    sput-object v6, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->WHITEN_DEFAULT_VALUE:Ljava/lang/String;

    .line 169
    sput-object v2, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->FACE_DEFAULT_VALUE:Ljava/lang/String;

    .line 170
    sput-object v5, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->EYE_DEFAULT_VALUE:Ljava/lang/String;

    goto :goto_0

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mGenderValue:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    sput-object v5, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->SOFTEN_DEFAULT_VALUE:Ljava/lang/String;

    .line 175
    sput-object v7, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->WHITEN_DEFAULT_VALUE:Ljava/lang/String;

    .line 176
    sput-object v2, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->FACE_DEFAULT_VALUE:Ljava/lang/String;

    .line 177
    sput-object v5, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->EYE_DEFAULT_VALUE:Ljava/lang/String;

    goto :goto_0

    .line 179
    :cond_2
    sput-object v4, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->SOFTEN_DEFAULT_VALUE:Ljava/lang/String;

    .line 180
    sput-object v4, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->WHITEN_DEFAULT_VALUE:Ljava/lang/String;

    .line 181
    sput-object v2, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->FACE_DEFAULT_VALUE:Ljava/lang/String;

    .line 182
    sput-object v4, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->EYE_DEFAULT_VALUE:Ljava/lang/String;

    .line 186
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 187
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 188
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mGenderValue:Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 189
    sput-object v5, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->SOFTEN_DEFAULT_VALUE:Ljava/lang/String;

    .line 190
    sput-object v7, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->WHITEN_DEFAULT_VALUE:Ljava/lang/String;

    .line 191
    sput-object v6, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->FACE_DEFAULT_VALUE:Ljava/lang/String;

    .line 192
    sput-object v6, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->EYE_DEFAULT_VALUE:Ljava/lang/String;

    goto :goto_2

    .line 194
    :cond_4
    sput-object v8, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->SOFTEN_DEFAULT_VALUE:Ljava/lang/String;

    .line 195
    sput-object v4, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->WHITEN_DEFAULT_VALUE:Ljava/lang/String;

    .line 196
    sput-object v6, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->FACE_DEFAULT_VALUE:Ljava/lang/String;

    .line 197
    sput-object v6, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->EYE_DEFAULT_VALUE:Ljava/lang/String;

    goto :goto_2

    .line 200
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mGenderValue:Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 201
    sput-object v5, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->SOFTEN_DEFAULT_VALUE:Ljava/lang/String;

    .line 202
    sput-object v6, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->WHITEN_DEFAULT_VALUE:Ljava/lang/String;

    .line 203
    sput-object v6, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->FACE_DEFAULT_VALUE:Ljava/lang/String;

    .line 204
    sput-object v6, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->EYE_DEFAULT_VALUE:Ljava/lang/String;

    goto :goto_2

    .line 206
    :cond_6
    sput-object v8, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->SOFTEN_DEFAULT_VALUE:Ljava/lang/String;

    .line 207
    sput-object v6, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->WHITEN_DEFAULT_VALUE:Ljava/lang/String;

    .line 208
    sput-object v6, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->FACE_DEFAULT_VALUE:Ljava/lang/String;

    .line 209
    sput-object v6, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->EYE_DEFAULT_VALUE:Ljava/lang/String;

    goto :goto_2

    .line 214
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v3, "43"

    const-string v7, "60"

    if-eqz v0, :cond_9

    .line 215
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 216
    sput-object v3, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->SOFTEN_DEFAULT_VALUE:Ljava/lang/String;

    .line 217
    sput-object v6, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->WHITEN_DEFAULT_VALUE:Ljava/lang/String;

    .line 218
    sput-object v2, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->FACE_DEFAULT_VALUE:Ljava/lang/String;

    .line 219
    sput-object v5, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->EYE_DEFAULT_VALUE:Ljava/lang/String;

    goto :goto_1

    .line 221
    :cond_8
    sput-object v7, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->SOFTEN_DEFAULT_VALUE:Ljava/lang/String;

    .line 222
    sput-object v4, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->WHITEN_DEFAULT_VALUE:Ljava/lang/String;

    .line 223
    sput-object v2, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->FACE_DEFAULT_VALUE:Ljava/lang/String;

    .line 224
    sput-object v4, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->EYE_DEFAULT_VALUE:Ljava/lang/String;

    .line 227
    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 228
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 229
    sput-object v7, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->SOFTEN_DEFAULT_VALUE:Ljava/lang/String;

    .line 230
    sput-object v4, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->WHITEN_DEFAULT_VALUE:Ljava/lang/String;

    .line 231
    sput-object v6, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->FACE_DEFAULT_VALUE:Ljava/lang/String;

    .line 232
    sput-object v6, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->EYE_DEFAULT_VALUE:Ljava/lang/String;

    goto :goto_2

    .line 234
    :cond_a
    sput-object v3, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->SOFTEN_DEFAULT_VALUE:Ljava/lang/String;

    .line 235
    sput-object v6, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->WHITEN_DEFAULT_VALUE:Ljava/lang/String;

    .line 236
    sput-object v6, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->FACE_DEFAULT_VALUE:Ljava/lang/String;

    .line 237
    sput-object v6, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->EYE_DEFAULT_VALUE:Ljava/lang/String;

    .line 242
    :cond_b
    :goto_2
    sget-boolean p1, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mIsFirst:Z

    if-eqz p1, :cond_c

    .line 243
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    sget-object v0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->WHITEN_DEFAULT_VALUE:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "whiten"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v1, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 244
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    sget-object v0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->SOFTEN_DEFAULT_VALUE:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "soften"

    invoke-virtual {p1, v2, v0, v1, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 245
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    sget-object v0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->FACE_DEFAULT_VALUE:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "face"

    invoke-virtual {p1, v2, v0, v1, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 246
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    sget-object p1, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->EYE_DEFAULT_VALUE:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    const-string v1, "eye"

    invoke-virtual {p0, v1, p1, v0, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 247
    sput-boolean v3, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mIsFirst:Z

    :cond_c
    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .locals 2

    .line 445
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;

    .line 446
    invoke-direct {p0, p2}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->initData(Landroid/view/View;)V

    .line 447
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mContext:Landroid/content/Context;

    .line 448
    new-instance v0, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 449
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mEntryRootView:Landroid/view/ViewGroup;

    .line 450
    iput-object p3, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

    .line 451
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mInflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0c0080

    const/4 v0, 0x0

    .line 452
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mEntryView:Landroid/view/View;

    const p2, 0x7f0900d1

    .line 453
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mLevel1RootView:Landroid/view/View;

    .line 455
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getBottombarRoot()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mBottomBarRoot:Landroid/view/View;

    .line 456
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getModeBarRoot()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mModeBarRoot:Landroid/view/View;

    .line 457
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getImmutableFrameSize()Lcom/transsion/camera/app/common/IImmutableFrameSize;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IImmutableFrameSize;->getBottomRegionHeight()I

    move-result p1

    .line 458
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mLevel1RootView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 459
    invoke-virtual {p2, v0, v0, v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 460
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mLevel1RootView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 462
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mLevel1RootView:Landroid/view/View;

    const p2, 0x7f0900d5

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mMultiFaceBeautyIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 p2, 0x1

    .line 463
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 465
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mMultiFaceBeautyIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    new-instance p2, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$8;

    invoke-direct {p2, p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$8;-><init>(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 476
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mLevel1RootView:Landroid/view/View;

    const p2, 0x7f0900d0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mMultiFaceBeautyCompare:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 477
    new-instance p2, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$9;

    invoke-direct {p2, p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$9;-><init>(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 509
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mLevel1RootView:Landroid/view/View;

    const p2, 0x7f0900d4

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mFBSeekBar:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;

    .line 510
    new-instance p2, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$10;

    invoke-direct {p2, p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$10;-><init>(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;)V

    invoke-virtual {p1, p2}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->setOnSeekBarChangeListener(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar$OnSeekBarChangeListener;)V

    .line 517
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mEntryView:Landroid/view/View;

    const p2, 0x7f0900d2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mLevel2RootView:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;

    .line 518
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object p3, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;->setLevel2SelectPosition(I)V

    .line 519
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mLevel2RootView:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;

    iget p2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mTranslateDistance2:F

    neg-float p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    .line 520
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mLevel2RootView:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 521
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mLevel2RootView:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mFBItemOnClickListener:Lcom/transsion/camera/ui/setting/multifacebeauty/listener/FBItemOnClickListener;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;->setFBItemOnClickListener(Lcom/transsion/camera/ui/setting/multifacebeauty/listener/FBItemOnClickListener;)V

    .line 522
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mLevel2RootView:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;->setCameraOperationControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 523
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mLevel2RootView:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 524
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mBottomBarRoot:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    iget-object p3, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mLevel2RootView:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;

    invoke-virtual {p3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p3

    sub-int/2addr p2, p3

    iget p3, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mTranslateDistance:F

    float-to-int p3, p3

    sub-int/2addr p2, p3

    .line 525
    invoke-virtual {p1, v0, v0, v0, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 526
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mLevel2RootView:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 527
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->initInteractiveUI()V

    .line 528
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->resetModeAndBottom()V

    .line 529
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->getSkinColor()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->updateDefaultValue(Ljava/lang/String;)V

    .line 530
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEntryRootView()Landroid/view/ViewGroup;
    .locals 0

    .line 581
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mEntryRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getEntryView()Landroid/view/View;
    .locals 0

    .line 576
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getSettingUISpec(Landroid/content/res/Resources;)Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;
    .locals 0

    .line 396
    new-instance p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautySettingUISpec;

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautySettingUISpec;-><init>(Landroid/content/res/Resources;)V

    return-object p0
.end method

.method protected hideContractView()V
    .locals 1

    .line 569
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mMultiFaceBeautyCompare:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 570
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public hideLevel1()V
    .locals 2

    .line 556
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mEntryView:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 557
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mMultiFaceBeautyIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_1

    .line 560
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 562
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mMultiFaceBeautyCompare:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p0, :cond_2

    .line 563
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method protected hideLevel2(Z)V
    .locals 4

    .line 660
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mLevel2RootView:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 661
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 662
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mLevel2RootView:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 663
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mLevel2RootView:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;

    iget v2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mTranslateDistance2:F

    neg-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    .line 666
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mModeBarRoot:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 667
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 668
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mModeBarRoot:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 669
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mModeBarRoot:Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 672
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mBottomBarRoot:Landroid/view/View;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 673
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 676
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mFBSeekBar:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 677
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mFBSeekBar:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 678
    invoke-direct {p0, v2}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->notifyFaceBeautyState(Z)V

    .line 681
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 682
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->transitionShutterToRegular()V

    .line 684
    :cond_4
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->hideAutoHint()V

    .line 685
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->hideAlwaysHint()V

    .line 686
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->resetLevel2RootView()V

    return-void
.end method

.method protected hideLevel2Only(Z)V
    .locals 3

    .line 631
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mLevel2RootView:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 632
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 633
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mLevel2RootView:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 634
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mLevel2RootView:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;

    iget v2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mTranslateDistance2:F

    neg-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    .line 637
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mModeBarRoot:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 638
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 639
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mModeBarRoot:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 642
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mBottomBarRoot:Landroid/view/View;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 643
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 646
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mFBSeekBar:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 647
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mFBSeekBar:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 650
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 651
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->transitionShutterToRegular()V

    .line 653
    :cond_4
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->hideAutoHint()V

    .line 654
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->hideAlwaysHint()V

    .line 655
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->resetLevel2RootView()V

    return-void
.end method

.method public notifyCameraOperateAction(I)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_6

    const/4 v2, 0x3

    if-eq p1, v2, :cond_5

    const/16 v2, 0x1f

    if-eq p1, v2, :cond_4

    const/16 v2, 0x29

    if-eq p1, v2, :cond_3

    const/16 v2, 0x2a

    if-eq p1, v2, :cond_2

    const/16 v2, 0x55

    if-eq p1, v2, :cond_6

    const/16 v2, 0x56

    if-eq p1, v2, :cond_5

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    goto/16 :goto_0

    .line 987
    :pswitch_0
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mSelfTimerBegin:Z

    if-nez p1, :cond_7

    .line 988
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->onModePanelStartReset()V

    goto :goto_0

    .line 982
    :pswitch_1
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->onModePanelStartPulling()V

    goto :goto_0

    .line 936
    :pswitch_2
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->showBeautyUI()V

    .line 937
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mFBSeekBar:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 938
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mFBSeekBar:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 940
    :cond_0
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->notifyFaceBeautyState(Z)V

    .line 941
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->showLevel1()V

    goto :goto_0

    .line 925
    :pswitch_3
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->hideLevel2(Z)V

    .line 926
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->hideLevel1()V

    goto :goto_0

    .line 945
    :pswitch_4
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mSelfTimerBegin:Z

    .line 946
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->showBeautyUI()V

    goto :goto_0

    .line 929
    :pswitch_5
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mSelfTimerBegin:Z

    .line 930
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mLevel2RootView:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 931
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mNeedShowLevel2:Z

    .line 933
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->hideAllViews()V

    goto :goto_0

    .line 953
    :cond_2
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->setEnable(Z)V

    .line 954
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mMultiFBSwitching:Z

    goto :goto_0

    .line 949
    :cond_3
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->setEnable(Z)V

    .line 950
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mMultiFBSwitching:Z

    goto :goto_0

    .line 958
    :cond_4
    :pswitch_6
    sput-boolean v1, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mIsFirst:Z

    .line 959
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->resetAllViews()V

    .line 960
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mMultiFBSwitching:Z

    goto :goto_0

    .line 977
    :cond_5
    :pswitch_7
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->setEnable(Z)V

    .line 978
    sput-boolean v0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mIsFirst:Z

    .line 979
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->hideDialog()V

    goto :goto_0

    .line 968
    :cond_6
    :pswitch_8
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->setEnable(Z)V

    .line 969
    sput-boolean v0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mIsFirst:Z

    :cond_7
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_5
        :pswitch_4
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x19
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x48
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x4c
        :pswitch_0
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 4

    .line 695
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mSelfTimerBegin:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 698
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mMultiFBSwitching:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 701
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mLevel2RootView:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 702
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mFBSeekBar:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 703
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mFBSeekBar:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 704
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->notifyFaceBeautyState(Z)V

    .line 706
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mMultiFaceBeautyIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 707
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mMultiFaceBeautyIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 709
    :cond_3
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->hideAlwaysHint()V

    .line 711
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->showOrHideLevel2()V

    return v2

    :cond_4
    return v1
.end method

.method public onOrientationChanged(I)V
    .locals 0

    return-void
.end method

.method public restoreInteractiveView()V
    .locals 0

    .line 546
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->resetAllViews()V

    return-void
.end method

.method public setEnable(Z)V
    .locals 1

    .line 1128
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mMultiFaceBeautyIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_0

    .line 1129
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1131
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mLevel2RootView:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;

    if-eqz p0, :cond_1

    .line 1132
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;->setItemClickable(Z)V

    :cond_1
    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V
    .locals 0

    .line 1138
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V

    .line 1139
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    return-void
.end method

.method public setupEntryView()V
    .locals 0

    return-void
.end method

.method protected showFeatureAlwaysHint(Ljava/lang/String;)V
    .locals 1

    .line 1145
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "threedimensional"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_1

    :sswitch_1
    const-string v0, "nose"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_2
    const-string v0, "hair"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_1

    :sswitch_3
    const-string v0, "face"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_4
    const-string v0, "eye"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_5
    const-string v0, "cuttingface"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_6
    const-string v0, "whiten"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_7
    const-string v0, "soften"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_8
    const-string v0, "makeup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_2

    .line 1171
    :pswitch_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f0f013d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 1168
    :pswitch_1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f0f013e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 1165
    :pswitch_2
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f0f0142

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 1162
    :pswitch_3
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f0f013f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 1159
    :pswitch_4
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f0f013a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 1156
    :pswitch_5
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f0f013b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 1153
    :pswitch_6
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f0f013c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 1150
    :pswitch_7
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f0f0140

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 1147
    :pswitch_8
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f0f0141

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_2
    if-eqz p1, :cond_1

    .line 1175
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->showAlwaysHint(Ljava/lang/String;)V

    :cond_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4076aef7 -> :sswitch_8
        -0x357661ad -> :sswitch_7
        -0x2f04469b -> :sswitch_6
        -0x10f4dd73 -> :sswitch_5
        0x18a31 -> :sswitch_4
        0x2fd65d -> :sswitch_3
        0x30bfe2 -> :sswitch_2
        0x33afd3 -> :sswitch_1
        0x6c5d03b3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected typedArrayToDrawableArray(Landroid/content/res/TypedArray;)[Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 897
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result p0

    .line 898
    new-array v0, p0, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 901
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public unInit()V
    .locals 1

    .line 539
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->hideLevel1()V

    const/4 v0, 0x1

    .line 540
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->hideLevel2(Z)V

    .line 541
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->unInit()V

    return-void
.end method

.method protected updateEntryView()V
    .locals 2

    .line 401
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 403
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "updateEntryView there is no value."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 406
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mLevel2RootView:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;->setLevel2SelectPosition(I)V

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 3

    .line 416
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mLevel1RootView:Landroid/view/View;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mModeBarRoot:Landroid/view/View;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mBottomBarRoot:Landroid/view/View;

    if-nez p1, :cond_0

    goto :goto_0

    .line 420
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getImmutableFrameSize()Lcom/transsion/camera/app/common/IImmutableFrameSize;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IImmutableFrameSize;->getBottomRegionHeight()I

    move-result p1

    .line 421
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePreviewRect bottombar height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mBottomBarRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mModeBarRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_2

    .line 423
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mLevel1RootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 424
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    const/4 v2, 0x0

    if-le p1, v1, :cond_1

    .line 426
    invoke-virtual {v0, v2, v2, v2, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 427
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "update mLevel1RootView layout"

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 428
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mLevel1RootView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 431
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mLevel2RootView:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 432
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mBottomBarRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mLevel2RootView:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mTranslateDistance:F

    float-to-int v1, v1

    sub-int/2addr v0, v1

    .line 433
    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-le v0, v1, :cond_2

    .line 435
    invoke-virtual {p1, v2, v2, v2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 436
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "update mLevel2RootView layout"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 437
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->mLevel2RootView:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    return-void
.end method
