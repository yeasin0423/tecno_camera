.class public Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "FunVideoBeautySettingUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DURATION:I = 0x12c

.field private static final MSG_ON_FACEBEAUTY_VALUE_CHANGED:I = 0x2

.field private static final MSG_ON_SLIMBODY_VALUE_CHANGED:I = 0x1

.field private static final OPERATE_SETTING_UI_FB:I = 0x0

.field private static final OPERATE_SETTING_UI_SB:I = 0x1

.field private static final PRECISION:F = 0.01f

.field private static final RECYCLE_VIEW_ANIM_DURATION:I = 0x12c

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mAnimShow:Z

.field private mBottomBarRoot:Landroid/view/View;

.field private mBottomRootView:Landroid/view/View;

.field protected mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private mContrastListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$ContrastListener;

.field private mContrastView:Landroid/widget/ImageView;

.field private mCurrentUIType:I

.field private mEntryRootView:Landroid/view/ViewGroup;

.field private mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

.field private mFaceBeautyRoot:Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;

.field private mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mIndicatorClickListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$BarClickListener;

.field private mInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

.field private mIsVideoBeautyIsShowing:Z

.field private mModeBarAnimFlag:Z

.field private mModeBarRoot:Landroid/view/View;

.field private mNeedShow:Z

.field private mSeekbarChangeListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$SeekBarChangeListener;

.field private mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

.field private mSlimBodyBottomBarHeight:I

.field private mSlimBodyInfoListener:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;

.field private mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

.field private mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mSlimBodyView:Landroid/widget/ImageView;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

.field private mTopRootView:Landroid/view/View;

.field private mTranslateAnimator:Landroid/animation/ValueAnimator;

.field private mTranslateDistance:F

.field private mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FunVideoBeautySettingUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 6

    .line 232
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mIsVideoBeautyIsShowing:Z

    const/4 v1, 0x1

    .line 58
    iput-boolean v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mModeBarAnimFlag:Z

    const/4 v2, 0x0

    .line 66
    iput-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    .line 68
    new-instance v2, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$1;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$1;-><init>(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;)V

    iput-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mContrastListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$ContrastListener;

    .line 108
    new-instance v2, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$2;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$2;-><init>(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;)V

    iput-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mSeekbarChangeListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$SeekBarChangeListener;

    .line 117
    new-instance v2, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$3;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$3;-><init>(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;)V

    iput-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mIndicatorClickListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$BarClickListener;

    .line 130
    new-instance v2, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$4;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$4;-><init>(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;)V

    iput-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mSlimBodyInfoListener:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;

    .line 173
    new-instance v2, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$5;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$5;-><init>(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;)V

    iput-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 191
    new-instance v2, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$6;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$6;-><init>(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;)V

    iput-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 658
    new-instance v2, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$7;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$7;-><init>(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;)V

    iput-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 683
    new-instance v2, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$8;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$8;-><init>(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;)V

    iput-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mUIHandler:Landroid/os/Handler;

    .line 233
    sget-object v2, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "init"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 234
    sget v2, Lcom/transsion/camera/feature/slimbody/R$dimen;->bottom_layout_height:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mSlimBodyBottomBarHeight:I

    .line 235
    sget v2, Lcom/transsion/camera/feature/slimbody/R$dimen;->slimbody_translate_anim_distance:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTranslateDistance:F

    .line 236
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3e800000    # 0.25f

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p1, v2, v3, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/4 v2, 0x2

    new-array v3, v2, [F

    .line 237
    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x12c

    .line 238
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 239
    iget-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v3, v2, v0

    .line 241
    iget v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTranslateDistance:F

    aput v0, v2, v1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    .line 242
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 243
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 244
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->addAnimatorListener()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;)Lcom/transsion/camera/app/common/setting/ISetting;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;)Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mModeBarAnimFlag:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;FF)Z
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->isFloatEqual(FF)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->computeFilterRootVisibility()V

    return-void
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->doSlimBodyOnStatusChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;I)Z
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->settingUIAnimShowOrHide(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;Z)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->setAnimState(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;)Landroid/os/Handler;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mUIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;)Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;)F
    .locals 0

    .line 33
    iget p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTranslateDistance:F

    return p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;)Landroid/view/View;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mModeBarRoot:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;)Landroid/view/View;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mBottomRootView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;)Landroid/view/View;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mBottomBarRoot:Landroid/view/View;

    return-object p0
.end method

.method private addAnimatorListener()V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 215
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 218
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_1
    return-void
.end method

.method private cancelAnimation()V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x0

    .line 326
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->setAnimState(Z)V

    return-void
.end method

.method private computeFilterRootVisibility()V
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mBottomRootView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 167
    iget-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mAnimShow:Z

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 168
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mBottomRootView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 170
    :cond_1
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->setAnimState(Z)V

    return-void
.end method

.method private computeSwitchBarSelectedState(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 331
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 332
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->notifySwitcBarSelected(ILcom/transsion/camera/feature/slimbody/data/SBPresetInfo;)V

    :cond_1
    return-void
.end method

.method private doFaceBeautyOnStatusChanged(Ljava/lang/String;)V
    .locals 0

    .line 653
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;

    if-eqz p0, :cond_0

    .line 654
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->notifyValueChangedToUI(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private doSlimBodyOnStatusChanged(Ljava/lang/String;)V
    .locals 0

    .line 647
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    if-eqz p0, :cond_0

    .line 648
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->notifyValueChangedToUI(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private hideEntryRootView()V
    .locals 2

    .line 505
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    if-eqz v0, :cond_1

    .line 506
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

    .line 508
    iput-boolean v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mNeedShow:Z

    .line 509
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private hideSettingUI()V
    .locals 3

    const/4 v0, 0x0

    .line 337
    iput-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mIsVideoBeautyIsShowing:Z

    .line 338
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mBottomRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 341
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->cancelAnimation()V

    .line 342
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mBottomRootView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 343
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 344
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mBottomRootView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mBottomRootView:Landroid/view/View;

    iget v2, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTranslateDistance:F

    neg-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mModeBarRoot:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 348
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 349
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mModeBarRoot:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 352
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mBottomBarRoot:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 353
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 356
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    if-eqz p0, :cond_4

    .line 357
    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->transitionShutterToRegular()V

    :cond_4
    return-void
.end method

.method private isFloatEqual(FF)Z
    .locals 0

    sub-float/2addr p1, p2

    .line 158
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

    .line 672
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 673
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private removeAnimatorListener()V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 224
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 227
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_1
    return-void
.end method

.method private setAnimState(Z)V
    .locals 0

    .line 490
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    if-eqz p0, :cond_0

    .line 491
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;->setAnimState(Z)V

    :cond_0
    return-void
.end method

.method private setEntryViewEnable(Z)V
    .locals 0

    .line 484
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    if-eqz p0, :cond_0

    .line 485
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;->setEnable(Z)V

    :cond_0
    return-void
.end method

.method private settingUIAnimShowOrHide(I)Z
    .locals 7

    .line 377
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mBottomRootView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mModeBarRoot:Landroid/view/View;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mBottomBarRoot:Landroid/view/View;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 378
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_9

    :cond_0
    const/16 v0, 0x8

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "0"

    .line 389
    invoke-direct {p0, v3}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->updateFeatureSwitch(Ljava/lang/String;)V

    .line 390
    iget-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->notifyShowHint()V

    .line 391
    iget-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 392
    iget-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const-string v3, "1"

    .line 383
    invoke-direct {p0, v3}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->updateFeatureSwitch(Ljava/lang/String;)V

    .line 384
    iget-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 385
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->notifyHideHint()V

    .line 386
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 396
    :goto_0
    iget v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mCurrentUIType:I

    if-ne v0, p1, :cond_3

    :goto_1
    move v0, v2

    goto :goto_2

    .line 399
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mBottomRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    float-to-double v3, v0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v3, v5

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    move v0, v1

    .line 404
    :goto_2
    iput p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mCurrentUIType:I

    if-eqz v0, :cond_f

    .line 406
    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->setAnimState(Z)V

    .line 407
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mBottomRootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/4 v0, 0x0

    cmpg-float v3, p1, v0

    if-gtz v3, :cond_5

    move v3, v2

    goto :goto_3

    :cond_5
    move v3, v1

    .line 408
    :goto_3
    iput-boolean v3, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mAnimShow:Z

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_6

    move v3, v4

    goto :goto_4

    :cond_6
    move v3, v0

    .line 410
    :goto_4
    iget-object v5, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mModeBarRoot:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v5

    cmpl-float v5, v5, v0

    if-nez v5, :cond_7

    cmpl-float v4, v3, v4

    if-nez v4, :cond_7

    .line 411
    iput-boolean v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mModeBarAnimFlag:Z

    goto :goto_5

    .line 413
    :cond_7
    iput-boolean v2, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mModeBarAnimFlag:Z

    .line 415
    :goto_5
    iget-object v4, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v5, 0x2

    new-array v6, v5, [F

    aput p1, v6, v1

    aput v3, v6, v2

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 416
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 417
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mBottomBarRoot:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    cmpl-float v3, p1, v0

    if-lez v3, :cond_8

    goto :goto_6

    .line 418
    :cond_8
    iget v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTranslateDistance:F

    .line 419
    :goto_6
    iget-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    new-array v4, v5, [F

    aput p1, v4, v1

    aput v0, v4, v2

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 420
    iget-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mIsVideoBeautyIsShowing:Z

    if-nez v0, :cond_9

    .line 421
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    new-array v3, v5, [F

    aput p1, v3, v1

    iget p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTranslateDistance:F

    aput p1, v3, v2

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 423
    :cond_9
    iget-boolean p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mIsVideoBeautyIsShowing:Z

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz p1, :cond_a

    const/16 v0, 0x31

    .line 424
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 425
    iput-boolean v2, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mIsVideoBeautyIsShowing:Z

    goto :goto_7

    .line 426
    :cond_a
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz p1, :cond_b

    const/16 v0, 0x32

    .line 427
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 428
    iput-boolean v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mIsVideoBeautyIsShowing:Z

    .line 430
    :cond_b
    :goto_7
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 431
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_c

    .line 432
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    iget-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mAnimShow:Z

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->notifyExpand(Z)V

    .line 434
    :cond_c
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    if-eqz p1, :cond_f

    .line 435
    iget-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mAnimShow:Z

    if-eqz v0, :cond_d

    .line 436
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->transitionShutterToSmall()V

    goto :goto_8

    .line 438
    :cond_d
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mModeBarRoot:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_e

    .line 439
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mModeBarRoot:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 441
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->transitionShutterToRegular()V

    :cond_f
    :goto_8
    return v2

    :cond_10
    :goto_9
    return v1
.end method

.method private showEntryRootView()V
    .locals 2

    .line 496
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    if-eqz v0, :cond_0

    .line 497
    iget-boolean v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mNeedShow:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 498
    iput-boolean v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mNeedShow:Z

    .line 499
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
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

    .line 678
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 679
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateFeatureSwitch(Ljava/lang/String;)V
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    .line 363
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 364
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->computeSwitchBarSelectedState(Z)V

    .line 365
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 366
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 367
    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->toObject(Ljava/lang/String;)Lcom/transsion/camera/feature/slimbody/data/SBItemData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 369
    iput-object p1, v0, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->switchState:Ljava/lang/String;

    .line 370
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->toJson(Lcom/transsion/camera/feature/slimbody/data/SBItemData;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateInteractiveUI()V
    .locals 6

    .line 296
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePickRootHeight()I

    move-result v0

    .line 297
    iget v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mSlimBodyBottomBarHeight:I

    sub-int v1, v0, v1

    .line 298
    sget-object v2, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 300
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mBottomRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    .line 301
    iget-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mBottomRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    .line 302
    iget-object v4, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mBottomRootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    .line 303
    iget-object v5, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mBottomBarRoot:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    if-le v1, v5, :cond_0

    .line 305
    iget-object v5, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mBottomRootView:Landroid/view/View;

    invoke-virtual {v5, v2, v4, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    if-lez v0, :cond_1

    .line 309
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTopRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    .line 310
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTopRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    .line 311
    iget-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTopRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 312
    iget-object v4, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTopRootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    if-le v0, v4, :cond_1

    .line 314
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTopRootView:Landroid/view/View;

    invoke-virtual {p0, v1, v3, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .locals 2

    .line 450
    sget-object v0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "init createEntryView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 451
    iput-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    .line 452
    iput-object p3, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

    .line 453
    sget p3, Lcom/transsion/camera/feature/slimbody/R$layout;->main_video_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    .line 454
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getBottombarRoot()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mBottomBarRoot:Landroid/view/View;

    .line 455
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getModeBarRoot()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mModeBarRoot:Landroid/view/View;

    .line 456
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    sget p2, Lcom/transsion/camera/feature/slimbody/R$id;->bottom_root_view:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mBottomRootView:Landroid/view/View;

    const/4 p2, 0x0

    .line 457
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 458
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mBottomRootView:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 459
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mBottomRootView:Landroid/view/View;

    iget p3, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTranslateDistance:F

    neg-float p3, p3

    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 460
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    sget p3, Lcom/transsion/camera/feature/slimbody/R$id;->top_root_video_view:I

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTopRootView:Landroid/view/View;

    .line 461
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    sget p3, Lcom/transsion/camera/feature/slimbody/R$id;->slimbody_root:I

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    .line 462
    iget-object p3, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {p1, p3}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 463
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    iget-object p3, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mSlimBodyInfoListener:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    invoke-virtual {p1, p3, v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->setBarClickListner(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V

    .line 464
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    iget-object p3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    invoke-virtual {p1, p3}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->setHintControl(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V

    .line 465
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    sget p3, Lcom/transsion/camera/feature/slimbody/R$id;->facebeauty_root:I

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;

    .line 466
    iget-object p3, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {p1, p3}, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 467
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    sget p3, Lcom/transsion/camera/feature/slimbody/R$id;->topbar_video_root:I

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    .line 468
    iget-object p3, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mIndicatorClickListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$BarClickListener;

    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mSeekbarChangeListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$SeekBarChangeListener;

    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mContrastListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$ContrastListener;

    invoke-virtual {p1, p3, v0, v1}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->setListener(Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$BarClickListener;Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$SeekBarChangeListener;Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$ContrastListener;)V

    .line 469
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->notifyState(I)V

    .line 470
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    sget v0, Lcom/transsion/camera/feature/slimbody/R$id;->contrast:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mContrastView:Landroid/widget/ImageView;

    .line 471
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 472
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    sget v0, Lcom/transsion/camera/feature/slimbody/R$id;->slimbody_bar:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mSlimBodyView:Landroid/widget/ImageView;

    .line 473
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 474
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->updateInteractiveUI()V

    .line 475
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->hideSettingUI()V

    .line 476
    iput-boolean p3, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mNeedShow:Z

    .line 477
    invoke-direct {p0, p3}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->setEntryViewEnable(Z)V

    .line 478
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->showEntryRootView()V

    const-string p1, "1"

    .line 479
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->updateFeatureSwitch(Ljava/lang/String;)V

    .line 480
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    return-object p0
.end method

.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEntryRootView()Landroid/view/ViewGroup;
    .locals 0

    .line 583
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getEntryView()Landroid/view/View;
    .locals 0

    .line 578
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

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

    .line 608
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "key_slimbody_info"

    .line 609
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "key_face_beauty"

    .line 610
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

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/16 v2, 0x9

    if-eq p1, v2, :cond_4

    const/16 v2, 0x38

    if-eq p1, v2, :cond_2

    const/16 v2, 0x23

    if-eq p1, v2, :cond_1

    const/16 v2, 0x24

    if-eq p1, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    goto :goto_0

    .line 524
    :pswitch_0
    iput-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mIsVideoBeautyIsShowing:Z

    goto :goto_0

    .line 527
    :pswitch_1
    iput-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mIsVideoBeautyIsShowing:Z

    .line 528
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->hideSettingUI()V

    goto :goto_0

    .line 521
    :pswitch_2
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->showEntryRootView()V

    goto :goto_0

    .line 538
    :pswitch_3
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->hideSettingUI()V

    .line 539
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->hideEntryRootView()V

    goto :goto_0

    .line 550
    :cond_0
    :pswitch_4
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->showEntryRootView()V

    goto :goto_0

    .line 518
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->hideEntryRootView()V

    goto :goto_0

    .line 534
    :cond_2
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->hideSettingUI()V

    goto :goto_0

    .line 531
    :cond_3
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->hideEntryRootView()V

    goto :goto_0

    .line 557
    :cond_4
    :pswitch_5
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->setEnable(Z)V

    goto :goto_0

    .line 545
    :cond_5
    :pswitch_6
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->setEnable(Z)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1c
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2d
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 4

    .line 250
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mBottomRootView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    const/4 v2, 0x2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->onBackPressed()I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    const/4 v3, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v3, :cond_5

    if-eq v0, v2, :cond_3

    goto :goto_2

    .line 260
    :cond_3
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->hideSettingUI()V

    :cond_4
    :goto_1
    move v1, v3

    goto :goto_2

    .line 263
    :cond_5
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    if-eqz p0, :cond_4

    .line 264
    invoke-virtual {p0, v3}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->notifyState(I)V

    goto :goto_1

    .line 269
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    .line 270
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mModeBarRoot:Landroid/view/View;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_7

    .line 271
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mModeBarRoot:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 274
    :cond_7
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->hideSettingUI()V

    goto :goto_1

    :cond_8
    :goto_2
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public restoreInteractiveView()V
    .locals 0

    .line 640
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->hideSettingUI()V

    return-void
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .locals 0

    .line 719
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

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

    .line 616
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setDeviceSettingData(Ljava/util/List;)V

    if-nez p1, :cond_0

    .line 618
    sget-object p1, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDeviceSettingData is null,key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 621
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;

    .line 622
    sget-object v1, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 623
    iget-object v1, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    const-string v2, "key_slimbody_info"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 624
    iget-object v0, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    goto :goto_0

    .line 625
    :cond_2
    iget-object v1, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    const-string v2, "key_slimbody_face_beauty"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 626
    iget-object v0, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    goto :goto_0

    .line 627
    :cond_3
    iget-object v1, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    const-string v2, "key_face_beauty"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 628
    iget-object v0, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    goto :goto_0

    .line 631
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->getKeys()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->registerKeyToMonitor(Ljava/util/List;)V

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 593
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->setEntryViewEnable(Z)V

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 0

    .line 702
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V
    .locals 0

    .line 707
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V

    .line 708
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 564
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 565
    sget-object v0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "unInit createEntryView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 566
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mContrastListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$ContrastListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$ContrastListener;->closeContrast(Z)V

    .line 567
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->hideEntryRootView()V

    .line 568
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->hideSettingUI()V

    .line 569
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->unInit()V

    .line 570
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_0

    .line 571
    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->getKeys()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->unRegisterKeyToMonitor(Ljava/util/List;)V

    .line 573
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->removeAnimatorListener()V

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 588
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->updateInteractiveUI()V

    return-void
.end method
