.class public Lcom/transsion/camera/ui/setting/exposure/ExposureUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "ExposureUI.java"

# interfaces
.implements Lcom/transsion/camera/ui/setting/exposure/ExposureView$ExposureViewChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;,
        Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;
    }
.end annotation


# static fields
.field private static final MSG_HIDE_EXPOSURE_UI:I = 0x64

.field private static final MSG_SHOW_EXPOSURE_UI:I = 0x65

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mExposureAnimator:Lcom/transsion/camera/ui/setting/exposure/IExposureAnimator;

.field private mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

.field private mHalfSize:F

.field private mHideExposureDelayTime:J

.field mHideView:Z

.field private mIsEvChanging:Z

.field private mIsSupported:Z

.field private mLockFocusLongPress:Z

.field private mLongPressLockSupport:Z

.field private mModePickerTabHeightWhenTap:I

.field private mOrientation:I

.field private mPreviewRoot:Landroid/view/View;

.field private mPreviewViewRect:Landroid/graphics/Rect;

.field private mRationalSupport:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollTriggered:Z

.field private mStatusChangeListener:Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private final mUIHandler:Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ExposureUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 3

    .line 78
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mIsEvChanging:Z

    .line 60
    iput v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mOrientation:I

    .line 65
    new-instance v1, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Lcom/transsion/camera/ui/setting/exposure/ExposureUI$1;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;

    .line 66
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mIsSupported:Z

    .line 67
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHideView:Z

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mRationalSupport:Ljava/util/List;

    .line 70
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mScrollTriggered:Z

    .line 72
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mLockFocusLongPress:Z

    .line 73
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mLongPressLockSupport:Z

    .line 79
    new-instance v0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    invoke-direct {v0, p0, v2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Lcom/transsion/camera/ui/setting/exposure/ExposureUI$1;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mUIHandler:Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    const v0, 0x7f07011e

    .line 80
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHalfSize:F

    .line 81
    new-instance p1, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;

    invoke-direct {p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureAnimator:Lcom/transsion/camera/ui/setting/exposure/IExposureAnimator;

    return-void
.end method

.method static synthetic access$1000(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)J
    .locals 2

    .line 50
    iget-wide v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHideExposureDelayTime:J

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/ui/setting/exposure/ExposureView;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/ui/setting/exposure/IExposureAnimator;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureAnimator:Lcom/transsion/camera/ui/setting/exposure/IExposureAnimator;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mLongPressLockSupport:Z

    return p1
.end method

.method static synthetic access$200()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 50
    sget-object v0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$300(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mIsEvChanging:Z

    return p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->hideExposureView()V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mScrollTriggered:Z

    return p0
.end method

.method static synthetic access$502(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mScrollTriggered:Z

    return p1
.end method

.method static synthetic access$600(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/app/common/setting/StatusMonitor;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->showExposureView()V

    return-void
.end method

.method static synthetic access$800(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mLockFocusLongPress:Z

    return p0
.end method

.method static synthetic access$802(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mLockFocusLongPress:Z

    return p1
.end method

.method static synthetic access$900(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mUIHandler:Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    return-object p0
.end method

.method private static findNearestRational(Ljava/util/List;F)Landroid/util/Rational;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Rational;",
            ">;F)",
            "Landroid/util/Rational;"
        }
    .end annotation

    .line 567
    sget-object v0, Landroid/util/Rational;->ZERO:Landroid/util/Rational;

    .line 568
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Rational;

    .line 569
    invoke-virtual {v2}, Landroid/util/Rational;->floatValue()F

    move-result v3

    sub-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v1

    if-gtz v3, :cond_0

    .line 571
    invoke-virtual {v2}, Landroid/util/Rational;->floatValue()F

    move-result v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    move v1, v0

    move-object v0, v2

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private hideExposureView()V
    .locals 3

    .line 547
    sget-object v0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideExposureView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 548
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mIsEvChanging:Z

    .line 549
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 550
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 552
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_1

    const-string v1, "key_exposure_view"

    .line 553
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private isScreenPortrait()Z
    .locals 1

    .line 445
    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mOrientation:I

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10e

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private needUpdateExposureView()Z
    .locals 1

    .line 558
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mIsSupported:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private registerKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_0

    .line 497
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_0
    return-void
.end method

.method private setShowArea()V
    .locals 6

    .line 405
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewRoot:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    if-nez v0, :cond_1

    .line 410
    sget-object p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "setShowArea return, mAppUIRect is null."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 414
    :cond_1
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopBarHeight()I

    move-result v0

    .line 415
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v1

    .line 416
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePickerTabHeight()I

    move-result v2

    if-lez v2, :cond_2

    add-int/2addr v1, v2

    .line 421
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 422
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 423
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 424
    iget v5, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    .line 425
    iget v1, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 426
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {p0, v0, v4, v5, v1}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->setShowArea(IIII)V

    :cond_3
    :goto_0
    return-void
.end method

.method private showExposureView()V
    .locals 9

    .line 313
    sget-object v0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showExposureView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 314
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHideView:Z

    if-eqz v0, :cond_0

    .line 315
    sget-object p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "showExposureView mHideView is true!"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_5

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 330
    sget-object p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "showExposureView mDeviceSetting.getSupport() isEmpty!"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mIsSupported:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mLockFocusLongPress:Z

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->updateSeekBarVisibility(Z)V

    .line 334
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v1, "key_touch_capture"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 335
    sget-object p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "showExposureView KEY_TOUCH_CAPTURE is on!"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 339
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->getFocusViewX()I

    move-result v0

    int-to-float v0, v0

    .line 340
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {v1}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->getFocusViewY()I

    move-result v1

    int-to-float v1, v1

    .line 342
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    cmpg-float v4, v0, v4

    if-ltz v4, :cond_10

    iget v4, v3, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-gtz v4, :cond_10

    iget v4, v3, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    cmpg-float v4, v1, v4

    if-ltz v4, :cond_10

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_5

    goto/16 :goto_4

    .line 348
    :cond_5
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    if-nez v3, :cond_6

    .line 349
    sget-object p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onSingleTapUp return, mAppUIRect is null."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 353
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_7

    .line 355
    sget-object p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "entryView is null,return."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 358
    :cond_7
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 359
    iget-object v4, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopBarHeight()I

    move-result v4

    .line 360
    iget-object v5, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v5}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v5

    .line 361
    iget v6, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mModePickerTabHeightWhenTap:I

    if-lez v6, :cond_8

    add-int/2addr v5, v6

    :cond_8
    int-to-float v6, v4

    cmpg-float v6, v1, v6

    if-lez v6, :cond_f

    sub-int v6, v3, v5

    int-to-float v7, v6

    cmpl-float v7, v1, v7

    if-ltz v7, :cond_9

    goto/16 :goto_3

    .line 370
    :cond_9
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v7, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHalfSize:F

    add-float/2addr v5, v7

    .line 371
    iget v8, v3, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    sub-float/2addr v8, v7

    .line 372
    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHalfSize:F

    add-float/2addr v3, v4

    .line 373
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    iget v6, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHalfSize:F

    sub-float/2addr v4, v6

    cmpg-float v6, v0, v5

    if-gez v6, :cond_a

    move v0, v5

    :cond_a
    cmpl-float v5, v0, v8

    if-lez v5, :cond_b

    goto :goto_1

    :cond_b
    move v8, v0

    :goto_1
    cmpl-float v0, v1, v4

    if-lez v0, :cond_c

    move v1, v4

    :cond_c
    cmpg-float v0, v1, v3

    if-gez v0, :cond_d

    goto :goto_2

    :cond_d
    move v3, v1

    :goto_2
    float-to-int v0, v8

    .line 390
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v4

    float-to-int v3, v3

    .line 391
    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v1

    .line 392
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->setShowArea()V

    .line 393
    invoke-direct {p0, v0, v3}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->showFocusViewAt(II)V

    .line 394
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mLockFocusLongPress:Z

    if-eqz v0, :cond_e

    .line 395
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureAnimator:Lcom/transsion/camera/ui/setting/exposure/IExposureAnimator;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-interface {v0, v1}, Lcom/transsion/camera/ui/setting/exposure/IExposureAnimator;->cancelDarkenAnimate(Landroid/view/View;)V

    .line 396
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->hideExposureView()V

    return-void

    .line 399
    :cond_e
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_exposure_view"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 401
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureAnimator:Lcom/transsion/camera/ui/setting/exposure/IExposureAnimator;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-interface {v0, p0}, Lcom/transsion/camera/ui/setting/exposure/IExposureAnimator;->startShowAnimate(Landroid/view/View;)V

    return-void

    .line 366
    :cond_f
    :goto_3
    sget-object p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showExposureView y = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", edgeTop = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", absoluteH = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", edgeBottom = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 344
    :cond_10
    :goto_4
    sget-object p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "showExposureView point is out of preview rect!"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 320
    :cond_11
    :goto_5
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    if-eqz v0, :cond_12

    .line 321
    sget-object v0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showExposureView mExposureView.getVisibility(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_6

    .line 323
    :cond_12
    sget-object p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "showExposureView mExposureView == null!"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_6
    return-void
.end method

.method private showFocusViewAt(II)V
    .locals 3

    .line 431
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    .line 432
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    .line 433
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 434
    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p2, v1

    const/4 v0, 0x0

    invoke-virtual {v2, p1, p2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 435
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 436
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mLockFocusLongPress:Z

    if-nez p1, :cond_0

    .line 437
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 439
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private unRegisterKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_0

    .line 503
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_0
    return-void
.end method

.method private updatePreviewRootRect()V
    .locals 4

    .line 147
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewRoot:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 150
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 151
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 152
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 153
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 154
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewRoot:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c003e

    const/4 v1, 0x0

    .line 122
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0a0015

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long v0, p2

    iput-wide v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHideExposureDelayTime:J

    const p2, 0x7f0900c5

    .line 124
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    const p2, 0x7f0900c4

    .line 125
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewRoot:Landroid/view/View;

    .line 126
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {p2, p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->setListener(Lcom/transsion/camera/ui/setting/exposure/ExposureView$ExposureViewChangedListener;)V

    return-object p1
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_exposure"

    return-object p0
.end method

.method public getOrientation()I
    .locals 0

    .line 562
    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mOrientation:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 178
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public notifyCameraOperateAction(I)V
    .locals 3

    .line 261
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->respondPreviewManagerEvent(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 263
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->hideExposureView()V

    :cond_1
    const/4 v0, 0x4

    if-eq p1, v0, :cond_5

    const/4 v0, 0x5

    if-eq p1, v0, :cond_4

    const/16 v0, 0x9

    if-eq p1, v0, :cond_4

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x27

    if-eq p1, v0, :cond_5

    const/16 v0, 0x28

    if-eq p1, v0, :cond_4

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_3

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 286
    :cond_2
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHideView:Z

    .line 287
    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->setEnable(Z)V

    goto :goto_1

    .line 282
    :cond_3
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHideView:Z

    .line 283
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->setEnable(Z)V

    goto :goto_1

    .line 279
    :cond_4
    :pswitch_0
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHideView:Z

    goto :goto_1

    .line 271
    :cond_5
    :pswitch_1
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHideView:Z

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onExposureViewChanged(F)V
    .locals 4

    .line 466
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mRationalSupport:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->findNearestRational(Ljava/util/List;F)Landroid/util/Rational;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 469
    sget-object v1, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onExposureViewChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 470
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {v0}, Landroid/util/Rational;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 472
    :cond_0
    sget-object p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onExposureViewChanged ignore : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onLongPress(FF)Z
    .locals 2

    .line 253
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mLongPressLockSupport:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 254
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->onSingleTapUp(FF)Z

    const/4 p1, 0x1

    .line 255
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mLockFocusLongPress:Z

    return v1
.end method

.method public onOrientationChanged(I)V
    .locals 1

    .line 453
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onOrientationChanged(I)V

    .line 454
    rem-int/lit16 p1, p1, 0x168

    .line 455
    iget v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mOrientation:I

    if-ne v0, p1, :cond_0

    return-void

    .line 458
    :cond_0
    iput p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mOrientation:I

    .line 459
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    .line 460
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->setOrientation(IZ)V

    :cond_1
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 294
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->needUpdateExposureView()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 297
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->isScreenPortrait()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 298
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpl-float p1, p1, p3

    if-lez p1, :cond_2

    .line 299
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {p0, p2, p4}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->onVerticalScroll(Landroid/view/MotionEvent;F)V

    return v1

    .line 303
    :cond_1
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p4

    cmpg-float p1, p1, p4

    if-gez p1, :cond_2

    .line 304
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {p0, p2, p3}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->onVerticalScroll(Landroid/view/MotionEvent;F)V

    return v1

    :cond_2
    return v0
.end method

.method public onSingleTapUp(FF)Z
    .locals 3

    const/4 v0, 0x0

    .line 238
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mLockFocusLongPress:Z

    .line 239
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    if-eqz v1, :cond_1

    .line 240
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    if-eqz v1, :cond_0

    .line 241
    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePickerTabHeight()I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mModePickerTabHeightWhenTap:I

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mUIHandler:Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 244
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    float-to-int p1, p1

    int-to-float p1, p1

    float-to-int p2, p2

    int-to-float p2, p2

    invoke-virtual {v1, p1, p2}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->setFocusLocation(FF)V

    .line 245
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->resetExposureView()V

    .line 246
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->hideExposureView()V

    :cond_1
    return v0
.end method

.method public onTrackingTouchStatusChanged(Z)V
    .locals 4

    .line 479
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_1

    .line 480
    sget-object v0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrackingTouchStatusChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 481
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mIsEvChanging:Z

    .line 482
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureAnimator:Lcom/transsion/camera/ui/setting/exposure/IExposureAnimator;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-interface {v0, v1}, Lcom/transsion/camera/ui/setting/exposure/IExposureAnimator;->cancelDarkenAnimate(Landroid/view/View;)V

    .line 483
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mUIHandler:Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 484
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mIsEvChanging:Z

    if-nez v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureAnimator:Lcom/transsion/camera/ui/setting/exposure/IExposureAnimator;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-interface {v0, v2}, Lcom/transsion/camera/ui/setting/exposure/IExposureAnimator;->startDarkenAnimate(Landroid/view/View;)V

    .line 486
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mUIHandler:Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    iget-wide v2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHideExposureDelayTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 489
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mScrollTriggered:Z

    .line 490
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p1, "key_exposure_scroll_start_and_hide"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v0, "scroll_start"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 229
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->needUpdateExposureView()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 232
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->onTrackingTouch(Z)V

    return v0
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 4

    .line 195
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_0

    .line 197
    sget-object p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 201
    :cond_0
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 202
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_exposure_private"

    const-string v2, "off"

    .line 201
    invoke-virtual {p1, v1, v2, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 203
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 204
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_3

    if-eqz p1, :cond_1

    .line 205
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 206
    :cond_1
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mIsSupported:Z

    .line 207
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mRationalSupport:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 208
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 209
    invoke-static {v0}, Landroid/util/Rational;->parseRational(Ljava/lang/String;)Landroid/util/Rational;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 211
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mRationalSupport:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 215
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mIsSupported:Z

    .line 216
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mRationalSupport:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_4
    const-string p1, "key_focus_state"

    .line 218
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->registerKeyToMonitor(Ljava/lang/String;)V

    const-string p1, "key_support_long_press_lock"

    .line 219
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->registerKeyToMonitor(Ljava/lang/String;)V

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->setEnabled(Z)V

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setupEntryView()V
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 134
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_0

    .line 136
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object v0

    .line 137
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Rational;->parseRational(Ljava/lang/String;)Landroid/util/Rational;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Rational;->intValue()I

    move-result v1

    const/4 v2, 0x0

    .line 139
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Rational;->parseRational(Ljava/lang/String;)Landroid/util/Rational;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Rational;->intValue()I

    move-result v0

    .line 140
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->initExposureView(II)V

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 2

    .line 184
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 185
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mUIHandler:Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 186
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->hideExposureView()V

    .line 187
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_0

    const-string v0, "key_focus_state"

    .line 188
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_support_long_press_lock"

    .line 189
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 160
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->updatePreviewRootRect()V

    return-void
.end method
