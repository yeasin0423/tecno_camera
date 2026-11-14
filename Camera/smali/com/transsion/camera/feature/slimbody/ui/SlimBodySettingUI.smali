.class public Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SlimBodySettingUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DEFAULT_SLIMBODY:I = 0x0

.field private static final DURATION:I = 0xc8

.field private static final MSG_ON_FACEBEAUTY_VALUE_CHANGED:I = 0x2

.field private static final MSG_ON_SLIMBODY_VALUE_CHANGED:I = 0x1

.field public static final OPERATE_SETTING_UI_FB:I = 0x0

.field public static final OPERATE_SETTING_UI_SB:I = 0x1

.field private static final PRECISION:F = 0.01f

.field private static final RECYCLE_VIEW_ANIM_DURATION:I = 0x12c

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mAnimShow:Z

.field private mBottomBarRoot:Landroid/view/View;

.field private mBottomRootView:Landroid/view/View;

.field private mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private mContractBar:Landroid/view/View;

.field private mContrastListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$ContrastListener;

.field private mCurrentUIType:I

.field private mDefaultOption:I

.field private mEntryRootView:Landroid/view/ViewGroup;

.field private mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

.field private mFaceBeautyRoot:Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;

.field private mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mFeatureLayout:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

.field private mGenderValue:Ljava/lang/String;

.field private mIndicatorClickListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$BarClickListener;

.field private mInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

.field private mModeBarRoot:Landroid/view/View;

.field private mNeedShow:Z

.field private mSeekbarChangeListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$SeekBarChangeListener;

.field private mSelfTimerCapturing:Z

.field private mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

.field private mSlimBodyBottomBarHeight:I

.field private mSlimBodyInfoListener:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;

.field private mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

.field private mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mState:I

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

.field private mTopRootView:Landroid/view/View;

.field private mTranslateAnimator:Landroid/animation/ValueAnimator;

.field private mTranslateAnimator2:Landroid/animation/ValueAnimator;

.field private mTranslateDistance:F

.field private mTranslateDistance2:F

.field private mTranslateListener:Landroid/animation/AnimatorListenerAdapter;

.field private mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mTranslateUpdateListener2:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SlimBodySettingUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 8

    .line 314
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    const/4 v0, 0x2

    .line 71
    iput v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mState:I

    const/4 v1, 0x0

    .line 72
    iput-boolean v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSelfTimerCapturing:Z

    const/4 v2, 0x1

    .line 73
    iput v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mDefaultOption:I

    const-string v3, "1"

    .line 76
    iput-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mGenderValue:Ljava/lang/String;

    .line 79
    new-instance v3, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$1;

    invoke-direct {v3, p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$1;-><init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)V

    iput-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mContrastListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$ContrastListener;

    .line 132
    new-instance v3, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$2;

    invoke-direct {v3, p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$2;-><init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)V

    iput-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSeekbarChangeListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$SeekBarChangeListener;

    .line 141
    new-instance v3, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$3;

    invoke-direct {v3, p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$3;-><init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)V

    iput-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mIndicatorClickListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$BarClickListener;

    .line 158
    new-instance v3, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$4;

    invoke-direct {v3, p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$4;-><init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)V

    iput-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSlimBodyInfoListener:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;

    .line 221
    new-instance v3, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$5;

    invoke-direct {v3, p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$5;-><init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)V

    iput-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 238
    new-instance v3, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$6;

    invoke-direct {v3, p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$6;-><init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)V

    iput-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateUpdateListener2:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 251
    new-instance v3, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$7;

    invoke-direct {v3, p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$7;-><init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)V

    iput-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 273
    new-instance v3, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$8;

    invoke-direct {v3, p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$8;-><init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)V

    iput-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateListener:Landroid/animation/AnimatorListenerAdapter;

    .line 880
    new-instance v3, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$9;

    invoke-direct {v3, p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$9;-><init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)V

    iput-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 927
    new-instance v3, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$10;

    invoke-direct {v3, p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$10;-><init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)V

    iput-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mUIHandler:Landroid/os/Handler;

    .line 315
    sget-object v3, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v4, "init"

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 316
    sget v3, Lcom/transsion/camera/feature/slimbody/R$dimen;->bottom_layout_height:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSlimBodyBottomBarHeight:I

    .line 317
    sget v3, Lcom/transsion/camera/feature/slimbody/R$dimen;->slimbody_translate_anim_distance:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateDistance:F

    .line 318
    sget v3, Lcom/transsion/camera/feature/slimbody/R$dimen;->slimbody_translate_anim_distance2:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateDistance2:F

    .line 319
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 v3, 0x3e800000    # 0.25f

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {p1, v3, v4, v3, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    new-array v3, v0, [F

    .line 320
    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xc8

    .line 321
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 322
    iget-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v3, v0, [F

    const/4 v6, 0x0

    aput v6, v3, v1

    .line 325
    iget v7, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateDistance:F

    aput v7, v3, v2

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    .line 326
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 327
    iget-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v0, v0, [F

    .line 330
    iget v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateDistance2:F

    neg-float v3, v3

    aput v3, v0, v1

    aput v6, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    .line 331
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 332
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 334
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->addAnimatorListener()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Lcom/transsion/camera/app/common/setting/ISetting;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Lcom/transsion/camera/app/common/setting/StatusMonitor;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;Z)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->computeSwitchBarSelectedState(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;Z)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->notifySlimbodyState(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Landroid/view/View;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mModeBarRoot:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Landroid/view/View;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mBottomBarRoot:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Landroid/view/View;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mBottomRootView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;FF)Z
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->isFloatEqual(FF)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mAnimShow:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->computeFilterRootVisibility()V

    return-void
.end method

.method static synthetic access$1800(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$ContrastListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mContrastListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$ContrastListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Landroid/view/View;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mContractBar:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;Z)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->hideSettingUI(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mFeatureLayout:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mGenderValue:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2202(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mGenderValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->doSlimBodyOnStatusChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;I)Z
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->settingUIAnimShowOrHide(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 39
    sget-object v0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;Z)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->setAnimState(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Landroid/os/Handler;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mUIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mDefaultOption:I

    return p0
.end method

.method private addAnimatorListener()V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 287
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 290
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 294
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateUpdateListener2:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 295
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2
    return-void
.end method

.method private cancelAnimation()V
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 423
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 424
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    return-void
.end method

.method private computeFilterRootVisibility()V
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mBottomRootView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 215
    iget-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mAnimShow:Z

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 216
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mBottomRootView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 218
    :cond_1
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->setAnimState(Z)V

    return-void
.end method

.method private computeSwitchBarSelectedState(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 429
    :goto_0
    iput p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mState:I

    .line 430
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    if-eqz v0, :cond_1

    .line 431
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->getCurrItem()Lcom/transsion/camera/feature/slimbody/data/SBPresetInfo;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->notifySwitcBarSelected(ILcom/transsion/camera/feature/slimbody/data/SBPresetInfo;)V

    :cond_1
    return-void
.end method

.method private doFaceBeautyOnStatusChanged(Ljava/lang/String;)V
    .locals 0

    .line 875
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;

    if-eqz p0, :cond_0

    .line 876
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->notifyValueChangedToUI(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private doSlimBodyOnStatusChanged(Ljava/lang/String;)V
    .locals 0

    .line 869
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    if-eqz p0, :cond_0

    .line 870
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->notifyValueChangedToUI(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private hideEntryRootView()V
    .locals 2

    .line 643
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    if-eqz v0, :cond_1

    .line 644
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 646
    iput-boolean v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mNeedShow:Z

    .line 647
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 650
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mFeatureLayout:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->hideDialog()V

    return-void
.end method

.method private hideSettingUI(Z)V
    .locals 3

    .line 436
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mBottomRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 439
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->cancelAnimation()V

    .line 440
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mBottomRootView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 441
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 442
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mBottomRootView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 443
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mBottomRootView:Landroid/view/View;

    iget v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateDistance2:F

    neg-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 446
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mModeBarRoot:Landroid/view/View;

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    const/4 v2, 0x0

    .line 447
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 448
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mModeBarRoot:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 449
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mModeBarRoot:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    if-eqz p1, :cond_3

    .line 452
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    if-eqz v0, :cond_3

    .line 453
    invoke-virtual {v0}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->hideContractView()V

    .line 456
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getModeRegionControl()Lcom/transsion/camera/app/common/IModeRegionControl;

    move-result-object v0

    if-eqz v0, :cond_4

    if-nez p1, :cond_4

    .line 458
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IModeRegionControl;->showModeRegion()V

    .line 460
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mBottomBarRoot:Landroid/view/View;

    if-eqz v0, :cond_5

    if-nez p1, :cond_5

    .line 461
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 464
    :cond_5
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    if-eqz p0, :cond_6

    if-nez p1, :cond_6

    .line 465
    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->transitionShutterToRegular()V

    :cond_6
    return-void
.end method

.method private initFeatureSwitch()V
    .locals 5

    .line 470
    iget v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mDefaultOption:I

    const-string v1, "0"

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    const-string v0, "1"

    .line 471
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v2, :cond_1

    .line 472
    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 474
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_slimbody_facebeauty_switch"

    invoke-virtual {v2, v4, v0, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 477
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 478
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->computeSwitchBarSelectedState(Z)V

    return-void
.end method

.method private isFloatEqual(FF)Z
    .locals 0

    sub-float/2addr p1, p2

    .line 206
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x3c23d70a    # 0.01f

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private notifySlimbodyState(Z)V
    .locals 1

    const-string v0, "key_slimbody_state"

    if-eqz p1, :cond_0

    .line 528
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "key_slimbody_state_on"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 530
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "key_slimbody_state_off"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private onModePanelStartPulling()V
    .locals 3

    .line 741
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    if-eqz v0, :cond_0

    .line 742
    invoke-virtual {v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->onBackPressed()I

    .line 745
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 746
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 747
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    const/4 v0, 0x0

    .line 751
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->hideSettingUI(Z)V

    .line 753
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mModeBarRoot:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 754
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 755
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mModeBarRoot:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 758
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mBottomBarRoot:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 759
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 762
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    if-eqz p0, :cond_4

    .line 763
    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->transitionShutterToRegular()V

    :cond_4
    return-void
.end method

.method private onModePanelStartReset()V
    .locals 2

    .line 768
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    if-eqz v0, :cond_0

    .line 769
    invoke-virtual {v0}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->resetToInitState()V

    .line 770
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 771
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 773
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->showEntryRootView()V

    return-void
.end method

.method private registerKeyToMonitor(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 916
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 917
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private removeAnimatorListener()V
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 302
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 305
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 309
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateUpdateListener2:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 310
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2
    return-void
.end method

.method private selectLatestPosition(Z)V
    .locals 3

    if-eqz p1, :cond_1

    .line 570
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    .line 571
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mFeatureLayout:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    .line 572
    invoke-virtual {v0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->defaultValueSlimBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_slimbody_latested_featureid"

    .line 571
    invoke-virtual {p1, v2, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-le p1, v1, :cond_0

    .line 574
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->notifyState(I)V

    .line 575
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->notifySlimbodyState(Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 577
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->notifySlimbodyState(Z)V

    :goto_0
    if-eq p1, v0, :cond_1

    .line 580
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mFeatureLayout:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->resetProgressBarAndSetValue(I)V

    :cond_1
    return-void
.end method

.method private setAnimState(Z)V
    .locals 0

    .line 627
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    if-eqz p0, :cond_0

    .line 628
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;->setAnimState(Z)V

    :cond_0
    return-void
.end method

.method private setEntryViewEnable(Z)V
    .locals 0

    .line 621
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    if-eqz p0, :cond_0

    .line 622
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;->setEnable(Z)V

    :cond_0
    return-void
.end method

.method private settingUIAnimShowOrHide(I)Z
    .locals 7

    .line 489
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mBottomRootView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mModeBarRoot:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mBottomBarRoot:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 490
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    const/16 v0, 0x8

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "0"

    .line 502
    invoke-direct {p0, v3}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->updateFeatureSwitch(Ljava/lang/String;)V

    .line 503
    iget-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->notifyShowHint()V

    .line 504
    iget-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mFeatureLayout:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->hideAwlaysHint()V

    .line 505
    iget-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->showContractView()V

    .line 506
    iget-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    invoke-virtual {v3, v2}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->notifyState(I)V

    .line 507
    iget-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 508
    iget-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const-string v3, "1"

    .line 495
    invoke-direct {p0, v3}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->updateFeatureSwitch(Ljava/lang/String;)V

    .line 496
    iget-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 497
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->notifyHideHint()V

    .line 498
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mFeatureLayout:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->hideAwlaysHint()V

    .line 499
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 512
    :goto_0
    iget v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mCurrentUIType:I

    if-ne v0, p1, :cond_3

    :goto_1
    move v1, v2

    goto :goto_2

    .line 515
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mBottomRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    float-to-double v3, v0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v3, v5

    if-eqz v0, :cond_4

    goto :goto_1

    .line 520
    :cond_4
    :goto_2
    iput p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mCurrentUIType:I

    .line 522
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->showOrHide(Z)V

    return v2

    :cond_5
    :goto_3
    return v1
.end method

.method private showEntryRootView()V
    .locals 2

    .line 633
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mFeatureLayout:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mGenderValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->setGender(Ljava/lang/String;)V

    .line 634
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    if-eqz v0, :cond_0

    .line 635
    iget-boolean v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mNeedShow:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 636
    iput-boolean v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mNeedShow:Z

    .line 637
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showOrHide(Z)V
    .locals 7

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    .line 536
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->setAnimState(Z)V

    .line 537
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mBottomRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    const/4 v3, 0x0

    if-gtz v2, :cond_0

    move v2, p1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 538
    :goto_0
    iput-boolean v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mAnimShow:Z

    if-eqz v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    move v2, v1

    .line 540
    :goto_1
    iget-object v4, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v5, 0x2

    new-array v6, v5, [F

    aput v0, v6, v3

    aput v2, v6, p1

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 541
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 542
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mBottomBarRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_2

    move v2, v1

    goto :goto_2

    .line 543
    :cond_2
    iget v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateDistance:F

    .line 544
    :goto_2
    iget-object v4, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    new-array v6, v5, [F

    aput v0, v6, v3

    aput v2, v6, p1

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 545
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mBottomRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_3

    move v2, v1

    goto :goto_3

    .line 546
    :cond_3
    iget v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateDistance2:F

    neg-float v2, v2

    .line 547
    :goto_3
    iget-object v4, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    new-array v5, v5, [F

    aput v0, v5, v3

    aput v2, v5, p1

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 548
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 549
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 551
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 552
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    iget-boolean v4, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mAnimShow:Z

    invoke-virtual {v0, v4}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->notifyExpand(Z)V

    .line 554
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    if-eqz v0, :cond_6

    .line 555
    iget-boolean v4, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mAnimShow:Z

    if-eqz v4, :cond_5

    .line 556
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->transitionShutterToSmall()V

    goto :goto_4

    .line 558
    :cond_5
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->transitionShutterToRegular()V

    :cond_6
    :goto_4
    cmpl-float v0, v2, v1

    if-nez v0, :cond_7

    goto :goto_5

    :cond_7
    move p1, v3

    .line 562
    :goto_5
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->notifySlimbodyState(Z)V

    .line 563
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->selectLatestPosition(Z)V

    :cond_8
    return-void
.end method

.method private unRegisterKeyToMonitor(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 922
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 923
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateFeatureSwitch(Ljava/lang/String;)V
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    .line 483
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 484
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->computeSwitchBarSelectedState(Z)V

    :cond_0
    return-void
.end method

.method private updateInteractiveUI()V
    .locals 6

    .line 393
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePickRootHeight()I

    move-result v0

    .line 394
    iget v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSlimBodyBottomBarHeight:I

    sub-int v1, v0, v1

    .line 395
    sget-object v2, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "topRootViewBottomPadding = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",bottomPadding = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-lez v1, :cond_0

    .line 397
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mBottomRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    .line 398
    iget-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mBottomRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    .line 399
    iget-object v4, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mBottomRootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    .line 400
    iget-object v5, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mBottomBarRoot:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    if-le v1, v5, :cond_0

    .line 402
    iget-object v5, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mBottomRootView:Landroid/view/View;

    invoke-virtual {v5, v2, v4, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    if-lez v0, :cond_1

    .line 406
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTopRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    .line 407
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTopRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    .line 408
    iget-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTopRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 409
    iget-object v4, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTopRootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    if-le v0, v4, :cond_1

    .line 411
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTopRootView:Landroid/view/View;

    invoke-virtual {p0, v1, v3, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .locals 3

    .line 587
    sget-object v0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "init createEntryView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 588
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/setting/CustomConfigUtil;->getInstance(Landroid/content/Context;)Lcom/transsion/camera/feature/slimbody/setting/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/slimbody/setting/CustomConfigUtil;->getDefaultOption()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mDefaultOption:I

    .line 589
    sget-object v0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SlimBodyConfig mDefaultOption = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mDefaultOption:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 590
    iput-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    .line 591
    iput-object p3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

    .line 592
    sget p3, Lcom/transsion/camera/feature/slimbody/R$layout;->main_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    .line 593
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getBottombarRoot()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mBottomBarRoot:Landroid/view/View;

    .line 594
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getModeBarRoot()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mModeBarRoot:Landroid/view/View;

    .line 595
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    sget p2, Lcom/transsion/camera/feature/slimbody/R$id;->bottom_root_view:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mBottomRootView:Landroid/view/View;

    .line 596
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    sget p2, Lcom/transsion/camera/feature/slimbody/R$id;->top_root_view:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTopRootView:Landroid/view/View;

    .line 597
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    sget p2, Lcom/transsion/camera/feature/slimbody/R$id;->slimbody_root:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    .line 598
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    sget p2, Lcom/transsion/camera/feature/slimbody/R$id;->feature_layout:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mFeatureLayout:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    .line 599
    iget-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 600
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mFeatureLayout:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    iget-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSlimBodyInfoListener:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;

    iget-object p3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->setListener(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V

    .line 601
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    iget-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 602
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    iget-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSlimBodyInfoListener:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;

    iget-object p3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->setBarClickListner(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V

    .line 603
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->setHintControl(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V

    .line 604
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->setType(I)V

    .line 605
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    sget p2, Lcom/transsion/camera/feature/slimbody/R$id;->facebeauty_root:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;

    .line 606
    iget-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 607
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    sget p2, Lcom/transsion/camera/feature/slimbody/R$id;->topbar_root:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    .line 608
    iget-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mIndicatorClickListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$BarClickListener;

    iget-object p3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSeekbarChangeListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$SeekBarChangeListener;

    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mContrastListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$ContrastListener;

    invoke-virtual {p1, p2, p3, v1}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->setListener(Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$BarClickListener;Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$SeekBarChangeListener;Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$ContrastListener;)V

    .line 609
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->notifyState(I)V

    .line 610
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->getmContractBar()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mContractBar:Landroid/view/View;

    .line 611
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->updateInteractiveUI()V

    .line 612
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->hideSettingUI(Z)V

    .line 613
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->initFeatureSwitch()V

    .line 614
    iput-boolean p2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mNeedShow:Z

    .line 615
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->setEntryViewEnable(Z)V

    .line 616
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->showEntryRootView()V

    .line 617
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    return-object p0
.end method

.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEntryRootView()Landroid/view/ViewGroup;
    .locals 0

    .line 799
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getEntryView()Landroid/view/View;
    .locals 0

    .line 794
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 824
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "key_slimbody_info"

    .line 825
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "key_slimbody_face_beauty"

    .line 826
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "key_multi_contrast"

    .line 827
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "key_multi_face_state"

    .line 828
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "key_gender_attribute_value"

    .line 829
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public notifyCameraOperateAction(I)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/16 v2, 0x9

    if-eq p1, v2, :cond_5

    const/16 v2, 0x4c

    if-eq p1, v2, :cond_3

    const/16 v2, 0x23

    if-eq p1, v2, :cond_2

    const/16 v2, 0x24

    if-eq p1, v2, :cond_1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    goto/16 :goto_2

    .line 721
    :pswitch_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->onModePanelStartPulling()V

    goto/16 :goto_2

    .line 735
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->notifySlimbodyState(Z)V

    goto/16 :goto_2

    .line 660
    :pswitch_2
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->showEntryRootView()V

    goto/16 :goto_2

    .line 688
    :pswitch_3
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mFeatureLayout:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->hideDialog()V

    goto :goto_0

    .line 673
    :pswitch_4
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->showEntryRootView()V

    .line 674
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    if-eqz p0, :cond_7

    .line 675
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->notifyState(I)V

    goto/16 :goto_2

    .line 669
    :pswitch_5
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->hideSettingUI(Z)V

    .line 670
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->hideEntryRootView()V

    goto/16 :goto_2

    .line 679
    :pswitch_6
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->showEntryRootView()V

    goto/16 :goto_2

    .line 663
    :pswitch_7
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mBottomRootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/4 v2, 0x0

    cmpl-float p1, p1, v2

    if-lez p1, :cond_0

    move v0, v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->showOrHide(Z)V

    .line 664
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->hideEntryRootView()V

    .line 665
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->setBackToPreset()V

    .line 666
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->hideAwlaysHint()V

    goto :goto_2

    .line 692
    :goto_0
    :pswitch_8
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->setEnable(Z)V

    goto :goto_2

    .line 702
    :pswitch_9
    iput-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSelfTimerCapturing:Z

    .line 703
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->showEntryRootView()V

    .line 704
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    if-eqz p1, :cond_7

    .line 705
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 706
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_2

    .line 682
    :pswitch_a
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->hideSettingUI(Z)V

    .line 683
    iput-boolean v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSelfTimerCapturing:Z

    goto :goto_1

    .line 710
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->showEntryRootView()V

    goto :goto_2

    .line 657
    :cond_2
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->hideEntryRootView()V

    goto :goto_2

    .line 726
    :cond_3
    :pswitch_b
    iget-boolean p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSelfTimerCapturing:Z

    if-nez p1, :cond_7

    .line 727
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->onModePanelStartReset()V

    .line 728
    iget-boolean p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mAnimShow:Z

    if-eqz p1, :cond_7

    .line 729
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->showOrHide(Z)V

    .line 730
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->setAnimState(Z)V

    goto :goto_2

    .line 685
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->hideEntryRootView()V

    goto :goto_2

    .line 718
    :cond_5
    :pswitch_c
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->setEnable(Z)V

    goto :goto_2

    .line 695
    :cond_6
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->setEnable(Z)V

    .line 696
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mFeatureLayout:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->hideDialog()V

    .line 697
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_7

    .line 698
    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->getKeys()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->unRegisterKeyToMonitor(Ljava/util/List;)V

    :cond_7
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_c
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x19
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_8
        :pswitch_c
        :pswitch_c
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x35
        :pswitch_1
        :pswitch_8
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x48
        :pswitch_0
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 4

    .line 345
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mBottomRootView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    const/4 v2, 0x2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->onBackPressed()I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    const/4 v3, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_3

    goto :goto_1

    .line 355
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mFeatureLayout:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->hideAwlaysHint()V

    .line 356
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->hideSettingUI(Z)V

    goto :goto_2

    .line 359
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    if-eqz v0, :cond_7

    .line 360
    invoke-virtual {v0, v3}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->notifyState(I)V

    .line 361
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mFeatureLayout:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->hideAwlaysHint()V

    .line 362
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->hideSettingUI(Z)V

    goto :goto_2

    .line 367
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    .line 369
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mFeatureLayout:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->hideAwlaysHint()V

    .line 370
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->hideSettingUI(Z)V

    goto :goto_2

    :cond_6
    :goto_1
    move v3, v1

    .line 374
    :cond_7
    :goto_2
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->notifySlimbodyState(Z)V

    return v3
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public restoreInteractiveView()V
    .locals 1

    .line 858
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    if-eqz v0, :cond_0

    .line 859
    invoke-virtual {v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->onBackPressed()I

    :cond_0
    const/4 v0, 0x0

    .line 861
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->hideSettingUI(Z)V

    .line 862
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->onModePanelStartReset()V

    return-void
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    return-void
.end method

.method public setDeviceSettingData(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;",
            ">;)V"
        }
    .end annotation

    .line 835
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setDeviceSettingData(Ljava/util/List;)V

    if-nez p1, :cond_0

    .line 837
    sget-object p1, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDeviceSettingData is null,key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 840
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;

    .line 841
    sget-object v1, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDeviceSettingData key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",iSetting = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 842
    iget-object v1, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    const-string v2, "key_slimbody_info"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 843
    iget-object v0, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    goto :goto_0

    .line 844
    :cond_2
    iget-object v1, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    const-string v2, "key_slimbody_face_beauty"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 845
    iget-object v0, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    goto :goto_0

    .line 848
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->getKeys()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->registerKeyToMonitor(Ljava/util/List;)V

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 809
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->setEntryViewEnable(Z)V

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 0

    .line 946
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V
    .locals 0

    .line 951
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V

    .line 952
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 778
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 779
    sget-object v0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "unInit createEntryView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 780
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mContrastListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$ContrastListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$ContrastListener;->closeContrast(Z)V

    .line 781
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->hideEntryRootView()V

    const/4 v0, 0x0

    .line 782
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->hideSettingUI(Z)V

    .line 783
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    if-eqz v0, :cond_0

    .line 784
    invoke-virtual {v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->unInit()V

    .line 786
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_1

    .line 787
    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->getKeys()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->unRegisterKeyToMonitor(Ljava/util/List;)V

    .line 789
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->removeAnimatorListener()V

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 804
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->updateInteractiveUI()V

    return-void
.end method
