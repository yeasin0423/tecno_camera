.class public Lcom/transsion/camera/ui/setting/zoom/ZoomUI;
.super Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;
.source "ZoomUI.java"

# interfaces
.implements Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ZoomViewChangedListener;
.implements Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$WideMacroClickLister;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/zoom/ZoomUI$UIHandler;
    }
.end annotation


# static fields
.field private static final MSG_HIDE_SEEKBAR:I = 0x65

.field private static final MSG_SHOW_SEEKBAR:I = 0x64

.field private static final SIDEBAR_ANIMATION_TIME:J = 0x82L

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final TIME_HIDE_ZOOM_SEEKBAR_DELAY:I = 0x7d0


# instance fields
.field private mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

.field private mIsZoomChanging:Z

.field private mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mStrokeCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

.field private mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$UIHandler;

.field private mZoomSeekbarLayout:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

.field private mZoomUIViewGroup:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ZoomUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 3

    .line 89
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;-><init>(Landroid/content/res/Resources;)V

    const/4 p1, 0x0

    .line 53
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mIsZoomChanging:Z

    .line 54
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 v0, 0x3e800000    # 0.25f

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1, v0, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 90
    new-instance p1, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$UIHandler;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Lcom/transsion/camera/ui/setting/zoom/ZoomUI$1;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$UIHandler;

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 42
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mIsZoomChanging:Z

    return p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mZoomSeekbarLayout:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Lcom/transsion/camera/app/ui/widget/RotateTextView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Lcom/transsion/camera/app/ui/widget/RotateTextView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mStrokeCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    return-object p0
.end method

.method private isNeedShowWideIcon()Z
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportWide:Z

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isCurrentCameraIdSupportWide()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNumOfWideCameraItem:I

    if-lez v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected correctZoomValue(I)I
    .locals 0

    const/16 p0, 0x64

    .line 354
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method protected doOrientationChanged(I)V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 292
    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateTextView;->setOrientation(IZ)V

    .line 293
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mStrokeCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateTextView;->setOrientation(IZ)V

    .line 296
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mZoomSeekbarLayout:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    if-eqz p0, :cond_1

    .line 297
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->doOrientationChanged(I)V

    :cond_1
    return-void
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected hideZoomUI()V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$UIHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 139
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mZoomSeekbarLayout:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 140
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mStrokeCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$UIHandler;

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method protected loadEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c00fe

    const/4 v1, 0x0

    .line 96
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09028e

    .line 97
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mZoomUIViewGroup:Landroid/view/ViewGroup;

    const p2, 0x7f09028d

    .line 98
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mZoomSeekbarLayout:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    const p2, 0x7f09025b

    .line 99
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/RotateTextView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    const p2, 0x7f090260

    .line 100
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/RotateTextView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mStrokeCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    .line 102
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mZoomSeekbarLayout:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    if-eqz p2, :cond_0

    .line 103
    invoke-virtual {p2, p0, p0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->setListener(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ZoomViewChangedListener;Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$WideMacroClickLister;)V

    :cond_0
    return-object p1
.end method

.method public onMacroCameraClick()V
    .locals 2

    .line 333
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_0

    const-string v0, "key_zoom_limit_monitor"

    .line 334
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v1, "value_zoom_enable_macro"

    .line 335
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onWideCameraClick()V
    .locals 2

    .line 325
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_0

    const-string v0, "key_zoom_limit_monitor"

    .line 326
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v1, "value_zoom_enable_wide"

    .line 327
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onZoomViewChangedEnd()V
    .locals 1

    const/4 v0, 0x0

    .line 320
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->sendZoomUIMessage(Z)V

    return-void
.end method

.method public onZoomViewChanging(IZ)V
    .locals 3

    if-eqz p2, :cond_1

    .line 304
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->getDeviceZoomValue(I)I

    move-result p2

    const/4 v0, 0x1

    .line 305
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mIsZoomChanging:Z

    .line 306
    invoke-virtual {p0, p2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->seekprogressToZoomValue(I)I

    move-result p2

    .line 307
    iput p2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    .line 308
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onZoomViewChanging: progress= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", zoomValue= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 309
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getVisibility()I

    move-result p2

    if-nez p2, :cond_0

    .line 310
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->getZoomRatio(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mStrokeCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->getZoomRatio(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    :cond_0
    iget p2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-virtual {p0, p2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setValueToSetting(I)V

    .line 314
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->zoomValueChange(I)V

    :cond_1
    return-void
.end method

.method protected sendZoomUIMessage(Z)V
    .locals 3

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 265
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mIsZoomChanging:Z

    .line 266
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraControl:Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 267
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraControl:Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->hideWideCamera()V

    .line 269
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$UIHandler;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 270
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$UIHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 272
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mIsZoomChanging:Z

    .line 273
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$UIHandler;

    const/16 v0, 0x65

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 274
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$UIHandler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method setLayoutPadding()V
    .locals 3

    .line 110
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setLayoutPadding()V

    .line 111
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f07038e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 112
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mZoomUIViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/camera/utils/ScreenUtils;->getWaterfallEdgeSize(Landroid/content/Context;)I

    move-result v1

    if-lez v1, :cond_0

    add-int/2addr v0, v1

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mZoomUIViewGroup:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTopPadding:I

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mBottomPadding:I

    invoke-virtual {v1, v0, v2, v0, p0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method setSeekBarEnable(Z)V
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mZoomSeekbarLayout:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    if-eqz p0, :cond_0

    .line 348
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setupEntryView()V
    .locals 3

    .line 121
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setupEntryView()V

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mZoomSeekbarLayout:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    if-eqz v0, :cond_0

    .line 123
    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mMaxValue:I

    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->getShowMaxZoomValue(I)I

    move-result v1

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mMinValue:I

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-virtual {v0, v1, v2, p0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->initZoomView(III)V

    :cond_0
    return-void
.end method

.method protected showZoomUI(Z)V
    .locals 8

    .line 150
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mZoomSeekbarLayout:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 154
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCapturing:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 158
    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v0, v0, [F

    .line 159
    fill-array-data v0, :array_1

    invoke-static {v2, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const-wide/16 v2, 0x82

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_8

    .line 162
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mZoomSeekbarLayout:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_2

    .line 166
    :cond_2
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    const-string v6, "1"

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mFrontWideCameraId:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 167
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mZoomSeekbarLayout:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 169
    :cond_3
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mZoomSeekbarLayout:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 170
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->isNeedShowWideIcon()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 171
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mZoomSeekbarLayout:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    iget-boolean v6, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsWideCamUISupport:Z

    invoke-virtual {v1, v6}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->handleWideIcon(Z)V

    .line 172
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mZoomSeekbarLayout:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    iget-boolean v6, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportMacro:Z

    invoke-virtual {v1, v6}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->handleMacroIcon(Z)V

    .line 173
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mZoomSeekbarLayout:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    iget-boolean v6, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    invoke-virtual {v1, v6}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->updateRecordingState(Z)V

    .line 174
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mZoomSeekbarLayout:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    iget-boolean v6, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportTele:Z

    if-eqz v6, :cond_4

    sget-object v6, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;->STYLE_SUPPORT_TELE:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;

    goto :goto_0

    :cond_4
    sget-object v6, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;->STYLE_SUPPORT_WIDE:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;

    :goto_0
    invoke-virtual {v1, v6}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->updateBarStyle(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;)V

    goto :goto_1

    .line 176
    :cond_5
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mZoomSeekbarLayout:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-virtual {v1, v5}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->handleWideIcon(Z)V

    .line 177
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mZoomSeekbarLayout:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-virtual {v1, v5}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->handleMacroIcon(Z)V

    .line 178
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mZoomSeekbarLayout:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    iget-boolean v6, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    invoke-virtual {v1, v6}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->updateRecordingState(Z)V

    .line 179
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v6

    invoke-interface {v6}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getWideCameraId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportTele:Z

    if-eqz v1, :cond_6

    .line 181
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mZoomSeekbarLayout:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    sget-object v6, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;->STYLE_SUPPORT_TELE:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;

    invoke-virtual {v1, v6}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->updateBarStyle(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;)V

    goto :goto_1

    .line 183
    :cond_6
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mZoomSeekbarLayout:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    sget-object v6, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;->STYLE_MARCO:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;

    invoke-virtual {v1, v6}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->updateBarStyle(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;)V

    .line 188
    :goto_1
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mStrokeCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 191
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    new-array v6, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v6, v5

    invoke-static {v1, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 192
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v7, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 193
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 194
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mStrokeCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    new-array v6, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v6, v5

    invoke-static {v1, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 195
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v7, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 196
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 197
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mZoomSeekbarLayout:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v4, v5

    invoke-static {v1, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 198
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 199
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 200
    new-instance v1, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$1;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$1;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_3

    :cond_7
    :goto_2
    return-void

    .line 214
    :cond_8
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mZoomSeekbarLayout:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->disableWideCamera()V

    .line 216
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    new-array v6, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v6, v5

    invoke-static {v0, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 217
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v7, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 218
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 219
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mStrokeCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    new-array v6, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v6, v5

    invoke-static {v0, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 220
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v7, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 221
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 222
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mZoomSeekbarLayout:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v4, v5

    invoke-static {v0, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 223
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 224
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 225
    new-instance v1, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$2;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$2;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_9
    :goto_3
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public unInit()V
    .locals 2

    .line 341
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$UIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 342
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->unInit()V

    return-void
.end method

.method public updateModeConfig(Lcom/transsion/camera/app/common/ModeConfig;)V
    .locals 3

    .line 129
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->updateModeConfig(Lcom/transsion/camera/app/common/ModeConfig;)V

    .line 130
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mZoomSeekbarLayout:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    if-eqz p1, :cond_0

    .line 131
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mMaxValue:I

    .line 132
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->getShowMaxZoomValue(I)I

    move-result v0

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mMinValue:I

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->getShowCurrentZoomValue(I)I

    move-result p0

    .line 131
    invoke-virtual {p1, v0, v1, p0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->initZoomView(III)V

    :cond_0
    return-void
.end method

.method protected updateZoomValueToUI()V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraControl:Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraControl:Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->hideWideCamera()V

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->getZoomRatio(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mStrokeCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->getZoomRatio(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mZoomSeekbarLayout:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->getShowZoomValue(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isNeedReCalculateForMacro()Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->updateZoomSeekbar(IZ)V

    return-void
.end method
