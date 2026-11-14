.class public Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SlimBodyVideoSettingUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DURATION:I = 0x12c

.field private static final MSG_ON_FACEBEAUTY_VALUE_CHANGED:I = 0x2

.field private static final MSG_ON_SLIMBODY_VALUE_CHANGED:I = 0x1

.field private static final MSG_ON_VIDEO_BEAUTY_SWITCH_CHANGED:I = 0x3

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

.field private mContext:Landroid/content/Context;

.field private mContrastListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$ContrastListener;

.field private mCurrentUIType:I

.field private mEntryRootView:Landroid/view/ViewGroup;

.field private mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

.field private mFaceBeautyRoot:Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;

.field private mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mIndex:I

.field private mIndicatorClickListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$BarClickListener;

.field private mInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

.field private mModeBarRoot:Landroid/view/View;

.field private mNeedShow:Z

.field private mNotifyToUI:Z

.field private mSeekbarChangeListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$SeekBarChangeListener;

.field private mSelfTimerCapturing:Z

.field private mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

.field private mSlimBodyBottomBarHeight:I

.field private mSlimBodyFaceBeautyIcon:Landroid/widget/ImageView;

.field private mSlimBodyIcon:Landroid/widget/ImageView;

.field private mSlimBodyInfoListener:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;

.field private mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

.field private mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

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

    .line 45
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SlimBodySettingUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 8

    .line 306
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    const/4 v0, -0x1

    .line 74
    iput v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mIndex:I

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mNotifyToUI:Z

    const/4 v1, 0x0

    .line 80
    iput-boolean v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSelfTimerCapturing:Z

    .line 82
    new-instance v2, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$1;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$1;-><init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)V

    iput-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mContrastListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$ContrastListener;

    .line 125
    new-instance v2, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$2;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$2;-><init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)V

    iput-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSeekbarChangeListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$SeekBarChangeListener;

    .line 134
    new-instance v2, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$3;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$3;-><init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)V

    iput-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mIndicatorClickListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$BarClickListener;

    .line 149
    new-instance v2, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$4;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$4;-><init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)V

    iput-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSlimBodyInfoListener:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;

    .line 202
    new-instance v2, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$5;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$5;-><init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)V

    iput-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 217
    new-instance v2, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$6;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$6;-><init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)V

    iput-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTranslateUpdateListener2:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 229
    new-instance v2, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$7;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$7;-><init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)V

    iput-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 259
    new-instance v2, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$8;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$8;-><init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)V

    iput-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTranslateListener:Landroid/animation/AnimatorListenerAdapter;

    .line 936
    new-instance v2, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$9;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$9;-><init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)V

    iput-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 964
    new-instance v2, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$10;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$10;-><init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)V

    iput-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mUIHandler:Landroid/os/Handler;

    .line 307
    sget-object v2, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "init"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 308
    sget v2, Lcom/transsion/camera/feature/slimbody/R$dimen;->bottom_layout_height:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSlimBodyBottomBarHeight:I

    .line 309
    sget v2, Lcom/transsion/camera/feature/slimbody/R$dimen;->slimbody_translate_anim_distance:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTranslateDistance:F

    .line 310
    sget v2, Lcom/transsion/camera/feature/slimbody/R$dimen;->slimbody_translate_anim_distance2:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTranslateDistance2:F

    .line 311
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3e800000    # 0.25f

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p1, v2, v3, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/4 v2, 0x2

    new-array v3, v2, [F

    .line 312
    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x12c

    .line 313
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 314
    iget-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v3, v2, [F

    const/4 v6, 0x0

    aput v6, v3, v1

    .line 317
    iget v7, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTranslateDistance:F

    aput v7, v3, v0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    .line 318
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 319
    iget-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v2, v2, [F

    .line 322
    iget v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTranslateDistance2:F

    neg-float v3, v3

    aput v3, v2, v1

    aput v6, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    .line 323
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 324
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 326
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->addAnimatorListener()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)Lcom/transsion/camera/app/common/setting/ISetting;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)Landroid/view/View;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mBottomBarRoot:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)Landroid/view/View;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mBottomRootView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;FF)Z
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->isFloatEqual(FF)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)Lcom/transsion/camera/app/common/interactive/CommonInteractive;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mAnimShow:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->computeFilterRootVisibility()V

    return-void
.end method

.method static synthetic access$1600()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 44
    sget-object v0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mNotifyToUI:Z

    return p0
.end method

.method static synthetic access$1800(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;Z)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->showOrHide(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mIndex:I

    return p0
.end method

.method static synthetic access$2000(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->hideEntryRootView()V

    return-void
.end method

.method static synthetic access$202(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;I)I
    .locals 0

    .line 44
    iput p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mIndex:I

    return p1
.end method

.method static synthetic access$2100(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->computeSwitchBarSelectedState(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;Z)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->showEntryRootView(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)Landroid/content/Context;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->doSlimBodyOnStatusChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->doVideoBeautySwitchChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;I)Z
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->settingUIAnimShowOrHide(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;Z)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->setAnimState(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)Landroid/os/Handler;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mUIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)Lcom/transsion/camera/app/common/setting/StatusMonitor;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)Landroid/view/View;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mModeBarRoot:Landroid/view/View;

    return-object p0
.end method

.method private addAnimatorListener()V
    .locals 2

    .line 278
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 279
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 282
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 286
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTranslateUpdateListener2:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 287
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTranslateListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2
    return-void
.end method

.method private cancelAnimation()V
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 408
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 410
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 411
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    return-void
.end method

.method private computeFilterRootVisibility()V
    .locals 3

    .line 195
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mBottomRootView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 196
    iget-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mAnimShow:Z

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 197
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mBottomRootView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 199
    :cond_1
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->setAnimState(Z)V

    return-void
.end method

.method private computeSwitchBarSelectedState(I)V
    .locals 5

    .line 416
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    if-eqz v0, :cond_6

    .line 417
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->getCurrItem()Lcom/transsion/camera/feature/slimbody/data/SBPresetInfo;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->notifySwitcBarSelected(ILcom/transsion/camera/feature/slimbody/data/SBPresetInfo;)V

    .line 419
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez v0, :cond_0

    .line 420
    sget-object p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "computeSwitchBarSelectedState mSlimBodySetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 424
    :cond_0
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    const-string v2, "key_video_slimbody_facebeauty_switch"

    const/4 v3, 0x1

    if-eq p1, v3, :cond_3

    const/4 v4, 0x2

    if-eq p1, v4, :cond_1

    goto :goto_0

    .line 444
    :cond_1
    iput v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mIndex:I

    if-eqz v0, :cond_2

    .line 448
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p1

    const-string v4, "0"

    .line 447
    invoke-virtual {v0, v2, v4, p1, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 450
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1, v3}, Lcom/transsion/camera/app/common/setting/ISetting;->turnOnSwitch(Z)V

    .line 451
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->turnOnSwitch(Z)V

    goto :goto_0

    .line 434
    :cond_3
    iput v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mIndex:I

    if-eqz v0, :cond_4

    .line 438
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p1

    const-string v4, "1"

    .line 437
    invoke-virtual {v0, v2, v4, p1, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 440
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->turnOnSwitch(Z)V

    .line 441
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0, v3}, Lcom/transsion/camera/app/common/setting/ISetting;->turnOnSwitch(Z)V

    goto :goto_0

    .line 428
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->turnOnSwitch(Z)V

    .line 429
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->turnOnSwitch(Z)V

    .line 431
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->setBackToPreset()V

    :cond_6
    :goto_0
    return-void
.end method

.method private doFaceBeautyOnStatusChanged(Ljava/lang/String;)V
    .locals 0

    .line 931
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;

    if-eqz p0, :cond_0

    .line 932
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->notifyValueChangedToUI(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private doSlimBodyOnStatusChanged(Ljava/lang/String;)V
    .locals 0

    .line 925
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    if-eqz p0, :cond_0

    .line 926
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->notifyValueChangedToUI(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private doVideoBeautySwitchChanged(Ljava/lang/String;)V
    .locals 2

    const-string v0, "video_facebeauty_on"

    .line 984
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 985
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->updateFeatureSwitch()V

    .line 986
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->showEntryRootView(Z)V

    goto :goto_0

    :cond_0
    const-string v0, "video_facebeauty_off"

    .line 987
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 988
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->computeSwitchBarSelectedState(I)V

    .line 989
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->hideEntryRootView()V

    .line 990
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->hideSettingUI()V

    :cond_1
    :goto_0
    return-void
.end method

.method private hideEntryRootView()V
    .locals 2

    .line 675
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    if-eqz v0, :cond_1

    .line 676
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

    .line 678
    iput-boolean v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mNeedShow:Z

    .line 679
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private hideSettingUI()V
    .locals 3

    .line 458
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mBottomRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 461
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->cancelAnimation()V

    .line 462
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mBottomRootView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 463
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 464
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mBottomRootView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 465
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mBottomRootView:Landroid/view/View;

    iget v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTranslateDistance2:F

    neg-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 467
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mModeBarRoot:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 468
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 469
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mModeBarRoot:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 470
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getModeRegionControl()Lcom/transsion/camera/app/common/IModeRegionControl;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 472
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IModeRegionControl;->showModeRegion()V

    .line 477
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mBottomBarRoot:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 478
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 481
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    if-eqz p0, :cond_4

    .line 482
    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->transitionShutterToRegular()V

    :cond_4
    return-void
.end method

.method private isFloatEqual(FF)Z
    .locals 0

    sub-float/2addr p1, p2

    .line 187
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

.method private onModePanelStartPulling()V
    .locals 3

    .line 763
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    if-eqz v0, :cond_0

    .line 764
    invoke-virtual {v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->onBackPressed()I

    .line 767
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 768
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 769
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 772
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->hideSettingUI()V

    .line 774
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mModeBarRoot:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 775
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 776
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mModeBarRoot:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 779
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mBottomBarRoot:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 780
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 783
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    if-eqz p0, :cond_4

    .line 784
    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->transitionShutterToRegular()V

    :cond_4
    return-void
.end method

.method private onModePanelStartReset()V
    .locals 2

    .line 789
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    if-eqz v0, :cond_0

    .line 790
    invoke-virtual {v0}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->resetToInitState()V

    .line 791
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 792
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_0
    const/4 v0, 0x1

    .line 794
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->showEntryRootView(Z)V

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

    .line 953
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 954
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private removeAnimatorListener()V
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 294
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 297
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 301
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTranslateUpdateListener2:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 302
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTranslateListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2
    return-void
.end method

.method private setAnimState(Z)V
    .locals 0

    .line 652
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    if-eqz p0, :cond_0

    .line 653
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;->setAnimState(Z)V

    :cond_0
    return-void
.end method

.method private setEntryViewEnable(Z)V
    .locals 0

    .line 646
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    if-eqz p0, :cond_0

    .line 647
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;->setEnable(Z)V

    :cond_0
    return-void
.end method

.method private settingUIAnimShowOrHide(I)Z
    .locals 7

    .line 535
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mBottomRootView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mModeBarRoot:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mBottomBarRoot:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 536
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->isIconSelected(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    const/4 v3, 0x2

    .line 541
    invoke-virtual {v0, v3}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->isIconSelected(I)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const/16 v3, 0x8

    if-eqz p1, :cond_3

    if-eq p1, v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v4, "0"

    .line 550
    invoke-direct {p0, v4}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->updateFeatureSwitch(Ljava/lang/String;)V

    .line 551
    iget-object v4, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    invoke-virtual {v4}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->notifyShowHint()V

    .line 552
    iget-object v4, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 553
    iget-object v4, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    :cond_3
    const-string v4, "1"

    .line 544
    invoke-direct {p0, v4}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->updateFeatureSwitch(Ljava/lang/String;)V

    .line 545
    iget-object v4, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 546
    iget-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->notifyHideHint()V

    .line 547
    iget-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 557
    :goto_1
    iget v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mCurrentUIType:I

    if-ne v3, p1, :cond_5

    if-eqz v0, :cond_4

    .line 561
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->notifyVidoFaceBeautyHint(I)V

    :cond_4
    move v1, v2

    goto :goto_2

    .line 564
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mBottomRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    float-to-double v3, v0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v3, v5

    if-eqz v0, :cond_6

    move v1, v2

    .line 569
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->notifyVidoFaceBeautyHint(I)V

    .line 571
    :goto_2
    iput p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mCurrentUIType:I

    .line 573
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->showOrHide(Z)V

    return v2

    :cond_7
    :goto_3
    return v1
.end method

.method private showEntryRootView(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 659
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v0, "key_video_facebeauty"

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "video_facebeauty_off"

    .line 660
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 661
    sget-object p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "showEntryRootView video facebeauty is off, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 666
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    if-eqz p1, :cond_1

    .line 667
    iget-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mNeedShow:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 668
    iput-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mNeedShow:Z

    .line 669
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private showOrHide(Z)V
    .locals 7

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    .line 579
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->setAnimState(Z)V

    .line 580
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mBottomRootView:Landroid/view/View;

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

    .line 581
    :goto_0
    iput-boolean v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mAnimShow:Z

    if-eqz v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    move v2, v1

    .line 583
    :goto_1
    iget-object v4, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v5, 0x2

    new-array v6, v5, [F

    aput v0, v6, v3

    aput v2, v6, p1

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 584
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 585
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mBottomBarRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_2

    move v2, v1

    goto :goto_2

    .line 586
    :cond_2
    iget v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTranslateDistance:F

    .line 587
    :goto_2
    iget-object v4, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    new-array v6, v5, [F

    aput v0, v6, v3

    aput v2, v6, p1

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 588
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mBottomRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_3

    goto :goto_3

    .line 589
    :cond_3
    iget v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTranslateDistance2:F

    neg-float v1, v1

    .line 590
    :goto_3
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    new-array v4, v5, [F

    aput v0, v4, v3

    aput v1, v4, p1

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 591
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 592
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 594
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    .line 595
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    iget-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mAnimShow:Z

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->notifyExpand(Z)V

    .line 597
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    if-eqz p1, :cond_6

    .line 598
    iget-boolean p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mAnimShow:Z

    if-eqz p0, :cond_5

    .line 599
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->transitionShutterToSmall()V

    goto :goto_4

    .line 601
    :cond_5
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->transitionShutterToRegular()V

    :cond_6
    :goto_4
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

    .line 959
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 960
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateFeatureSwitch()V
    .locals 4

    .line 489
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v1, "-1"

    if-eqz v0, :cond_0

    .line 490
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 492
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_video_slimbody_facebeauty_switch"

    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 496
    :goto_0
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "1"

    .line 497
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "0"

    .line 499
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 503
    :goto_2
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->computeSwitchBarSelectedState(I)V

    return-void
.end method

.method private updateFeatureSwitch(Ljava/lang/String;)V
    .locals 4

    .line 507
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "0"

    .line 508
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 510
    :goto_0
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->computeSwitchBarSelectedState(I)V

    .line 511
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 514
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "key_video_slimbody_facebeauty_switch"

    .line 513
    invoke-virtual {v0, v3, p1, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 516
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 517
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 518
    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->toObject(Ljava/lang/String;)Lcom/transsion/camera/feature/slimbody/data/SBItemData;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 520
    iput-object p1, v0, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->switchState:Ljava/lang/String;

    .line 521
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->toJson(Lcom/transsion/camera/feature/slimbody/data/SBItemData;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 526
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 527
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    .line 528
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 529
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private updateInteractiveUI()V
    .locals 6

    .line 380
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePickRootHeight()I

    move-result v0

    .line 381
    iget v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSlimBodyBottomBarHeight:I

    sub-int v1, v0, v1

    .line 382
    sget-object v2, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 384
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mBottomRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    .line 385
    iget-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mBottomRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    .line 386
    iget-object v4, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mBottomRootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    .line 387
    iget-object v5, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mBottomBarRoot:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    if-le v1, v5, :cond_0

    .line 389
    iget-object v5, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mBottomRootView:Landroid/view/View;

    invoke-virtual {v5, v2, v4, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    if-lez v0, :cond_1

    .line 393
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTopRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    .line 394
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTopRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    .line 395
    iget-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTopRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 396
    iget-object v4, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTopRootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    if-le v0, v4, :cond_1

    .line 398
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTopRootView:Landroid/view/View;

    invoke-virtual {p0, v1, v3, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .locals 2

    .line 609
    sget-object v0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "init createEntryView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 610
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mContext:Landroid/content/Context;

    .line 611
    iput-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    .line 612
    iput-object p3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

    .line 613
    sget p3, Lcom/transsion/camera/feature/slimbody/R$layout;->main_video_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    .line 614
    sget p2, Lcom/transsion/camera/feature/slimbody/R$id;->slimbody_bar:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSlimBodyIcon:Landroid/widget/ImageView;

    const/16 p2, 0x8

    .line 615
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 616
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    sget p2, Lcom/transsion/camera/feature/slimbody/R$id;->face_beauty_bar:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSlimBodyFaceBeautyIcon:Landroid/widget/ImageView;

    .line 617
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getBottombarRoot()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mBottomBarRoot:Landroid/view/View;

    .line 618
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getModeBarRoot()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mModeBarRoot:Landroid/view/View;

    .line 619
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    sget p2, Lcom/transsion/camera/feature/slimbody/R$id;->bottom_root_view:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mBottomRootView:Landroid/view/View;

    .line 620
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    sget p2, Lcom/transsion/camera/feature/slimbody/R$id;->top_root_video_view:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTopRootView:Landroid/view/View;

    .line 621
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    sget p2, Lcom/transsion/camera/feature/slimbody/R$id;->slimbody_root:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    .line 622
    iget-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 623
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    iget-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSlimBodyInfoListener:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;

    iget-object p3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->setBarClickListner(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V

    .line 624
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->setHintControl(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V

    .line 625
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->setType(I)V

    .line 626
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    sget p3, Lcom/transsion/camera/feature/slimbody/R$id;->facebeauty_root:I

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;

    .line 627
    iget-object p3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p3, :cond_0

    .line 628
    invoke-virtual {p1, p3}, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 630
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    sget p3, Lcom/transsion/camera/feature/slimbody/R$id;->topbar_video_root:I

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    .line 631
    iget-object p3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mIndicatorClickListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$BarClickListener;

    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSeekbarChangeListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$SeekBarChangeListener;

    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mContrastListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$ContrastListener;

    invoke-virtual {p1, p3, v0, v1}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->setListener(Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$BarClickListener;Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$SeekBarChangeListener;Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$ContrastListener;)V

    .line 632
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->notifyState(I)V

    .line 633
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->updateInteractiveUI()V

    .line 634
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->hideSettingUI()V

    .line 636
    iput-boolean p2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mNeedShow:Z

    .line 637
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->setEntryViewEnable(Z)V

    .line 638
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_1

    const-string p2, "key_video_facebeauty"

    .line 639
    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 640
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->doVideoBeautySwitchChanged(Ljava/lang/String;)V

    .line 642
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    return-object p0
.end method

.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEntryRootView()Landroid/view/ViewGroup;
    .locals 0

    .line 823
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getEntryView()Landroid/view/View;
    .locals 0

    .line 818
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

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

    .line 848
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "key_video_slimbody_info"

    .line 849
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "key_video_slimbody_face_beauty"

    .line 850
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "key_video_facebeauty"

    .line 851
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public notifyCameraOperateAction(I)V
    .locals 4

    .line 686
    sget-object v0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SlimBodySettingUI] notifyCameraOperateAction action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    const/4 v1, 0x1

    if-eq p1, v1, :cond_9

    const/4 v2, 0x2

    if-eq p1, v2, :cond_8

    const/4 v2, 0x6

    if-eq p1, v2, :cond_7

    const/4 v2, 0x7

    if-eq p1, v2, :cond_6

    const/16 v2, 0x9

    if-eq p1, v2, :cond_9

    const/16 v2, 0x4c

    if-eq p1, v2, :cond_5

    const/16 v2, 0x19

    const/16 v3, 0x8

    if-eq p1, v2, :cond_3

    const/16 v2, 0x1a

    if-eq p1, v2, :cond_2

    const/16 v2, 0x23

    if-eq p1, v2, :cond_1

    const/16 v2, 0x24

    if-eq p1, v2, :cond_0

    const/16 v2, 0x36

    if-eq p1, v2, :cond_a

    const/16 v2, 0x37

    if-eq p1, v2, :cond_9

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    goto/16 :goto_1

    .line 748
    :pswitch_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->onModePanelStartPulling()V

    goto/16 :goto_1

    .line 692
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->showEntryRootView(Z)V

    goto/16 :goto_1

    .line 723
    :pswitch_2
    iput-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSelfTimerCapturing:Z

    .line 724
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->showEntryRootView(Z)V

    .line 725
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    if-eqz p1, :cond_b

    .line 726
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 727
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_1

    .line 712
    :pswitch_3
    iput-boolean v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSelfTimerCapturing:Z

    goto :goto_0

    .line 731
    :cond_0
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->showEntryRootView(Z)V

    goto :goto_1

    .line 689
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->hideEntryRootView()V

    goto :goto_1

    .line 706
    :cond_2
    :pswitch_4
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->showEntryRootView(Z)V

    .line 707
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSlimBodyFaceBeautyIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-ne p1, v3, :cond_b

    .line 708
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSlimBodyFaceBeautyIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 696
    :cond_3
    :pswitch_5
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->hideSettingUI()V

    .line 697
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->hideEntryRootView()V

    .line 698
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSlimBodyFaceBeautyIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    .line 699
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSlimBodyFaceBeautyIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 701
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->setBackToPreset()V

    .line 702
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->hideAwlaysHint()V

    goto :goto_1

    .line 753
    :cond_5
    :pswitch_6
    iget-boolean p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSelfTimerCapturing:Z

    if-nez p1, :cond_b

    .line 754
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->onModePanelStartReset()V

    goto :goto_1

    .line 745
    :cond_6
    iput-boolean v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mNotifyToUI:Z

    goto :goto_1

    .line 742
    :cond_7
    iput-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mNotifyToUI:Z

    goto :goto_1

    .line 714
    :cond_8
    :goto_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->hideEntryRootView()V

    goto :goto_1

    .line 739
    :cond_9
    :pswitch_7
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->setEnable(Z)V

    goto :goto_1

    .line 720
    :cond_a
    :pswitch_8
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->setEnable(Z)V

    :cond_b
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_3
        :pswitch_2
        :pswitch_8
        :pswitch_7
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1c
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x48
        :pswitch_0
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 4

    .line 337
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mBottomRootView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

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

    .line 347
    :cond_3
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->hideSettingUI()V

    :cond_4
    :goto_1
    move v1, v3

    goto :goto_2

    .line 350
    :cond_5
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    if-eqz p0, :cond_4

    .line 351
    invoke-virtual {p0, v3}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->notifyState(I)V

    goto :goto_1

    .line 356
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    .line 358
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->hideSettingUI()V

    goto :goto_1

    :cond_7
    :goto_2
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public restoreInteractiveView()V
    .locals 0

    .line 884
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->hideSettingUI()V

    return-void
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    .line 875
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_0

    .line 876
    sget-object p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_0
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

    .line 857
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setDeviceSettingData(Ljava/util/List;)V

    if-nez p1, :cond_0

    .line 859
    sget-object p1, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDeviceSettingData is null,key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 862
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

    .line 863
    sget-object v1, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 864
    iget-object v1, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    const-string v2, "key_video_slimbody_info"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 865
    iget-object v0, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    goto :goto_0

    .line 866
    :cond_2
    iget-object v1, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    const-string v2, "key_video_slimbody_face_beauty"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 867
    iget-object v0, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    goto :goto_0

    .line 870
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->getKeys()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->registerKeyToMonitor(Ljava/util/List;)V

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 833
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->setEntryViewEnable(Z)V

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 0

    .line 996
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V
    .locals 0

    .line 1001
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V

    .line 1002
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 799
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 800
    sget-object v0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "unInit createEntryView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 804
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mContrastListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$ContrastListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$ContrastListener;->closeContrast(Z)V

    .line 805
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->hideEntryRootView()V

    .line 806
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->hideSettingUI()V

    .line 807
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    if-eqz v0, :cond_0

    .line 808
    invoke-virtual {v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->unInit()V

    .line 810
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_1

    .line 811
    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->getKeys()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->unRegisterKeyToMonitor(Ljava/util/List;)V

    .line 813
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->removeAnimatorListener()V

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 828
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->updateInteractiveUI()V

    return-void
.end method
