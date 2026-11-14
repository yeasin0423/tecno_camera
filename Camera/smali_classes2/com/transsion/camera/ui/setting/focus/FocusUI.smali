.class public Lcom/transsion/camera/ui/setting/focus/FocusUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "FocusUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;,
        Lcom/transsion/camera/ui/setting/focus/FocusUI$FocusResultCallbackImpl;,
        Lcom/transsion/camera/ui/setting/focus/FocusUI$UIHandler;
    }
.end annotation


# static fields
.field private static final AF_REGION_BOX:F = 0.2f

.field private static final MSG_UPDATE_FOCUS_VIEW:I = 0x64

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mFocusAnimator:Lcom/transsion/camera/ui/setting/focus/IFocusAnimator;

.field private mFocusLockView:Landroid/view/View;

.field private mFocusView:Landroid/view/View;

.field private mHalfFocusSize:F

.field mHideView:Z

.field private mIsAutoFocusSupported:Z

.field private mIsEyeViewShowing:Z

.field private mIsFaceViewShowing:Z

.field private mIsLaserFocusViewSupport:Z

.field private mIsLaserFocuseViewNeedShow:Z

.field private mIsPassiveFocusViewNeedShow:Z

.field private mLaserFocusView:Lcom/transsion/camera/ui/setting/focus/LaserFocusView;

.field private mLockFocusLongPress:Z

.field private mLongPressLockSupport:Z

.field private mPreviewRoot:Landroid/view/View;

.field private mPreviewViewRect:Landroid/graphics/Rect;

.field private mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

.field private mStatusChangeListener:Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private final mUIHandler:Lcom/transsion/camera/ui/setting/focus/FocusUI$UIHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FocusUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2

    .line 93
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 78
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewViewRect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsPassiveFocusViewNeedShow:Z

    .line 81
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsLaserFocuseViewNeedShow:Z

    .line 86
    new-instance v0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/focus/FocusUI;Lcom/transsion/camera/ui/setting/focus/FocusUI$1;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsFaceViewShowing:Z

    .line 88
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsEyeViewShowing:Z

    .line 89
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLockFocusLongPress:Z

    .line 90
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLongPressLockSupport:Z

    .line 91
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mHideView:Z

    const v0, 0x7f05003a

    .line 94
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsLaserFocusViewSupport:Z

    .line 95
    new-instance v0, Lcom/transsion/camera/ui/setting/focus/FocusSettingUISpec;

    invoke-direct {v0, p1}, Lcom/transsion/camera/ui/setting/focus/FocusSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 96
    new-instance v0, Lcom/transsion/camera/ui/setting/focus/FocusUI$UIHandler;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/focus/FocusUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/focus/FocusUI;Lcom/transsion/camera/ui/setting/focus/FocusUI$1;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mUIHandler:Lcom/transsion/camera/ui/setting/focus/FocusUI$UIHandler;

    const v0, 0x7f070122

    .line 97
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mHalfFocusSize:F

    .line 98
    new-instance p1, Lcom/transsion/camera/ui/setting/focus/FocusAnimator;

    invoke-direct {p1}, Lcom/transsion/camera/ui/setting/focus/FocusAnimator;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusAnimator:Lcom/transsion/camera/ui/setting/focus/IFocusAnimator;

    return-void
.end method

.method static synthetic access$1002(Lcom/transsion/camera/ui/setting/focus/FocusUI;Z)Z
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLongPressLockSupport:Z

    return p1
.end method

.method static synthetic access$200()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 60
    sget-object v0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$300(Lcom/transsion/camera/ui/setting/focus/FocusUI;Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->doUpdateFocusView(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/camera/ui/setting/focus/FocusUI;)Lcom/transsion/camera/ui/setting/focus/FocusUI$UIHandler;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mUIHandler:Lcom/transsion/camera/ui/setting/focus/FocusUI$UIHandler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideFocusView()V

    return-void
.end method

.method static synthetic access$700(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideLaserFocusView()V

    return-void
.end method

.method static synthetic access$802(Lcom/transsion/camera/ui/setting/focus/FocusUI;Z)Z
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsFaceViewShowing:Z

    return p1
.end method

.method static synthetic access$902(Lcom/transsion/camera/ui/setting/focus/FocusUI;Z)Z
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsEyeViewShowing:Z

    return p1
.end method

.method private doUpdateFocusView(Ljava/lang/String;)V
    .locals 3

    .line 343
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "ACTIVE_HIDE_FOCUSE_VIEW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto :goto_1

    :sswitch_1
    const-string v0, "PASSIVE_SCAN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "ACTIVE_FOCUSED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_1

    :sswitch_3
    const-string v0, "PASSIVE_FOCUSED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_4
    const-string v0, "ACTIVE_UNFOCUSED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_1

    :sswitch_5
    const-string v0, "PASSIVE_UNFOCUSED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_6
    const-string v0, "LASER_FOCUSEND"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_1

    :sswitch_7
    const-string v0, "LASER_SCAN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    .line 384
    :pswitch_0
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLockFocusLongPress:Z

    .line 385
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideFocusView()V

    goto/16 :goto_3

    .line 381
    :pswitch_1
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsLaserFocuseViewNeedShow:Z

    goto/16 :goto_3

    .line 378
    :pswitch_2
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideFocusView()V

    goto/16 :goto_3

    .line 369
    :pswitch_3
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsLaserFocuseViewNeedShow:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsFaceViewShowing:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsEyeViewShowing:Z

    if-nez p1, :cond_4

    .line 370
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsLaserFocusViewSupport:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLaserFocusView:Lcom/transsion/camera/ui/setting/focus/LaserFocusView;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->needShowFocusView()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 371
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->showLaserFocusViewAtCenter()V

    .line 372
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsLaserFocuseViewNeedShow:Z

    goto :goto_3

    .line 357
    :pswitch_4
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsPassiveFocusViewNeedShow:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsFaceViewShowing:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsEyeViewShowing:Z

    if-nez p1, :cond_4

    .line 358
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsLaserFocusViewSupport:Z

    if-eqz p1, :cond_1

    .line 359
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLaserFocusView:Lcom/transsion/camera/ui/setting/focus/LaserFocusView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->needShowFocusView()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 360
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->showLaserFocusViewAtCenter()V

    goto :goto_2

    .line 363
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->showFocusViewAtCenter()V

    .line 365
    :cond_2
    :goto_2
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsPassiveFocusViewNeedShow:Z

    goto :goto_3

    .line 346
    :pswitch_5
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLockFocusLongPress:Z

    if-eqz p1, :cond_3

    .line 347
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusAnimator:Lcom/transsion/camera/ui/setting/focus/IFocusAnimator;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusView:Landroid/view/View;

    invoke-interface {p1, v0}, Lcom/transsion/camera/ui/setting/focus/IFocusAnimator;->stopAnimate(Landroid/view/View;)V

    .line 348
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusView:Landroid/view/View;

    const v0, 0x7f08039e

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 349
    invoke-direct {p0, v2}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->lockFocus(Z)V

    goto :goto_3

    .line 352
    :cond_3
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideFocusView()V

    .line 353
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideLaserFocusView()V

    .line 354
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsPassiveFocusViewNeedShow:Z

    :cond_4
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5373dc6f -> :sswitch_7
        -0x4bf36fe9 -> :sswitch_6
        0x1d09b766 -> :sswitch_5
        0x2c1b7ca5 -> :sswitch_4
        0x4b74c21f -> :sswitch_3
        0x5664cb1e -> :sswitch_2
        0x5b4248b5 -> :sswitch_1
        0x76eb3db3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private hideFocusView()V
    .locals 2

    .line 483
    sget-object v0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideFocusView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 484
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLockFocusLongPress:Z

    .line 485
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 486
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusLockView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 487
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusAnimator:Lcom/transsion/camera/ui/setting/focus/IFocusAnimator;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusView:Landroid/view/View;

    invoke-interface {v0, p0}, Lcom/transsion/camera/ui/setting/focus/IFocusAnimator;->stopAnimate(Landroid/view/View;)V

    return-void
.end method

.method private hideLaserFocusView()V
    .locals 2

    .line 491
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLaserFocusView:Lcom/transsion/camera/ui/setting/focus/LaserFocusView;

    if-eqz v0, :cond_0

    .line 492
    sget-object v0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideLaserFocusView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 493
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLaserFocusView:Lcom/transsion/camera/ui/setting/focus/LaserFocusView;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->hide()V

    :cond_0
    return-void
.end method

.method private lockFocus(Z)V
    .locals 2

    const-string v0, "key_lock_focus"

    if-eqz p1, :cond_0

    .line 395
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    const-string v1, "on"

    .line 396
    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 397
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusLockView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 399
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideFocusView()V

    .line 400
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    const-string v1, "off"

    .line 401
    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 402
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusLockView:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private pointToRect(IILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3

    .line 322
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-float p0, p0

    const v0, 0x3e4ccccd    # 0.2f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    .line 323
    div-int/lit8 v0, p0, 0x2

    sub-int/2addr p1, v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v1, p0

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Lcom/transsion/camera/utils/CameraUtil;->clamp(III)I

    move-result p1

    sub-int/2addr p2, v0

    .line 324
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr v0, p0

    invoke-static {p2, v2, v0}, Lcom/transsion/camera/utils/CameraUtil;->clamp(III)I

    move-result p2

    add-int v0, p1, p0

    add-int/2addr p0, p2

    .line 328
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1, p2, v0, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 329
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {v1, p0, p1}, Lcom/transsion/camera/utils/CoordinatesUtil;->viewToReferenceSpace(Landroid/graphics/Rect;II)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private registerKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_0

    .line 499
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_0
    return-void
.end method

.method private showFocusViewAt(II)V
    .locals 4

    .line 451
    sget-object v0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showFocusViewAt mHideView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mHideView:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", x:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 452
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mHideView:Z

    if-eqz v0, :cond_0

    return-void

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 456
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 457
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 458
    div-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 459
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 460
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusView:Landroid/view/View;

    const v1, 0x7f0803a0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 461
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 462
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusAnimator:Lcom/transsion/camera/ui/setting/focus/IFocusAnimator;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/transsion/camera/ui/setting/focus/IFocusAnimator;->startAnimate(Landroid/view/View;)V

    .line 463
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusLockView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    .line 464
    iget v0, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 465
    iget p1, p0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p2, p1

    iput p2, p0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    return-void
.end method

.method private showFocusViewAtCenter()V
    .locals 2

    .line 470
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 471
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 472
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->showFocusViewAt(II)V

    return-void
.end method

.method private showLaserFocusViewAtCenter()V
    .locals 0

    .line 476
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLaserFocusView:Lcom/transsion/camera/ui/setting/focus/LaserFocusView;

    if-eqz p0, :cond_0

    .line 477
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->show()V

    :cond_0
    return-void
.end method

.method private unRegisterKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_0

    .line 505
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_0
    return-void
.end method

.method private updatePreviewRootRect()V
    .locals 4

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewRoot:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 146
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 147
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 148
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 149
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 150
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewRoot:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsLaserFocusViewSupport:Z

    if-eqz v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLaserFocusView:Lcom/transsion/camera/ui/setting/focus/LaserFocusView;

    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->hide()V

    .line 155
    :cond_1
    new-instance v0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewRoot:Landroid/view/View;

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-direct {v0, v1}, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;-><init>(Landroid/widget/FrameLayout;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLaserFocusView:Lcom/transsion/camera/ui/setting/focus/LaserFocusView;

    :cond_2
    return-void
.end method


# virtual methods
.method public doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c0048

    const/4 v1, 0x0

    .line 129
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0900f1

    .line 130
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusView:Landroid/view/View;

    const p2, 0x7f0900ef

    .line 131
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusLockView:Landroid/view/View;

    const p2, 0x7f0900f0

    .line 132
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewRoot:Landroid/view/View;

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

    .line 173
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 181
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public notifyCameraOperateAction(I)V
    .locals 3

    const/16 v0, 0x9

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x27

    const/4 v2, 0x1

    if-eq p1, v0, :cond_0

    const/16 v0, 0x28

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 420
    :pswitch_0
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLockFocusLongPress:Z

    .line 421
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mHideView:Z

    .line 422
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideFocusView()V

    goto :goto_0

    .line 435
    :pswitch_1
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLockFocusLongPress:Z

    .line 436
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mHideView:Z

    .line 437
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusLockView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 438
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideFocusView()V

    .line 439
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideLaserFocusView()V

    goto :goto_0

    .line 414
    :cond_0
    :pswitch_2
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLockFocusLongPress:Z

    .line 415
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mHideView:Z

    .line 416
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideFocusView()V

    .line 417
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideLaserFocusView()V

    goto :goto_0

    .line 442
    :cond_1
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLockFocusLongPress:Z

    .line 443
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mHideView:Z

    .line 444
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideFocusView()V

    goto :goto_0

    .line 432
    :cond_2
    :pswitch_3
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mHideView:Z

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x21
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onLongPress(FF)Z
    .locals 2

    .line 314
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLongPressLockSupport:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 315
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->onSingleTapUp(FF)Z

    const/4 p1, 0x1

    .line 316
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLockFocusLongPress:Z

    return v1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onSingleTapUp(FF)Z
    .locals 7

    const/4 v0, 0x0

    .line 240
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLockFocusLongPress:Z

    .line 241
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->lockFocus(Z)V

    .line 242
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusLockView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 243
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsAutoFocusSupported:Z

    if-nez v1, :cond_0

    return v0

    .line 247
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-ltz v2, :cond_b

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-gtz v2, :cond_b

    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-ltz v2, :cond_b

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-lez v1, :cond_1

    goto/16 :goto_2

    .line 252
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    if-nez v1, :cond_2

    .line 253
    sget-object p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onSingleTapUp return, mAppUIRect is null."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 257
    :cond_2
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLaserFocusView:Lcom/transsion/camera/ui/setting/focus/LaserFocusView;

    if-eqz v1, :cond_3

    .line 258
    invoke-virtual {v1}, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->hide()V

    .line 261
    :cond_3
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v2, "key_focus"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fixed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v0

    .line 265
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v1

    .line 266
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 267
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopBarHeight()I

    move-result v2

    .line 268
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v3

    .line 269
    iget-object v4, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePickerTabHeight()I

    move-result v4

    if-lez v4, :cond_5

    add-int/2addr v3, v4

    :cond_5
    int-to-float v4, v2

    cmpg-float v4, p2, v4

    if-lez v4, :cond_b

    sub-int/2addr v1, v3

    int-to-float v3, v1

    cmpl-float v3, p2, v3

    if-ltz v3, :cond_6

    goto :goto_2

    .line 277
    :cond_6
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mHalfFocusSize:F

    add-float/2addr v4, v5

    .line 278
    iget v6, v3, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    sub-float/2addr v6, v5

    .line 279
    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mHalfFocusSize:F

    add-float/2addr v2, v3

    .line 280
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mHalfFocusSize:F

    sub-float/2addr v1, v3

    cmpg-float v3, p1, v4

    if-gez v3, :cond_7

    move p1, v4

    :cond_7
    cmpl-float v3, p1, v6

    if-lez v3, :cond_8

    goto :goto_0

    :cond_8
    move v6, p1

    :goto_0
    cmpl-float p1, p2, v1

    if-lez p1, :cond_9

    move p2, v1

    :cond_9
    cmpg-float p1, p2, v2

    if-gez p1, :cond_a

    goto :goto_1

    :cond_a
    move v2, p2

    :goto_1
    float-to-int p1, v6

    .line 297
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int v1, p1, v1

    float-to-int v2, v2

    .line 298
    iget p2, p2, Landroid/graphics/Rect;->top:I

    sub-int p2, v2, p2

    .line 299
    invoke-direct {p0, v1, p2}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->showFocusViewAt(II)V

    .line 301
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v1

    .line 302
    iget v1, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v1

    .line 305
    invoke-direct {p0, p1, v2, p2}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->pointToRect(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 307
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->rectToString(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 308
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->focus()V

    :cond_b
    :goto_2
    return v0
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 5

    .line 205
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_0

    .line 207
    sget-object p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 211
    :cond_0
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const-string v2, "auto"

    .line 212
    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsAutoFocusSupported:Z

    const-string v2, "key_support_long_press_lock"

    const-string v3, "key_eye_view_state"

    const-string v4, "key_face_view_state"

    if-eqz p1, :cond_2

    .line 214
    invoke-direct {p0, v4}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 215
    invoke-direct {p0, v3}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 216
    invoke-direct {p0, v2}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->registerKeyToMonitor(Ljava/lang/String;)V

    goto :goto_1

    .line 218
    :cond_2
    invoke-direct {p0, v4}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 219
    invoke-direct {p0, v3}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 220
    invoke-direct {p0, v2}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 221
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLongPressLockSupport:Z

    .line 223
    :goto_1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    new-instance v1, Lcom/transsion/camera/ui/setting/focus/FocusUI$FocusResultCallbackImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/ui/setting/focus/FocusUI$FocusResultCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/focus/FocusUI;Lcom/transsion/camera/ui/setting/focus/FocusUI$1;)V

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 224
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsPassiveFocusViewNeedShow:Z

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setupEntryView()V
    .locals 1

    .line 139
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 187
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsAutoFocusSupported:Z

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_0

    const-string v0, "key_face_view_state"

    .line 189
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_eye_view_state"

    .line 190
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_support_long_press_lock"

    .line 191
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    goto :goto_0

    .line 193
    :cond_0
    sget-object v0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "mStatusMonitor is null! maybe flow is wrong!"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 196
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideFocusView()V

    .line 197
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideLaserFocusView()V

    const/4 v0, 0x1

    .line 198
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsPassiveFocusViewNeedShow:Z

    .line 199
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mUIHandler:Lcom/transsion/camera/ui/setting/focus/FocusUI$UIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 200
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 163
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->updatePreviewRootRect()V

    return-void
.end method
