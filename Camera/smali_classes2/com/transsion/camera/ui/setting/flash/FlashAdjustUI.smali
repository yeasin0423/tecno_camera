.class public Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;
.super Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;
.source "FlashAdjustUI.java"


# static fields
.field private static final ADJUST_UI_ALPHA_CHANGE:I = 0x6

.field private static final ADJUST_UI_ALPHA_CHANGE_DELAY:I = 0x7d0

.field private static final ADJUST_UI_HIDE_DELAY:I = 0x7d0


# instance fields
.field private mFlashAdjustBar:Landroid/widget/ProgressBar;

.field private mFlashLuminanceIndicatorView:Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;

.field private mLastMinValue:Z


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;-><init>(Landroid/content/res/Resources;)V

    return-void
.end method

.method private calculateIndicatorViewAlpha(I)F
    .locals 2

    add-int/lit8 p1, p1, -0xa

    int-to-double p0, p1

    const-wide v0, 0x3fe1c71c71c71c72L    # 0.5555555555555556

    mul-double/2addr p0, v0

    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    add-double/2addr p0, v0

    double-to-float p0, p0

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr p0, p1

    return p0
.end method

.method private calculatePercentage(I)F
    .locals 1

    .line 74
    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mMinLuminanceValue:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iget p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mAvailableAdjustScope:I

    int-to-float p0, p0

    div-float/2addr p1, p0

    return p1
.end method

.method private setBarAlphaDrawable(I)V
    .locals 1

    .line 64
    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mMinLuminanceValue:I

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;->mLastMinValue:Z

    if-nez v0, :cond_0

    const/4 p1, 0x1

    .line 65
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;->mLastMinValue:Z

    .line 66
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;->mFlashAdjustBar:Landroid/widget/ProgressBar;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f080395

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 67
    :cond_0
    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mMinLuminanceValue:I

    if-eq v0, p1, :cond_1

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;->mLastMinValue:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 68
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;->mLastMinValue:Z

    .line 69
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;->mFlashAdjustBar:Landroid/widget/ProgressBar;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f080398

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected doOnUp()V
    .locals 4

    .line 96
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 98
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handlerMsgExt(Landroid/os/Message;)V
    .locals 3

    .line 45
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustView:Landroid/view/View;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 48
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method

.method protected loadAdjustUI(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c0047

    const/4 v1, 0x0

    .line 34
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0900ea

    .line 35
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;->mFlashAdjustBar:Landroid/widget/ProgressBar;

    .line 36
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;->mLastMinValue:Z

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f080395

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const p2, 0x7f0900e9

    .line 39
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;->mFlashLuminanceIndicatorView:Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;

    return-object p1
.end method

.method protected refreshAdjustUI(I)V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 86
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;->setBarAlphaDrawable(I)V

    .line 87
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;->mFlashLuminanceIndicatorView:Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;->calculateIndicatorViewAlpha(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 88
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;->mFlashLuminanceIndicatorView:Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;->calculatePercentage(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/flash/FlashIndicatorView;->setPercentage(F)V

    .line 89
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;->mFlashAdjustBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 90
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method protected showAdjustUI()V
    .locals 1

    .line 56
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->showAdjustUI()V

    .line 57
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->getLuminanceValue()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mLuminanceValue:I

    .line 58
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;->refreshAdjustUI(I)V

    .line 59
    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mOrientation:I

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->setAdjustUIOrientation(I)V

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
