.class public Lcom/transsion/camera/ui/setting/BarcodeUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "BarcodeUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/BarcodeUI$UIHandler;,
        Lcom/transsion/camera/ui/setting/BarcodeUI$MySettingChangeListener;,
        Lcom/transsion/camera/ui/setting/BarcodeUI$BarcodeResultCallbackImpl;
    }
.end annotation


# static fields
.field private static final BARCODE_VIEW_HIDE:I = 0x1

.field private static final BARCODE_VIEW_SHOW:I = 0x2

.field private static final MSG_BARCODE_RESULT:I = 0x64

.field private static final MSG_BARCODE_VIEW_CLOSE:I = 0x65

.field private static final MSG_POPWINDOW_CLOSE:I = 0x66

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private bottom:F

.field private entry:Landroid/view/View;

.field private imageViewLB:Landroid/widget/ImageView;

.field private imageViewLT:Landroid/widget/ImageView;

.field private imageViewRB:Landroid/widget/ImageView;

.field private imageViewRT:Landroid/widget/ImageView;

.field private mAnimatiorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mBarcodeView:Landroid/view/View;

.field private mCanUpdateBarcodeResult:Z

.field private mCodeResult:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mDpi:F

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitUiMode:I

.field private mInterpolatorDown:Landroid/view/animation/PathInterpolator;

.field private mInterpolatorMove:Landroid/view/animation/PathInterpolator;

.field private mInterpolatorUp:Landroid/view/animation/PathInterpolator;

.field private mLastQRCodeRectf:Landroid/graphics/RectF;

.field private mLastQRCodeResult:Ljava/lang/String;

.field private mMarinBottom:I

.field private mMarinTop:I

.field private mNightModeChange:Z

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mPopupWindowNeedHide:Z

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mQRCodeRectf:Landroid/graphics/RectF;

.field private mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mSettingHide:Z

.field private mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

.field protected mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mUIHandler:Landroid/os/Handler;

.field private popAnimateEnd:Z

.field private qrCodeResult:Ljava/lang/String;

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 66
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "BarcodeUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/BarcodeUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 5

    .line 119
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    const-string v0, ""

    .line 82
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mLastQRCodeResult:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 84
    iput v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mDpi:F

    const/4 v1, 0x0

    .line 106
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->popAnimateEnd:Z

    const/4 v2, 0x1

    .line 107
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mCanUpdateBarcodeResult:Z

    .line 108
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mSettingHide:Z

    .line 109
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mNightModeChange:Z

    .line 110
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPopupWindowNeedHide:Z

    .line 115
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3e800000    # 0.25f

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mInterpolatorDown:Landroid/view/animation/PathInterpolator;

    .line 116
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v1, v2, v4, v3, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mInterpolatorUp:Landroid/view/animation/PathInterpolator;

    .line 117
    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v2, v4, v2, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mInterpolatorMove:Landroid/view/animation/PathInterpolator;

    .line 228
    new-instance v0, Lcom/transsion/camera/ui/setting/BarcodeUI$MySettingChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/BarcodeUI$MySettingChangeListener;-><init>(Lcom/transsion/camera/ui/setting/BarcodeUI;Lcom/transsion/camera/ui/setting/BarcodeUI$1;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 292
    new-instance v0, Lcom/transsion/camera/ui/setting/BarcodeUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/BarcodeUI$1;-><init>(Lcom/transsion/camera/ui/setting/BarcodeUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mAnimatiorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 120
    sget-object v0, Lcom/transsion/camera/ui/setting/BarcodeUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "BarcodeUI"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 121
    new-instance v0, Lcom/transsion/camera/ui/setting/BarcodeSettingUISpec;

    invoke-direct {v0, p1}, Lcom/transsion/camera/ui/setting/BarcodeSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 122
    new-instance p1, Lcom/transsion/camera/ui/setting/BarcodeUI$UIHandler;

    invoke-direct {p1, p0, p0, v1}, Lcom/transsion/camera/ui/setting/BarcodeUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/BarcodeUI;Lcom/transsion/camera/ui/setting/BarcodeUI;Lcom/transsion/camera/ui/setting/BarcodeUI$1;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mUIHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$1000(Lcom/transsion/camera/ui/setting/BarcodeUI;)Landroid/view/View;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mBarcodeView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/ui/setting/BarcodeUI;)Landroid/animation/AnimatorListenerAdapter;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mAnimatiorListener:Landroid/animation/AnimatorListenerAdapter;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/ui/setting/BarcodeUI;)Landroid/view/animation/PathInterpolator;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mInterpolatorUp:Landroid/view/animation/PathInterpolator;

    return-object p0
.end method

.method static synthetic access$1300()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 65
    sget-object v0, Lcom/transsion/camera/ui/setting/BarcodeUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/ui/setting/BarcodeUI;[Ljava/lang/String;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/BarcodeUI;->doUpdateBarcodeResult([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/transsion/camera/ui/setting/BarcodeUI;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/BarcodeUI;->doBarcodeViewClose()V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/ui/setting/BarcodeUI;)Landroid/os/Handler;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mUIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/ui/setting/BarcodeUI;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/BarcodeUI;->hideView()V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/camera/ui/setting/BarcodeUI;)Ljava/lang/String;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mLastQRCodeResult:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Lcom/transsion/camera/ui/setting/BarcodeUI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mLastQRCodeResult:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/transsion/camera/ui/setting/BarcodeUI;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->popAnimateEnd:Z

    return p0
.end method

.method static synthetic access$602(Lcom/transsion/camera/ui/setting/BarcodeUI;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->popAnimateEnd:Z

    return p1
.end method

.method static synthetic access$700(Lcom/transsion/camera/ui/setting/BarcodeUI;)Landroid/content/Context;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/ui/setting/BarcodeUI;)Landroid/widget/PopupWindow;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/ui/setting/BarcodeUI;)Landroid/view/animation/PathInterpolator;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mInterpolatorDown:Landroid/view/animation/PathInterpolator;

    return-object p0
.end method

.method private createNotification(Ljava/lang/String;)V
    .locals 6

    .line 479
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 481
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "channel_1"

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_0

    .line 482
    new-instance v1, Landroid/app/NotificationChannel;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 483
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 486
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mContext:Landroid/content/Context;

    const-class v4, Lcom/transsion/camera/ui/setting/CodeResultActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "qrCodeResult"

    .line 487
    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 488
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 490
    new-instance v3, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mContext:Landroid/content/Context;

    .line 491
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f0f0065

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 492
    invoke-virtual {v3, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 493
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v3, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    const p0, 0x7f08044b

    .line 494
    invoke-virtual {v3, p0}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    const/4 p0, 0x1

    .line 495
    invoke-virtual {v3, p0}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 496
    invoke-virtual {v3, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 497
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 498
    invoke-virtual {v0, p0, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private doBarcodeViewClose()V
    .locals 9

    .line 618
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/BarcodeUI;->hideView()V

    const/4 v0, 0x1

    .line 619
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPopupWindowNeedHide:Z

    .line 620
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mCanUpdateBarcodeResult:Z

    if-nez v0, :cond_0

    return-void

    .line 623
    :cond_0
    iget v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->bottom:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mQRCodeRectf:Landroid/graphics/RectF;

    if-eqz v1, :cond_1

    .line 624
    iget v2, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mMarinBottom:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPreviewHeight:I

    int-to-float v2, v2

    sub-float v3, v0, v2

    .line 625
    iget v0, v1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPreviewWidth:I

    int-to-float v1, v1

    sub-float v4, v0, v1

    .line 626
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewLT:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewLB:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewRT:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewRB:Landroid/widget/ImageView;

    invoke-static/range {v3 .. v8}, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->endBoxAnimation(FFLandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    :cond_1
    const/4 p0, 0x2

    .line 629
    sput p0, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->mIsStartAnimation:I

    const/4 p0, 0x0

    .line 630
    sput-boolean p0, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->mAlaphChange:Z

    return-void
.end method

.method private doUpdateBarcodeResult([Ljava/lang/String;)V
    .locals 9

    .line 535
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/BarcodeUI;->showView()V

    .line 536
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x20

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 537
    :goto_0
    iget-boolean v3, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mNightModeChange:Z

    if-eq v3, v0, :cond_2

    .line 538
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mNightModeChange:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 540
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0c002b

    invoke-virtual {v0, v4, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->view:Landroid/view/View;

    goto :goto_1

    .line 542
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0c0067

    invoke-virtual {v0, v4, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->view:Landroid/view/View;

    .line 544
    :goto_1
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/BarcodeUI;->initView()V

    .line 547
    :cond_2
    aget-object v0, p1, v2

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->qrCodeResult:Ljava/lang/String;

    .line 548
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mCanUpdateBarcodeResult:Z

    if-eqz v0, :cond_9

    if-nez p1, :cond_3

    goto/16 :goto_3

    :cond_3
    const/4 v0, 0x5

    .line 552
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/4 v2, 0x6

    .line 553
    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 556
    new-instance v3, Landroid/graphics/RectF;

    aget-object v4, p1, v1

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const/4 v5, 0x2

    aget-object v6, p1, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    const/4 v7, 0x3

    aget-object v7, p1, v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    const/4 v8, 0x4

    aget-object p1, p1, v8

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-direct {v3, v4, v6, v7, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v3, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mQRCodeRectf:Landroid/graphics/RectF;

    .line 557
    iget p1, v3, Landroid/graphics/RectF;->left:F

    div-float/2addr p1, v2

    iget v4, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPreviewWidth:I

    int-to-float v4, v4

    mul-float/2addr p1, v4

    .line 558
    iget v4, v3, Landroid/graphics/RectF;->top:F

    div-float/2addr v4, v0

    iget v6, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPreviewHeight:I

    int-to-float v6, v6

    mul-float/2addr v4, v6

    .line 559
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v3, v2

    iget v2, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPreviewWidth:I

    int-to-float v2, v2

    mul-float/2addr v3, v2

    add-float/2addr v3, p1

    .line 560
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mQRCodeRectf:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v0

    iget v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPreviewHeight:I

    int-to-float v0, v0

    mul-float/2addr v2, v0

    add-float/2addr v2, v4

    iput v2, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->bottom:F

    .line 561
    new-instance v0, Landroid/graphics/RectF;

    iget v2, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mMarinTop:I

    int-to-float v6, v2

    add-float/2addr v4, v6

    iget v6, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->bottom:F

    int-to-float v2, v2

    add-float/2addr v6, v2

    invoke-direct {v0, p1, v4, v3, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mQRCodeRectf:Landroid/graphics/RectF;

    .line 563
    iget p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->bottom:F

    iget v2, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mMarinBottom:I

    iget v3, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPreviewHeight:I

    iget v4, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPreviewWidth:I

    invoke-static {v0, p1, v2, v3, v4}, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->setQRCodeRectf(Landroid/graphics/RectF;FIII)V

    .line 565
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewLT:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewLT:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result p1

    if-nez p1, :cond_4

    .line 566
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewLT:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/animation/Animation;->cancel()V

    .line 567
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewLB:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/animation/Animation;->cancel()V

    .line 568
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewRT:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/animation/Animation;->cancel()V

    .line 569
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewRB:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/animation/Animation;->cancel()V

    .line 572
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mQRCodeRectf:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mBarcodeView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-double v2, p1

    const-wide v6, 0x3fb999999999999aL    # 0.1

    cmpg-double p1, v2, v6

    if-gez p1, :cond_5

    return-void

    .line 576
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->qrCodeResult:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mLastQRCodeResult:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->qrCodeResult:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 577
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->qrCodeResult:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mLastQRCodeResult:Ljava/lang/String;

    .line 578
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewLT:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewLB:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewRT:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewRB:Landroid/widget/ImageView;

    invoke-static {p1, v0, v2, v3}, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->startBoxAnimation(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 579
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->qrCodeResult:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/BarcodeUI;->doUpdateNotation(Ljava/lang/String;)V

    goto :goto_2

    .line 581
    :cond_6
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->qrCodeResult:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mLastQRCodeResult:Ljava/lang/String;

    .line 584
    :goto_2
    sget p1, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->mIsStartAnimation:I

    if-ne p1, v5, :cond_7

    .line 585
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewLT:Landroid/widget/ImageView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 586
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewLB:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 587
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewRB:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 588
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewRT:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 589
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewLT:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewLB:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewRT:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewRB:Landroid/widget/ImageView;

    invoke-static {p1, v0, v2, v3}, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->startBoxAnimation(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 592
    :cond_7
    sget p1, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->mIsStartAnimation:I

    if-ne p1, v1, :cond_8

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mLastQRCodeRectf:Landroid/graphics/RectF;

    if-eqz p1, :cond_8

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mQRCodeRectf:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_8

    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget v0, v1, Landroid/graphics/RectF;->top:F

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_8

    .line 593
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewLT:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mQRCodeRectf:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    const/high16 v1, 0x41200000    # 10.0f

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mQRCodeRectf:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v2, 0x96

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mInterpolatorMove:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 594
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewLB:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mQRCodeRectf:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->bottom:F

    iget v4, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mMarinBottom:I

    int-to-float v4, v4

    sub-float/2addr v0, v4

    iget v4, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPreviewHeight:I

    int-to-float v4, v4

    sub-float/2addr v0, v4

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mInterpolatorMove:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 595
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewRT:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mQRCodeRectf:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPreviewWidth:I

    int-to-float v4, v4

    sub-float/2addr v0, v4

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mQRCodeRectf:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mInterpolatorMove:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 596
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewRB:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mQRCodeRectf:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPreviewWidth:I

    int-to-float v4, v4

    sub-float/2addr v0, v4

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->bottom:F

    iget v4, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mMarinBottom:I

    int-to-float v4, v4

    sub-float/2addr v0, v4

    iget v4, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPreviewHeight:I

    int-to-float v4, v4

    sub-float/2addr v0, v4

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mInterpolatorMove:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 599
    :cond_8
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mQRCodeRectf:Landroid/graphics/RectF;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mLastQRCodeRectf:Landroid/graphics/RectF;

    :cond_9
    :goto_3
    return-void
.end method

.method private doUpdateBarcodeView(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 256
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/BarcodeUI;->showView()V

    goto :goto_0

    .line 253
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/BarcodeUI;->hideView()V

    :goto_0
    return-void
.end method

.method private doUpdateNotation(Ljava/lang/String;)V
    .locals 5

    .line 604
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 605
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 607
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mBarcodeView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 608
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 609
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 611
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mBarcodeView:Landroid/view/View;

    iget v2, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mDpi:F

    float-to-int v3, v2

    mul-int/lit8 v3, v3, 0x4

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x34

    const/16 v4, 0x33

    invoke-virtual {v0, v1, v4, v3, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 613
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mCodeResult:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0068

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 614
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/BarcodeUI;->createNotification(Ljava/lang/String;)V

    return-void
.end method

.method private getCurrentUiMode(Landroid/content/Context;)I
    .locals 0

    .line 126
    const-class p0, Landroid/app/UiModeManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/UiModeManager;

    .line 127
    invoke-virtual {p0}, Landroid/app/UiModeManager;->getNightMode()I

    move-result p0

    return p0
.end method

.method private hideView()V
    .locals 1

    .line 264
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mBarcodeView:Landroid/view/View;

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    .line 265
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private initView()V
    .locals 5

    .line 313
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->view:Landroid/view/View;

    iget v2, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mDpi:F

    float-to-int v2, v2

    mul-int/lit16 v2, v2, 0x160

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPopupWindow:Landroid/widget/PopupWindow;

    const/16 v1, 0x3ea

    .line 314
    invoke-static {v0, v1}, Landroidx/core/widget/PopupWindowCompat;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V

    .line 315
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPopupWindow:Landroid/widget/PopupWindow;

    const v1, 0x7f100166

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 316
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 317
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->view:Landroid/view/View;

    const v1, 0x7f0901b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mCodeResult:Landroid/widget/TextView;

    .line 318
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->entry:Landroid/view/View;

    const v1, 0x7f09012c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewLT:Landroid/widget/ImageView;

    .line 319
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->entry:Landroid/view/View;

    const v1, 0x7f09012b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewLB:Landroid/widget/ImageView;

    .line 320
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->entry:Landroid/view/View;

    const v1, 0x7f09012e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewRT:Landroid/widget/ImageView;

    .line 321
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->entry:Landroid/view/View;

    const v1, 0x7f09012d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->imageViewRB:Landroid/widget/ImageView;

    .line 323
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/transsion/camera/ui/setting/BarcodeUI$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/BarcodeUI$2;-><init>(Lcom/transsion/camera/ui/setting/BarcodeUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 421
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/16 v1, 0xff

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private registerKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private showView()V
    .locals 1

    .line 270
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mBarcodeView:Landroid/view/View;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 271
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private unRegisterKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method


# virtual methods
.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 132
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mContext:Landroid/content/Context;

    .line 133
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mInflater:Landroid/view/LayoutInflater;

    .line 134
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/BarcodeUI;->getCurrentUiMode(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mInitUiMode:I

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x20

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 136
    :goto_0
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mNightModeChange:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const v0, 0x7f0c002b

    .line 138
    invoke-virtual {p1, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->view:Landroid/view/View;

    goto :goto_1

    :cond_1
    const v0, 0x7f0c0067

    .line 140
    invoke-virtual {p1, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->view:Landroid/view/View;

    .line 143
    :goto_1
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mDpi:F

    const v0, 0x7f0c0024

    .line 144
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->entry:Landroid/view/View;

    const p2, 0x7f090130

    .line 145
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mBarcodeView:Landroid/view/View;

    const/4 p2, 0x4

    .line 146
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    const-string p1, ""

    .line 147
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mLastQRCodeResult:Ljava/lang/String;

    .line 148
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPopupWindowNeedHide:Z

    .line 149
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/BarcodeUI;->initView()V

    .line 150
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->entry:Landroid/view/View;

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

    .line 183
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public notifyCameraOperateAction(I)V
    .locals 6

    const-string v0, ""

    const/16 v1, 0x65

    if-eqz p1, :cond_6

    const/16 v2, 0xd

    const/16 v3, 0x66

    if-eq p1, v2, :cond_5

    const/16 v2, 0x1b

    const/4 v4, 0x0

    if-eq p1, v2, :cond_4

    const/16 v2, 0x1f

    const/4 v5, 0x1

    if-eq p1, v2, :cond_2

    const/16 v2, 0x23

    if-eq p1, v2, :cond_5

    const/16 v2, 0x4d

    if-eq p1, v2, :cond_4

    const/16 v2, 0x4e

    if-eq p1, v2, :cond_2

    const/16 v2, 0x55

    if-eq p1, v2, :cond_1

    const/16 v2, 0x56

    if-eq p1, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 471
    :cond_0
    iput-boolean v4, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mSettingHide:Z

    .line 472
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mLastQRCodeResult:Ljava/lang/String;

    .line 473
    iput-boolean v5, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mCanUpdateBarcodeResult:Z

    goto :goto_0

    .line 462
    :cond_1
    iput-boolean v5, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mSettingHide:Z

    .line 463
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/BarcodeUI;->hideView()V

    .line 464
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 465
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 466
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 467
    iput-boolean v4, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mCanUpdateBarcodeResult:Z

    goto :goto_0

    .line 454
    :cond_2
    :pswitch_0
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mSettingHide:Z

    if-eqz p1, :cond_3

    return-void

    .line 457
    :cond_3
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mLastQRCodeResult:Ljava/lang/String;

    .line 458
    iput-boolean v5, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mCanUpdateBarcodeResult:Z

    goto :goto_0

    .line 443
    :cond_4
    :pswitch_1
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/BarcodeUI;->hideView()V

    .line 444
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 445
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 446
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 447
    iput-boolean v4, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mCanUpdateBarcodeResult:Z

    goto :goto_0

    .line 429
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 430
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 433
    :cond_6
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/BarcodeUI;->hideView()V

    .line 434
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 435
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "1"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 436
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mLastQRCodeResult:Ljava/lang/String;

    :cond_7
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 194
    new-instance v0, Lcom/transsion/camera/ui/setting/BarcodeUI$BarcodeResultCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/BarcodeUI$BarcodeResultCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/BarcodeUI;Lcom/transsion/camera/ui/setting/BarcodeUI$1;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 195
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 197
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 198
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz p0, :cond_0

    .line 199
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
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

    .line 218
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_0

    .line 221
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 222
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/BarcodeUI;->registerKeyToMonitor(Ljava/lang/String;)V

    goto :goto_0

    .line 224
    :cond_0
    sget-object p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mStatusMonitor is null! maybe flow is wrong!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public unInit()V
    .locals 2

    .line 277
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 278
    sget-object v0, Lcom/transsion/camera/ui/setting/BarcodeUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "unit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 283
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_2

    .line 286
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 287
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/BarcodeUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x1

    .line 289
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/BarcodeUI;->doUpdateBarcodeView(I)V

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 3

    .line 155
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPopupWindowNeedHide:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mBarcodeView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v0

    .line 159
    iget v1, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPreviewWidth:I

    .line 160
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPreviewHeight:I

    .line 161
    iput p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mMarinTop:I

    .line 162
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result p1

    iget v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mMarinTop:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mPreviewHeight:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mMarinBottom:I

    .line 164
    iget p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mInitUiMode:I

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/BarcodeUI;->getCurrentUiMode(Landroid/content/Context;)I

    move-result v0

    if-eq p1, v0, :cond_3

    .line 165
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/BarcodeUI;->getCurrentUiMode(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mInitUiMode:I

    .line 166
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x20

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v0

    .line 167
    :goto_0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mNightModeChange:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 169
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0c002b

    invoke-virtual {p1, v2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->view:Landroid/view/View;

    goto :goto_1

    .line 171
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0c0067

    invoke-virtual {p1, v2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI;->view:Landroid/view/View;

    .line 173
    :goto_1
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/BarcodeUI;->initView()V

    :cond_3
    return-void
.end method
