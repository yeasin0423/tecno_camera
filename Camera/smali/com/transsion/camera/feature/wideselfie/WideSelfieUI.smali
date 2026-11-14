.class Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;
.super Lcom/transsion/camera/feature/common/BaseUI;
.source "WideSelfieUI.java"

# interfaces
.implements Lcom/transsion/camera/feature/wideselfie/IWideSelfieCapture$IDirectionListener;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private volatile mDirection:I

.field private mIdleAnimView:Lcom/opensource/svgaplayer/SVGAImageView;

.field private mIdleAnimViewLand:Lcom/opensource/svgaplayer/SVGAImageView;

.field private mNotifyImageView:Lcom/transsion/camera/feature/common/AnimationRotationView;

.field private mNotifyText:Landroid/widget/TextView;

.field private final mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/common/BaseUI;-><init>(Lcom/transsion/camera/app/common/IAppUI;)V

    const/4 p1, 0x0

    .line 39
    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mDirection:I

    .line 50
    iput-object p2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    return-void
.end method

.method private isLand(I)Z
    .locals 0

    const/4 p0, -0x1

    if-eq p1, p0, :cond_0

    if-eqz p1, :cond_0

    const/16 p0, 0xb4

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$readyUI$0()V
    .locals 1

    .line 116
    iget v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mOrientation:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->updateLayoutParams(I)V

    return-void
.end method

.method private stopIdleAnimation(Lcom/opensource/svgaplayer/SVGAImageView;)V
    .locals 0

    if-nez p1, :cond_0

    .line 105
    sget-object p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "stopIdleAnimation view is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 108
    :cond_0
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAImageView;->isAnimating()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 109
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation()V

    const/16 p0, 0x8

    .line 110
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private updateLayoutParams(I)V
    .locals 7

    .line 136
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mNotifyImageView:Lcom/transsion/camera/feature/common/AnimationRotationView;

    if-nez v1, :cond_0

    goto :goto_2

    .line 142
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 143
    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mNotifyImageView:Lcom/transsion/camera/feature/common/AnimationRotationView;

    .line 144
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 146
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->isLand(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 147
    iget-object v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget v4, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mTopBarHeight:I

    iget v5, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mPreview4_3Height:I

    iget v6, v2, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mArrowWidthLand:I

    sub-int/2addr v5, v6

    shr-int/lit8 v3, v5, 0x1

    add-int/2addr v4, v3

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/16 v3, 0x10e

    if-ne p1, v3, :cond_1

    const/4 p1, 0x5

    .line 150
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 151
    iget p1, v2, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mTopIntervalLand:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    :cond_1
    const/16 v3, 0x5a

    if-ne p1, v3, :cond_2

    const/4 p1, 0x3

    .line 153
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 154
    iget p1, v2, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mTopIntervalLand:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 157
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget v0, p1, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mArrowWidthLand:I

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 158
    iget p1, p1, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mArrowHeightLand:I

    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_1

    .line 160
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget v2, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mTopBarHeight:I

    iget v4, p1, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mArrowTopMargin:I

    add-int/2addr v2, v4

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 161
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v2, 0x0

    .line 162
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 163
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 165
    iget v0, p1, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mArrowWidth:I

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 166
    iget p1, p1, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mArrowHeight:I

    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 168
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    .line 137
    :cond_4
    :goto_2
    sget-object p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onOrientationChanged mRootView or mNotifyImageView is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected doCreateView()Landroid/view/View;
    .locals 4

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/panoramawideselfie/R$layout;->wideselfie_layout:I

    iget-object v2, p0, Lcom/transsion/camera/feature/common/BaseUI;->mParentContainer:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    .line 85
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    .line 87
    sget v1, Lcom/transsion/camera/feature/panoramawideselfie/R$id;->wideselfie_notify:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mNotifyText:Landroid/widget/TextView;

    .line 88
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/panoramawideselfie/R$id;->wideselfie_notify_arrow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/common/AnimationRotationView;

    iput-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mNotifyImageView:Lcom/transsion/camera/feature/common/AnimationRotationView;

    .line 89
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/panoramawideselfie/R$id;->wideselfie_idle_arrow_vertical:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/opensource/svgaplayer/SVGAImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mIdleAnimView:Lcom/opensource/svgaplayer/SVGAImageView;

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/panoramawideselfie/R$id;->wideselfie_idle_arrow_horizontal:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/opensource/svgaplayer/SVGAImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mIdleAnimViewLand:Lcom/opensource/svgaplayer/SVGAImageView;

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public initView()V
    .locals 1

    .line 76
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BaseUI;->initView()V

    .line 77
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 78
    iget v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mOrientation:I

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->updateOrientation(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$readyUI$0$WideSelfieUI()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->lambda$readyUI$0()V

    return-void
.end method

.method public onCaptureEnd()V
    .locals 1

    .line 70
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BaseUI;->onCaptureEnd()V

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mDirection:I

    return-void
.end method

.method public onCaptureFailed()V
    .locals 1

    .line 64
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BaseUI;->onCaptureFailed()V

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mDirection:I

    return-void
.end method

.method public onDirectionUpdate(I)V
    .locals 3

    .line 55
    iget-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mCapturing:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mDirection:I

    if-eq v0, p1, :cond_0

    .line 56
    sget-object v0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDirectionUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 57
    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mDirection:I

    .line 58
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseUI;->triggerUpdate()V

    :cond_0
    return-void
.end method

.method public readyUI()V
    .locals 1

    .line 116
    new-instance v0, Lcom/transsion/camera/feature/wideselfie/-$$Lambda$WideSelfieUI$m9DFiltSKb4Wn6qkX96CDTWJhzo;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/wideselfie/-$$Lambda$WideSelfieUI$m9DFiltSKb4Wn6qkX96CDTWJhzo;-><init>(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)V

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/common/BaseUI;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 117
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BaseUI;->readyUI()V

    return-void
.end method

.method public unInitView()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mIdleAnimView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->stopIdleAnimation(Lcom/opensource/svgaplayer/SVGAImageView;)V

    .line 98
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mIdleAnimViewLand:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->stopIdleAnimation(Lcom/opensource/svgaplayer/SVGAImageView;)V

    const/4 v0, 0x0

    .line 99
    iput v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mDirection:I

    .line 100
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BaseUI;->unInitView()V

    return-void
.end method

.method public updateOrientation(I)V
    .locals 0

    .line 122
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/common/BaseUI;->updateOrientation(I)V

    .line 124
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->updateLayoutParams(I)V

    .line 126
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseUI;->triggerUpdate()V

    return-void
.end method

.method protected updateUI()V
    .locals 7

    .line 176
    iget-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mCapturing:Z

    .line 177
    iget v1, p0, Lcom/transsion/camera/feature/common/BaseUI;->mOrientation:I

    .line 178
    iget v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mDirection:I

    .line 180
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->isLand(I)Z

    move-result v3

    .line 182
    sget-object v4, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateUI capturing: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", orientation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", direction: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isLand: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/16 v4, 0x8

    if-nez v0, :cond_2

    .line 187
    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$string;->arc_ids_toast_wideselfie_tap_shutter:I

    .line 188
    iget-object v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mNotifyImageView:Lcom/transsion/camera/feature/common/AnimationRotationView;

    if-eqz v2, :cond_0

    const/4 v5, 0x4

    .line 189
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 191
    :cond_0
    iget-object v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mIdleAnimView:Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mIdleAnimViewLand:Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz v2, :cond_a

    if-eqz v3, :cond_1

    .line 193
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 194
    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mIdleAnimView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 196
    :cond_1
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 197
    iget-object v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mIdleAnimView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mIdleAnimView:Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz v0, :cond_3

    .line 202
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 204
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mIdleAnimViewLand:Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz v0, :cond_4

    .line 205
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    const/4 v0, 0x1

    if-eq v2, v0, :cond_8

    const/4 v0, 0x2

    if-eq v2, v0, :cond_6

    .line 222
    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$string;->arc_ids_toast_wideselfie_rotaniton_left:I

    if-nez v3, :cond_5

    .line 223
    sget v2, Lcom/transsion/camera/feature/panoramawideselfie/R$drawable;->widelself_right_animation:I

    goto :goto_0

    .line 224
    :cond_5
    sget v2, Lcom/transsion/camera/feature/panoramawideselfie/R$drawable;->widelself_land_right_animation:I

    goto :goto_0

    .line 216
    :cond_6
    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$string;->arc_ids_toast_wideselfie_rotaniton_left:I

    if-nez v3, :cond_7

    .line 217
    sget v2, Lcom/transsion/camera/feature/panoramawideselfie/R$drawable;->widelself_right_animation:I

    goto :goto_0

    .line 218
    :cond_7
    sget v2, Lcom/transsion/camera/feature/panoramawideselfie/R$drawable;->widelself_land_right_animation:I

    goto :goto_0

    .line 210
    :cond_8
    sget v0, Lcom/transsion/camera/feature/panoramawideselfie/R$string;->arc_ids_toast_wideselfie_rotaniton_right:I

    if-nez v3, :cond_9

    .line 211
    sget v2, Lcom/transsion/camera/feature/panoramawideselfie/R$drawable;->widelself_left_animation:I

    goto :goto_0

    .line 212
    :cond_9
    sget v2, Lcom/transsion/camera/feature/panoramawideselfie/R$drawable;->widelself_land_left_animation:I

    .line 228
    :goto_0
    iget-object v3, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mNotifyImageView:Lcom/transsion/camera/feature/common/AnimationRotationView;

    if-eqz v3, :cond_a

    if-eqz v2, :cond_a

    .line 229
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 230
    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mNotifyImageView:Lcom/transsion/camera/feature/common/AnimationRotationView;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/common/AnimationRotationView;->setImageResource(I)V

    .line 234
    :cond_a
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->mNotifyText:Landroid/widget/TextView;

    if-eqz p0, :cond_b

    if-eqz v0, :cond_b

    .line 235
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_b
    return-void
.end method
