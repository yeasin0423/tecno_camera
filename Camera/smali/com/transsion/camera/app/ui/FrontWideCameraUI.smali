.class public Lcom/transsion/camera/app/ui/FrontWideCameraUI;
.super Lcom/transsion/camera/app/ui/AbstractWideCameraUI;
.source "FrontWideCameraUI.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsAIGroupPhoto:Z

.field private mIsFacebeautyOn:Z

.field private mIsFilterUIOn:Z

.field private mObjectAnimator:Landroid/animation/ObjectAnimator;

.field private mOrientation:I

.field private mSelfTimerCapturing:Z

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mVideoRecordBegin:Z

.field private mWideCameraIndicator:Landroid/view/View;

.field private mWideCameraLayout:Landroid/widget/FrameLayout;

.field private mWideCameraLayoutBackground:Landroid/widget/FrameLayout;

.field private mWideCameraLayoutRoot:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/ui/MainScreenOriginPosition;)V
    .locals 3

    .line 128
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;-><init>(Lcom/transsion/camera/app/ui/MainScreenOriginPosition;)V

    const/4 p1, -0x1

    .line 50
    iput p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mOrientation:I

    .line 57
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 v0, 0x3e800000    # 0.25f

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1, v0, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/4 p1, 0x0

    .line 60
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsAIGroupPhoto:Z

    .line 61
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mSelfTimerCapturing:Z

    .line 62
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mVideoRecordBegin:Z

    .line 64
    new-instance p1, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI$1;-><init>(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 45
    sget-object v0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsFilterUIOn:Z

    return p0
.end method

.method static synthetic access$102(Lcom/transsion/camera/app/ui/FrontWideCameraUI;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsFilterUIOn:Z

    return p1
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsFacebeautyOn:Z

    return p0
.end method

.method static synthetic access$202(Lcom/transsion/camera/app/ui/FrontWideCameraUI;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsFacebeautyOn:Z

    return p1
.end method

.method static synthetic access$302(Lcom/transsion/camera/app/ui/FrontWideCameraUI;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsAIGroupPhoto:Z

    return p1
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/ui/FrontWideCameraUI;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->needAnimate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->animateIndicatorToRight()V

    return-void
.end method

.method static synthetic access$600(Lcom/transsion/camera/app/ui/FrontWideCameraUI;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->animateIndicator(I)V

    return-void
.end method

.method private animateIndicator(I)V
    .locals 5

    .line 132
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraIndicator:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    move v0, v1

    .line 133
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 134
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 135
    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 137
    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 138
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    aget v4, v0, v1

    int-to-float v4, v4

    add-float/2addr v2, v4

    .line 139
    iget-object v4, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraIndicator:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 140
    iget-object v4, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraIndicator:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    aget v0, v0, v1

    int-to-float v0, v0

    add-float/2addr v4, v0

    .line 141
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraIndicator:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sub-float/2addr v2, v4

    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private animateIndicatorToRight()V
    .locals 5

    .line 148
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraIndicator:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 152
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 153
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    aget v4, v2, v1

    int-to-float v4, v4

    add-float/2addr v0, v4

    .line 154
    iget-object v4, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraIndicator:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 155
    iget-object v4, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraIndicator:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    aget v1, v2, v1

    int-to-float v1, v1

    add-float/2addr v4, v1

    .line 156
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraIndicator:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sub-float/2addr v0, v4

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method private needAnimate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 474
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p0

    const/4 v0, 0x2

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "key_wide_camera_item_seleccted"

    .line 477
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "value_wide_camera_item_animate"

    .line 478
    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public hideWideCamera()V
    .locals 2

    .line 307
    sget-object v0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideWideCamera"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayoutRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayoutRoot:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 312
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraIndicator:Landroid/view/View;

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    .line 313
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected loadWideCameraUI(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 162
    sget-object v0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "loadWideCameraUI"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 163
    iput-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0c00fa

    const/4 v1, 0x1

    .line 164
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090277

    .line 165
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayoutRoot:Landroid/view/ViewGroup;

    .line 166
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mPosition:Lcom/transsion/camera/app/ui/MainScreenOriginPosition;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->getTopBarHeight()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mPosition:Lcom/transsion/camera/app/ui/MainScreenOriginPosition;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->getBottomHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v0, v2, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    const p2, 0x7f090276

    .line 167
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayout:Landroid/widget/FrameLayout;

    const p2, 0x7f0900f5

    .line 168
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayoutBackground:Landroid/widget/FrameLayout;

    const p2, 0x7f0900f6

    .line 169
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraIndicator:Landroid/view/View;

    .line 170
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayoutRoot:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public notifyCameraOperateActionToUI(I)V
    .locals 6

    .line 390
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mFrontSettingUIList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 397
    :cond_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->notifyCameraOperateActionToUI(I)V

    const-string v0, "off"

    const-string v2, "key_ai_group_photo_change_state"

    if-eqz p1, :cond_7

    const/4 v3, 0x1

    if-eq p1, v3, :cond_6

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq p1, v4, :cond_5

    const/4 v4, 0x3

    if-eq p1, v4, :cond_6

    const/4 v4, 0x4

    if-eq p1, v4, :cond_7

    const/4 v4, 0x5

    if-eq p1, v4, :cond_6

    const/16 v4, 0xb

    if-eq p1, v4, :cond_4

    const/16 v4, 0xc

    if-eq p1, v4, :cond_3

    const/16 v4, 0x1b

    if-eq p1, v4, :cond_2

    const/16 v4, 0x1f

    if-eq p1, v4, :cond_6

    const/16 v4, 0x35

    if-eq p1, v4, :cond_1

    const/16 v4, 0x23

    if-eq p1, v4, :cond_7

    const/16 v4, 0x24

    if-eq p1, v4, :cond_6

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    goto :goto_2

    .line 450
    :pswitch_0
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mSelfTimerCapturing:Z

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mVideoRecordBegin:Z

    if-nez p1, :cond_8

    .line 451
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsFacebeautyOn:Z

    .line 452
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->show(Z)V

    goto :goto_2

    .line 445
    :pswitch_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->hide()V

    goto :goto_2

    .line 406
    :pswitch_2
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraIndicator:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 403
    :pswitch_3
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mVideoRecordBegin:Z

    goto :goto_2

    .line 400
    :pswitch_4
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mVideoRecordBegin:Z

    goto :goto_2

    .line 456
    :cond_1
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsFacebeautyOn:Z

    goto :goto_2

    .line 426
    :cond_2
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mSelfTimerCapturing:Z

    .line 427
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mVideoRecordBegin:Z

    .line 428
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    .line 429
    invoke-virtual {p0, v2, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 432
    :cond_3
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mSelfTimerCapturing:Z

    goto :goto_1

    .line 413
    :cond_4
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mSelfTimerCapturing:Z

    .line 414
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    .line 415
    invoke-virtual {p0, v2, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 408
    :cond_5
    :goto_0
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsAIGroupPhoto:Z

    .line 409
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    .line 410
    invoke-virtual {p0, v2, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 441
    :cond_6
    :goto_1
    :pswitch_5
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "on"

    .line 442
    invoke-virtual {p0, v2, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 422
    :cond_7
    :pswitch_6
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    .line 423
    invoke-virtual {p0, v2, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    :goto_2
    return-void

    :cond_9
    :goto_3
    const/16 v0, 0x13

    if-ne p1, v0, :cond_a

    .line 391
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraIndicator:Landroid/view/View;

    if-eqz p0, :cond_a

    .line 393
    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationX(F)V

    :cond_a
    return-void

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_2
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x48
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4c
        :pswitch_0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public onOrientationChanged(I)V
    .locals 4

    .line 364
    sget-object v0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onOrientationChanged], orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 365
    iget v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mOrientation:I

    if-eq v0, p1, :cond_4

    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    goto :goto_2

    .line 369
    :cond_0
    iput p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mOrientation:I

    .line 371
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 373
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 374
    instance-of v3, v2, Lcom/transsion/camera/app/ui/widget/IRotatable;

    if-eqz v3, :cond_1

    .line 375
    check-cast v2, Lcom/transsion/camera/app/ui/widget/IRotatable;

    const/4 v3, 0x1

    invoke-interface {v2, p1, v3}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 379
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x10e

    if-ne p1, v1, :cond_3

    const p1, 0x800013

    .line 381
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1

    :cond_3
    const p1, 0x800015

    .line 383
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 385
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    :goto_2
    return-void
.end method

.method protected setSettingUIList()V
    .locals 7

    .line 181
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_conflict_ui_state"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 182
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_normal_camera_item_long_click"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 183
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_wide_camera_item_seleccted"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 184
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_ai_group_photo_camera_id"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 185
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayoutRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayoutRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 189
    :cond_0
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getFrontWideCameraId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    .line 190
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mFrontSettingUIList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 195
    :cond_2
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowFrontUI:Z

    goto :goto_2

    .line 191
    :cond_3
    :goto_1
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowFrontUI:Z

    .line 192
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsAIGroupPhoto:Z

    .line 193
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->hideWideCamera()V

    .line 198
    :goto_2
    sget-object v3, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setSettingUIList] mIsNeedShowFrontUI:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowFrontUI:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " hasFrontWideCamera:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mSettingUIList:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mFrontSettingUIList:Ljava/util/List;

    .line 199
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-static {v3, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 202
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mFrontSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;

    .line 204
    invoke-interface {v3}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->getEntryViewType()Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;

    move-result-object v4

    sget-object v5, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;->TYPE_TEXT:Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;

    if-ne v4, v5, :cond_5

    const v4, 0x7f0c00fb

    goto :goto_4

    .line 206
    :cond_5
    invoke-interface {v3}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->getEntryViewType()Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;

    move-result-object v4

    sget-object v5, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;->TYPE_IMAGE:Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;

    if-ne v4, v5, :cond_6

    const v4, 0x7f0c004a

    goto :goto_4

    :cond_6
    move v4, v2

    :goto_4
    if-nez v4, :cond_7

    return-void

    .line 213
    :cond_7
    iget-object v5, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mInflater:Landroid/view/LayoutInflater;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayout:Landroid/widget/FrameLayout;

    invoke-interface {v3, v5, v6, v4}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v4

    .line 214
    invoke-interface {v3}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->needShowEntryView()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 215
    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsAIGroupPhoto:Z

    if-eqz v5, :cond_8

    .line 216
    iget-object v5, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0021

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 217
    invoke-interface {v3}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->updateEntryValue()V

    .line 219
    :cond_8
    iget-object v3, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 220
    instance-of v3, v4, Lcom/transsion/camera/app/ui/widget/IRotatable;

    if-eqz v3, :cond_4

    .line 221
    check-cast v4, Lcom/transsion/camera/app/ui/widget/IRotatable;

    iget v3, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mOrientation:I

    invoke-interface {v4, v3, v2}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    goto :goto_3

    .line 226
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 227
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_b

    const/4 v3, 0x3

    if-eq v2, v3, :cond_a

    goto :goto_5

    .line 229
    :cond_a
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070373

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 230
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayoutBackground:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080537

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 233
    :cond_b
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070372

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 234
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayoutBackground:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080536

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 237
    :goto_5
    iget-object v2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsZoomWheelShowing:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowFrontUI:Z

    if-eqz v0, :cond_c

    .line 240
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->show(Z)V

    .line 241
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->showWideCamera()V

    :cond_c
    return-void
.end method

.method public setSettingUIList(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 175
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mFrontSettingUIList:Ljava/util/List;

    .line 176
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setSettingUIList(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public show(Z)V
    .locals 3

    .line 266
    sget-object v0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[show] mRootView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mIsNeedShowFrontUI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowFrontUI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isNeedResetLayout:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 268
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowFrontUI:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mFrontSettingUIList:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 269
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsFilterUIOn:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsFacebeautyOn:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 272
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected showWhenCamSwitchEnd()V
    .locals 2

    .line 465
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowFrontUI:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 466
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->show(Z)V

    .line 467
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->showWideCamera()V

    .line 469
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_ai_group_photo_change_state"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v1, "on"

    .line 470
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public showWideCamera()V
    .locals 3

    .line 277
    sget-object v0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showWideCamera mFrontSettingUIList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mFrontSettingUIList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mIsNeedShowFrontUI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowFrontUI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 278
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mIsNeedShowFrontUI:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mFrontSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsFilterUIOn:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsFacebeautyOn:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 281
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->show(Z)V

    .line 283
    iget-object v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayoutRoot:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 284
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 286
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mAllowSetAlpha:Z

    if-eqz v0, :cond_2

    .line 287
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mWideCameraLayoutRoot:Landroid/view/ViewGroup;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0xa

    .line 289
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/FrontWideCameraUI$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI$2;-><init>(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 300
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mFrontSettingUIList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;

    .line 301
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->updateEntryValue()V

    goto :goto_0

    :cond_3
    :goto_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public unInit()V
    .locals 3

    const/4 v0, 0x0

    .line 320
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsFilterUIOn:Z

    .line 321
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsFacebeautyOn:Z

    .line 322
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_conflict_ui_state"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 323
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_normal_camera_item_long_click"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 324
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_wide_camera_item_seleccted"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 325
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "key_ai_group_photo_camera_id"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public updateWideCameraAlpha(FZ)V
    .locals 6

    .line 330
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    new-array p2, p2, [F

    aput v2, p2, v3

    aput p1, p2, v1

    const-string v4, "alpha"

    .line 332
    invoke-static {v0, v4, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-wide/16 v4, 0x12c

    .line 333
    invoke-virtual {p2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 334
    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 336
    :cond_0
    iget-object p2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 337
    iget-object p2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 339
    :cond_1
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mRootView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    cmpl-float p1, p1, v2

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    .line 341
    :goto_1
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mAllowSetAlpha:Z

    :cond_3
    return-void
.end method

.method public updateWideCameraUI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 347
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->updateWideCameraUI(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 348
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsFacebeautyOn:Z

    return-void
.end method

.method public updateWideCameraUIByMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 353
    sget-object v0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateWideCameraUIByMode], preModeName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " nextModeName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mFrontSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 355
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;

    .line 356
    invoke-interface {v1, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;->updateWideCameraUIByMode(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 359
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->mIsFacebeautyOn:Z

    return-void
.end method
