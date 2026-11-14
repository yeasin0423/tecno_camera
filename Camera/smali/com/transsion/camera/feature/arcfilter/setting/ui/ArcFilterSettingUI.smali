.class public Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "ArcFilterSettingUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$FilterGestureListener;
    }
.end annotation


# static fields
.field private static final DURATION:I = 0x12c

.field private static final MSG_HIDE_FILTER_SETTING_UI:I = 0x1

.field private static final MSG_SWITCH_FILTER:I = 0x0

.field private static final PRECISION:F = 0.01f

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mAnimShow:Z

.field private mBottomBarAnimator:Landroid/animation/ValueAnimator;

.field private mBottomBarRoot:Landroid/view/View;

.field private mBottomBarUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mBottomTranslateDistance:F

.field private mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private mFilterControl:Lcom/transsion/camera/app/common/IAppUIControl$IFilterControl;

.field private mFilterGestureDetector:Landroid/view/GestureDetector;

.field private mFilterIndicator:Landroid/widget/TextView;

.field private mFilterInteractive:Lcom/transsion/camera/app/common/interactive/FilterInteractive;

.field private mFilterRootView:Landroid/view/View;

.field private mFilterSelectedListener:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher$FilterSelectedListener;

.field private mFilterSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mFilterSwitcher:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;

.field private mFilterTopBarItemUI:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;

.field private final mFilterTouchListener:Landroid/view/View$OnTouchListener;

.field private mFilterTranslateDistance:F

.field private mHandler:Landroid/os/Handler;

.field private mHasActionBegin:Z

.field private volatile mIsArcFilterIsShowing:Z

.field private mIsCameraSwitching:Z

.field private mIsEnable:Z

.field private volatile mIsFilterHiding:Z

.field private mListener:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUIListener;

.field private mModeBarAnimFlag:Z

.field private mModeBarAnimator:Landroid/animation/ValueAnimator;

.field private mModeBarRoot:Landroid/view/View;

.field private mModeBarUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mNeedShow:Z

.field private mOnClickLister:Landroid/view/View$OnClickListener;

.field private mSettingUiAdjustHeight:I

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mViewStub:Landroid/view/ViewStub;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FilterSettingUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 348
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mModeBarAnimFlag:Z

    const/4 v1, 0x0

    .line 68
    iput-boolean v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mIsArcFilterIsShowing:Z

    .line 69
    iput-boolean v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mIsCameraSwitching:Z

    .line 70
    iput-boolean v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mHasActionBegin:Z

    .line 76
    new-instance v2, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$1;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$1;-><init>(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;)V

    iput-object v2, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mHandler:Landroid/os/Handler;

    .line 123
    new-instance v2, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$2;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$2;-><init>(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;)V

    iput-object v2, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 149
    new-instance v2, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$3;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$3;-><init>(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;)V

    iput-object v2, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mModeBarUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 163
    new-instance v2, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$4;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$4;-><init>(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;)V

    iput-object v2, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mBottomBarUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 196
    new-instance v2, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$5;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$5;-><init>(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;)V

    iput-object v2, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 218
    new-instance v2, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$6;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$6;-><init>(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;)V

    iput-object v2, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mListener:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUIListener;

    .line 236
    new-instance v2, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$7;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$7;-><init>(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;)V

    iput-object v2, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mOnClickLister:Landroid/view/View$OnClickListener;

    .line 243
    new-instance v2, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$8;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$8;-><init>(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;)V

    iput-object v2, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterSelectedListener:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher$FilterSelectedListener;

    .line 303
    new-instance v2, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$9;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$9;-><init>(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;)V

    iput-object v2, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterTouchListener:Landroid/view/View$OnTouchListener;

    .line 349
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 350
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const/high16 v3, 0x3e800000    # 0.25f

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v3, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 351
    sget v3, Lcom/transsion/camera/feature/arcfilter/R$dimen;->arc_filter_translate_bottombar_anim_distance:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mBottomTranslateDistance:F

    .line 352
    sget v3, Lcom/transsion/camera/feature/arcfilter/R$dimen;->arc_filter_translate_anim_distance:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterTranslateDistance:F

    .line 353
    sget v3, Lcom/transsion/camera/feature/arcfilter/R$dimen;->arc_filter_setting_ui_adjust_height:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mSettingUiAdjustHeight:I

    const/4 p1, 0x2

    new-array v3, p1, [F

    .line 354
    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x12c

    .line 355
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 356
    iget-object v3, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v3, p1, [F

    const/4 v6, 0x0

    aput v6, v3, v1

    .line 358
    iget v7, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterTranslateDistance:F

    aput v7, v3, v0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mModeBarAnimator:Landroid/animation/ValueAnimator;

    .line 359
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 360
    iget-object v3, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mModeBarAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array p1, p1, [F

    aput v6, p1, v1

    .line 362
    iget v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mBottomTranslateDistance:F

    aput v1, p1, v0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mBottomBarAnimator:Landroid/animation/ValueAnimator;

    .line 363
    invoke-virtual {p1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 364
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mBottomBarAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 365
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->addAnimatorListener()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;Landroid/os/Message;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->handleFilterValue(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;)Landroid/view/View;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mModeBarRoot:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;Ljava/lang/String;)Z
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->isNeedToHandle(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mIsFilterHiding:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mIsFilterHiding:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;Ljava/lang/String;)Landroid/os/Message;
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->getMessageByValue(Ljava/lang/String;)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;)Landroid/os/Handler;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->handleTopItemInit(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->handleTopItemUninit()V

    return-void
.end method

.method static synthetic access$1600(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;)Lcom/transsion/camera/app/common/setting/ISetting;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;Lcom/transsion/camera/app/common/setting/ISetting;)Lcom/transsion/camera/app/common/setting/ISetting;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->handleTopBarItemClick()V

    return-void
.end method

.method static synthetic access$1800(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;)Lcom/transsion/camera/app/common/IAppUIControl$IFilterControl;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterControl:Lcom/transsion/camera/app/common/IAppUIControl$IFilterControl;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;)Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterSwitcher:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mModeBarAnimFlag:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;)Landroid/widget/TextView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterIndicator:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-object p0
.end method

.method static synthetic access$2202(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mHasActionBegin:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mIsEnable:Z

    return p0
.end method

.method static synthetic access$2400(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;)Landroid/view/GestureDetector;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterGestureDetector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;)Lcom/transsion/camera/app/common/setting/StatusMonitor;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;FF)Z
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->isFloatEqual(FF)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mAnimShow:Z

    return p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;)Landroid/view/View;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->calculateFilterRootVisibility()V

    return-void
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;)F
    .locals 0

    .line 40
    iget p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterTranslateDistance:F

    return p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;)Landroid/view/View;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mBottomBarRoot:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$900()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 40
    sget-object v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method private addAnimatorListener()V
    .locals 2

    .line 690
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 691
    iget-object v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 692
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$10;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$10;-><init>(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 718
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mModeBarAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 719
    iget-object v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mModeBarUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 722
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mBottomBarAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 723
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mBottomBarUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_2
    return-void
.end method

.method private calculateFilterRootVisibility()V
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 331
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mAnimShow:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 332
    :goto_0
    iget-boolean v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mAnimShow:Z

    if-eqz v1, :cond_1

    .line 333
    iget-object v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterSwitcher:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->setFilterDefaultSelected()V

    .line 335
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private cancelAnimation()V
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mModeBarAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mModeBarAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 431
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mBottomBarAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 432
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mBottomBarAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    return-void
.end method

.method private filterRootViewInflate()V
    .locals 5

    .line 385
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mViewStub:Landroid/view/ViewStub;

    sget v1, Lcom/transsion/camera/feature/arcfilter/R$layout;->arc_filter_option:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 386
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 387
    sget v1, Lcom/transsion/camera/feature/arcfilter/R$id;->arc_filter_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    .line 388
    sget v1, Lcom/transsion/camera/feature/arcfilter/R$id;->arc_filter_switcher:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;

    iput-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterSwitcher:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;

    .line 389
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/arcfilter/R$id;->arc_filter_indicator:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterIndicator:Landroid/widget/TextView;

    .line 390
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterSwitcher:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 391
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterSwitcher:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->initFilterItemView(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 392
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterSwitcher:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterSelectedListener:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher$FilterSelectedListener;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->setFilterSelectedListener(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher$FilterSelectedListener;)V

    .line 393
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$FilterGestureListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$FilterGestureListener;-><init>(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterGestureDetector:Landroid/view/GestureDetector;

    .line 394
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    iget v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterTranslateDistance:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 396
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mBottomBarRoot:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mModeBarRoot:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 397
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mModeBarRoot:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mSettingUiAdjustHeight:I

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 399
    :goto_0
    sget-object v2, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bottomPadding = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",mBottomBarRoot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mBottomBarRoot:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",mModeBarRoot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mModeBarRoot:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",mAppUIRect = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 401
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->updateRootViewPadding(I)Z

    .line 402
    iput-boolean v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mNeedShow:Z

    .line 403
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->hideFilterSettingUI(Z)V

    return-void
.end method

.method private filterSettingShowStateAnim()Z
    .locals 8

    .line 485
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mModeBarRoot:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mBottomBarRoot:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 486
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mBottomBarAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mModeBarAnimator:Landroid/animation/ValueAnimator;

    .line 487
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    if-eqz v0, :cond_1

    .line 493
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v0

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePickerTabHeight()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mSettingUiAdjustHeight:I

    sub-int/2addr v0, v2

    .line 494
    sget-object v2, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAppUIRect compute bottomPadding = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 495
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->updateRootViewPadding(I)Z

    .line 497
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v2, 0x0

    cmpg-float v3, v0, v2

    const/4 v4, 0x1

    if-gtz v3, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    move v3, v1

    .line 498
    :goto_0
    iput-boolean v3, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mAnimShow:Z

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v3, :cond_3

    move v3, v5

    goto :goto_1

    :cond_3
    move v3, v2

    .line 500
    :goto_1
    iget-object v6, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mModeBarRoot:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    move-result v6

    cmpl-float v6, v6, v2

    if-nez v6, :cond_4

    cmpl-float v5, v3, v5

    if-nez v5, :cond_4

    .line 501
    iput-boolean v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mModeBarAnimFlag:Z

    goto :goto_2

    .line 503
    :cond_4
    iput-boolean v4, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mModeBarAnimFlag:Z

    .line 505
    :goto_2
    iget-object v5, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v6, 0x2

    new-array v7, v6, [F

    aput v0, v7, v1

    aput v3, v7, v4

    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 506
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 507
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mBottomBarRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpl-float v3, v0, v2

    if-lez v3, :cond_5

    move v3, v2

    goto :goto_3

    .line 508
    :cond_5
    iget v3, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mBottomTranslateDistance:F

    .line 509
    :goto_3
    iget-object v5, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mBottomBarAnimator:Landroid/animation/ValueAnimator;

    new-array v7, v6, [F

    aput v0, v7, v1

    aput v3, v7, v4

    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 510
    iget-boolean v3, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mIsArcFilterIsShowing:Z

    if-nez v3, :cond_6

    .line 511
    iget-object v3, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mBottomBarAnimator:Landroid/animation/ValueAnimator;

    new-array v5, v6, [F

    aput v0, v5, v1

    iget v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mBottomTranslateDistance:F

    aput v0, v5, v4

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 513
    :cond_6
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mIsArcFilterIsShowing:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v0, :cond_7

    const/16 v3, 0x2f

    .line 514
    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 515
    iput-boolean v4, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mIsArcFilterIsShowing:Z

    goto :goto_4

    .line 516
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v0, :cond_8

    const/16 v3, 0x30

    .line 517
    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 518
    iput-boolean v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mIsArcFilterIsShowing:Z

    .line 520
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mBottomBarAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 521
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mModeBarRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpl-float v3, v0, v2

    if-lez v3, :cond_9

    goto :goto_5

    .line 522
    :cond_9
    iget v2, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterTranslateDistance:F

    .line 523
    :goto_5
    iget-object v3, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mModeBarAnimator:Landroid/animation/ValueAnimator;

    new-array v5, v6, [F

    aput v0, v5, v1

    aput v2, v5, v4

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 524
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mModeBarAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return v4

    :cond_a
    :goto_6
    return v1
.end method

.method private getMessageByValue(Ljava/lang/String;)Landroid/os/Message;
    .locals 1

    const-string p0, "0"

    .line 175
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p0

    const/4 v0, 0x0

    .line 177
    iput v0, p0, Landroid/os/Message;->what:I

    .line 178
    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, "-1"

    .line 179
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 180
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x1

    .line 181
    iput v0, p1, Landroid/os/Message;->what:I

    .line 182
    iput-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object p0, p1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private handleFilterValue(Landroid/os/Message;)V
    .locals 6

    .line 102
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->isNeedToHandleMsg(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 105
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 106
    :goto_0
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v2, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    .line 107
    :goto_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const-string v4, "0"

    .line 109
    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 110
    iget-object v4, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterSelectedListener:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher$FilterSelectedListener;

    .line 111
    invoke-static {p1}, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->getStringResIdByFilterId(Ljava/lang/String;)I

    move-result v5

    .line 110
    invoke-interface {v4, v5, p1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher$FilterSelectedListener;->onFilterSelected(ILjava/lang/String;)V

    .line 114
    :cond_3
    iget-object v4, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterSwitcher:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;

    if-eqz v4, :cond_4

    .line 115
    invoke-virtual {v4, p1, v0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->switchToFilter(Ljava/lang/String;Z)V

    :cond_4
    if-eqz v3, :cond_5

    .line 118
    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->hideFilterSettingUI(Z)V

    .line 119
    iput-boolean v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mIsFilterHiding:Z

    :cond_5
    return-void
.end method

.method private handleTopBarItemClick()V
    .locals 0

    .line 591
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->filterSettingShowStateAnim()Z

    return-void
.end method

.method private handleTopItemInit(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 3

    .line 471
    sget-object v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "topItemInit mFilterSetting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",setting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 472
    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 473
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterSwitcher:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;

    if-eqz v0, :cond_0

    .line 474
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->initFilterItemView(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 475
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterSwitcher:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->setFilterDefaultSelected()V

    :cond_0
    return-void
.end method

.method private handleTopItemUninit()V
    .locals 2

    .line 480
    sget-object v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "topItemUninit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 481
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->hideFilterSettingUI(Z)V

    return-void
.end method

.method private hideFilterRootView()V
    .locals 2

    .line 737
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 738
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 740
    iput-boolean v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mNeedShow:Z

    .line 741
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private hideFilterSettingUI(Z)V
    .locals 4

    .line 437
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 440
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->cancelAnimation()V

    const/4 v0, 0x0

    .line 441
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mIsArcFilterIsShowing:Z

    .line 442
    iget-object v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 443
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 444
    iget-object v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 445
    iget-object v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    iget v3, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterTranslateDistance:F

    neg-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 447
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mModeBarRoot:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 448
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 449
    iget-object v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mModeBarRoot:Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 450
    iget-object v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mModeBarRoot:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 452
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mBottomBarRoot:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 453
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 461
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_5

    const-string v1, "key_conflict_ui_state"

    if-eqz p1, :cond_4

    .line 462
    iget-boolean p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mIsCameraSwitching:Z

    if-nez p1, :cond_4

    .line 463
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "value_filter_ui_off"

    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 465
    :cond_4
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "value_filter_ui_off_no_show"

    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private isFloatEqual(FF)Z
    .locals 0

    sub-float/2addr p1, p2

    .line 341
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

.method private isNeedToHandle(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "0"

    .line 189
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "-1"

    .line 190
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isNeedToHandleMsg(Landroid/os/Message;)Z
    .locals 0

    const/4 p0, 0x1

    if-eqz p1, :cond_0

    .line 94
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method private removeAnimatorListener()V
    .locals 2

    .line 747
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 748
    iget-object v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 749
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 751
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mModeBarAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 752
    iget-object v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mModeBarUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 755
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mBottomBarAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 756
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mBottomBarUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_2
    return-void
.end method

.method private showFilterRootView()V
    .locals 1

    .line 728
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 729
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mNeedShow:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 730
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mNeedShow:Z

    .line 731
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->showFilterSettingUI()V

    :cond_0
    return-void
.end method

.method private showFilterSettingUI()V
    .locals 3

    .line 407
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->cancelAnimation()V

    .line 408
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 409
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 410
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 411
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mModeBarRoot:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 414
    iget v2, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterTranslateDistance:F

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 415
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mModeBarRoot:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 416
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mModeBarRoot:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mBottomBarRoot:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 419
    iget p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mBottomTranslateDistance:F

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationY(F)V

    :cond_2
    return-void
.end method

.method private updateRootViewPadding(I)Z
    .locals 4

    .line 369
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 372
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    if-eq v0, p1, :cond_1

    const/4 v1, 0x1

    .line 376
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    .line 377
    iget-object v2, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    .line 378
    iget-object v3, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 379
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    invoke-virtual {p0, v0, v3, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    return v1
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewStub;)Landroid/view/View;
    .locals 0

    .line 596
    iput-object p2, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mViewStub:Landroid/view/ViewStub;

    const/4 p1, 0x1

    .line 597
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mIsEnable:Z

    .line 598
    invoke-virtual {p2}, Landroid/view/ViewStub;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/interactive/FilterInteractive;

    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterInteractive:Lcom/transsion/camera/app/common/interactive/FilterInteractive;

    .line 599
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/interactive/FilterInteractive;->getModeBarRoot()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mModeBarRoot:Landroid/view/View;

    .line 600
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterInteractive:Lcom/transsion/camera/app/common/interactive/FilterInteractive;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/interactive/FilterInteractive;->getBottombarRoot()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mBottomBarRoot:Landroid/view/View;

    .line 601
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterInteractive:Lcom/transsion/camera/app/common/interactive/FilterInteractive;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/interactive/FilterInteractive;->getFilterTopBarItemUI()Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;

    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterTopBarItemUI:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;

    if-eqz p1, :cond_0

    .line 603
    iget-object p2, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mOnClickLister:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 604
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterTopBarItemUI:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;

    iget-object p2, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mListener:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUIListener;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;->setListener(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUIListener;)V

    .line 606
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    if-nez p1, :cond_1

    .line 607
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->filterRootViewInflate()V

    .line 609
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    return-object p0
.end method

.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

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

    const-string p0, "key_filter"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public notifyCameraOperateAction(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 539
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mIsCameraSwitching:Z

    goto :goto_0

    :cond_0
    if-eq p1, v0, :cond_1

    const/16 v2, 0x1b

    if-ne p1, v2, :cond_2

    .line 541
    :cond_1
    iput-boolean v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mIsCameraSwitching:Z

    :cond_2
    :goto_0
    if-eqz p1, :cond_9

    if-eq p1, v0, :cond_8

    const/4 v2, 0x2

    if-eq p1, v2, :cond_7

    const/4 v2, 0x4

    if-eq p1, v2, :cond_9

    const/4 v2, 0x5

    if-eq p1, v2, :cond_8

    const/16 v2, 0x9

    if-eq p1, v2, :cond_8

    const/16 v2, 0xb

    if-eq p1, v2, :cond_7

    const/16 v2, 0x2d

    if-eq p1, v2, :cond_7

    const/16 v2, 0x38

    if-eq p1, v2, :cond_7

    const/16 v2, 0xd

    if-eq p1, v2, :cond_9

    const/16 v2, 0xe

    if-eq p1, v2, :cond_8

    const/16 v2, 0x23

    if-eq p1, v2, :cond_6

    const/16 v2, 0x24

    if-eq p1, v2, :cond_5

    const/16 v2, 0x31

    if-eq p1, v2, :cond_4

    const/16 v2, 0x32

    if-eq p1, v2, :cond_3

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 549
    :pswitch_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->showFilterRootView()V

    goto :goto_1

    .line 580
    :cond_3
    iput-boolean v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mIsArcFilterIsShowing:Z

    goto :goto_1

    .line 576
    :cond_4
    iput-boolean v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mIsArcFilterIsShowing:Z

    .line 577
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->hideFilterSettingUI(Z)V

    goto :goto_1

    .line 565
    :cond_5
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->showFilterRootView()V

    goto :goto_1

    .line 546
    :cond_6
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->hideFilterRootView()V

    goto :goto_1

    .line 555
    :cond_7
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->hideFilterSettingUI(Z)V

    goto :goto_1

    .line 573
    :cond_8
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->setEnable(Z)V

    goto :goto_1

    .line 562
    :cond_9
    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->setEnable(Z)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 1

    .line 619
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 620
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->filterSettingShowStateAnim()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 640
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterSwitcher:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;

    if-eqz p0, :cond_1

    .line 641
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->onDown(Landroid/view/MotionEvent;)Z

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    .line 663
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mIsFilterHiding:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 664
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 667
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    return v1

    .line 670
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterSwitcher:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;

    if-eqz v0, :cond_2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v0, :cond_2

    const/16 v1, 0x25

    .line 671
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 672
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterSwitcher:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 673
    iput-boolean v2, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mHasActionBegin:Z

    return v2

    :cond_2
    :goto_0
    return v1
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 648
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mHasActionBegin:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/16 v2, 0x26

    .line 649
    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 650
    iput-boolean v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mHasActionBegin:Z

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 655
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterSwitcher:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;

    if-eqz p0, :cond_2

    .line 656
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->onUp(Landroid/view/MotionEvent;)Z

    :cond_2
    :goto_0
    return v1
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .locals 0

    .line 632
    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 681
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mIsEnable:Z

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setFilterControl(Lcom/transsion/camera/app/common/IAppUIControl$IFilterControl;)V
    .locals 0

    .line 614
    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterControl:Lcom/transsion/camera/app/common/IAppUIControl$IFilterControl;

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 1

    .line 786
    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_0

    .line 788
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 3

    .line 762
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 763
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->removeAnimatorListener()V

    .line 764
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterSwitcher:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;

    if-eqz v0, :cond_0

    .line 765
    invoke-virtual {v0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->destory()V

    .line 767
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_1

    .line 768
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_1
    const/4 v0, 0x0

    .line 770
    iput-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method
