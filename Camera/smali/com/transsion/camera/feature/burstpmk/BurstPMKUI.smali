.class Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;
.super Lcom/transsion/camera/feature/common/BaseUI;
.source "BurstPMKUI.java"

# interfaces
.implements Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$IMoveListener;
.implements Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$ISpeedListener;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBridgeLayout:Landroid/widget/FrameLayout;

.field private mDirection:I

.field private mDirectionListener:Lcom/transsion/camera/feature/burstpmk/IBurstPMKUI$IDirectionListener;

.field private mNotifyText:Landroid/widget/TextView;

.field private mOffset:Landroid/graphics/Point;

.field private mPreviewRect:Landroid/graphics/Rect;

.field private final mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

.field private mSpeedWarn:Z

.field private mTextContainer:Landroid/widget/LinearLayout;

.field private final mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/common/BaseUI;-><init>(Lcom/transsion/camera/app/common/IAppUI;)V

    const/4 p1, 0x1

    .line 37
    iput p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mDirection:I

    .line 53
    new-instance p1, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI$1;-><init>(Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

    .line 73
    iput-object p2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 32
    sget-object v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$102(Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mPreviewRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->updateLayoutParams()V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;)V
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseUI;->triggerUpdate()V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mCapturing:Z

    return p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->changeDirection()V

    return-void
.end method

.method private changeDirection()V
    .locals 3

    .line 139
    sget-object v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "changeDirection"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 140
    iget v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mDirection:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v2, v0, :cond_0

    .line 141
    iput v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mDirection:I

    goto :goto_0

    :cond_0
    if-ne v1, v0, :cond_1

    .line 143
    iput v2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mDirection:I

    .line 145
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mDirectionListener:Lcom/transsion/camera/feature/burstpmk/IBurstPMKUI$IDirectionListener;

    if-eqz v0, :cond_2

    .line 146
    iget p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mDirection:I

    invoke-interface {v0, p0}, Lcom/transsion/camera/feature/burstpmk/IBurstPMKUI$IDirectionListener;->onDirectionChange(I)V

    :cond_2
    return-void
.end method

.method public static synthetic lambda$kLWJxo9NPhN0hZ3TYKtiXFWIBFc(Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->updateLayoutParams()V

    return-void
.end method

.method private updateLayoutParams()V
    .locals 6

    .line 165
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mBridgeLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mTextContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mPreviewRect:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 173
    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget-object v2, v1, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, v1, Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;->mHRatio:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 175
    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget v3, v1, Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;->mVRatio:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v5, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mPreviewRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v5

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 177
    iget v2, v1, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 179
    iget v1, v1, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 182
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mTextContainer:Landroid/widget/LinearLayout;

    .line 183
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 184
    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v2, v1, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    int-to-float v2, v2

    iget v3, v1, Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;->mHRatio:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 186
    iget v2, v1, Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;->mTextHeight:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 188
    iget-object v2, v1, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget v4, v2, Landroid/graphics/Point;->y:I

    iget v5, v1, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, v1, Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;->mVRatio:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget v1, v1, Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;->mNotifyPadding:I

    add-int/2addr v4, v1

    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 191
    iget v1, v2, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 194
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mTextContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void

    .line 166
    :cond_1
    :goto_0
    sget-object v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLayoutParams mBridgeLayout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mBridgeLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mTextContainer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mTextContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected doCreateView()Landroid/view/View;
    .locals 4

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/panoramawideselfie/R$layout;->burstpmk_layout:I

    iget-object v2, p0, Lcom/transsion/camera/feature/common/BaseUI;->mParentContainer:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    .line 122
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    .line 123
    sget v1, Lcom/transsion/camera/feature/panoramawideselfie/R$id;->id_burst_bridge_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mBridgeLayout:Landroid/widget/FrameLayout;

    .line 124
    new-instance v1, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI$2;-><init>(Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/panoramawideselfie/R$id;->rotate_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mTextContainer:Landroid/widget/LinearLayout;

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/panoramawideselfie/R$id;->burstpmk_notify:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mNotifyText:Landroid/widget/TextView;

    .line 135
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public initView()V
    .locals 1

    .line 113
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BaseUI;->initView()V

    .line 114
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    :cond_0
    return-void
.end method

.method public onCaptureEnd()V
    .locals 1

    .line 106
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BaseUI;->onCaptureEnd()V

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mOffset:Landroid/graphics/Point;

    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mSpeedWarn:Z

    return-void
.end method

.method public onCaptureFailed()V
    .locals 1

    .line 99
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BaseUI;->onCaptureFailed()V

    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mOffset:Landroid/graphics/Point;

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mSpeedWarn:Z

    return-void
.end method

.method public onMoveProgress(Landroid/graphics/Point;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mOffset:Landroid/graphics/Point;

    .line 84
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseUI;->triggerUpdate()V

    return-void
.end method

.method public onSpeedUpdate(I)V
    .locals 2

    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 90
    :goto_0
    iget-boolean v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mSpeedWarn:Z

    if-eq v0, p1, :cond_1

    .line 91
    iput-boolean p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mSpeedWarn:Z

    .line 92
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseUI;->triggerUpdate()V

    .line 93
    sget-object p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSpeedUpdate speedWarn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public readyUI()V
    .locals 1

    .line 160
    new-instance v0, Lcom/transsion/camera/feature/burstpmk/-$$Lambda$BurstPMKUI$kLWJxo9NPhN0hZ3TYKtiXFWIBFc;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/burstpmk/-$$Lambda$BurstPMKUI$kLWJxo9NPhN0hZ3TYKtiXFWIBFc;-><init>(Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;)V

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/common/BaseUI;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 161
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BaseUI;->readyUI()V

    return-void
.end method

.method public setDirectionListener(Lcom/transsion/camera/feature/burstpmk/IBurstPMKUI$IDirectionListener;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mDirectionListener:Lcom/transsion/camera/feature/burstpmk/IBurstPMKUI$IDirectionListener;

    return-void
.end method

.method public unInitView()V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 155
    :cond_0
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BaseUI;->unInitView()V

    return-void
.end method

.method protected updateUI()V
    .locals 7

    .line 201
    iget-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mCapturing:Z

    .line 202
    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mOffset:Landroid/graphics/Point;

    .line 203
    iget v2, p0, Lcom/transsion/camera/feature/common/BaseUI;->mOrientation:I

    .line 204
    iget-boolean v3, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mSpeedWarn:Z

    .line 206
    sget-object v4, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateUI capturing: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", orientation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", speedWarn: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_7

    if-eqz v1, :cond_5

    .line 211
    iget v0, v1, Landroid/graphics/Point;->y:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 212
    iget v4, v1, Landroid/graphics/Point;->y:I

    const/16 v5, 0xb4

    const/16 v6, 0x19

    if-lez v4, :cond_1

    if-le v0, v6, :cond_1

    if-ne v2, v5, :cond_0

    .line 214
    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$string;->arc_ids_toast_pmk_up:I

    goto :goto_0

    .line 215
    :cond_0
    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$string;->arc_ids_toast_pmk_down:I

    goto :goto_0

    .line 216
    :cond_1
    iget v1, v1, Landroid/graphics/Point;->y:I

    if-gez v1, :cond_3

    if-le v0, v6, :cond_3

    if-ne v2, v5, :cond_2

    .line 218
    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$string;->arc_ids_toast_pmk_down:I

    goto :goto_0

    .line 219
    :cond_2
    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$string;->arc_ids_toast_pmk_up:I

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    .line 222
    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$string;->arc_ids_warining_toast_pmk_trace_little_quick:I

    goto :goto_0

    .line 224
    :cond_4
    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$string;->arc_ids_toast_pmk_ok:I

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_6

    .line 229
    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$string;->arc_ids_warining_toast_pmk_trace_little_quick:I

    goto :goto_0

    .line 231
    :cond_6
    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$string;->arc_ids_toast_pmk_ok:I

    goto :goto_0

    .line 235
    :cond_7
    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$string;->arc_ids_toast_pmk_tap_shutter:I

    .line 238
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->mNotifyText:Landroid/widget/TextView;

    if-eqz p0, :cond_8

    if-lez v0, :cond_8

    .line 239
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_8
    return-void
.end method
