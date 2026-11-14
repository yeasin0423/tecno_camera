.class public abstract Lcom/transsion/camera/app/ui/AbstractApertureUI;
.super Ljava/lang/Object;
.source "AbstractApertureUI.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/IApertureUI;


# instance fields
.field protected mApertureRootView:Landroid/view/View;

.field protected mApertureType:I

.field protected mDoubleApertureProgressView:Lcom/opensource/svgaplayer/SVGAImageView;

.field protected mSVGAParser:Lcom/opensource/svgaplayer/SVGAParser;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractApertureUI;->mApertureType:I

    return-void
.end method


# virtual methods
.method protected doSvgaAnimation(Lcom/opensource/svgaplayer/SVGAImageView;Lcom/opensource/svgaplayer/SVGAVideoEntity;ZI)V
    .locals 0

    .line 85
    invoke-virtual {p1, p4}, Lcom/opensource/svgaplayer/SVGAImageView;->setLoops(I)V

    .line 86
    invoke-virtual {p1, p3}, Lcom/opensource/svgaplayer/SVGAImageView;->setClearsAfterStop(Z)V

    const/4 p0, 0x0

    .line 87
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/high16 p0, 0x3f800000    # 1.0f

    .line 88
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 89
    new-instance p0, Lcom/opensource/svgaplayer/SVGADrawable;

    invoke-direct {p0, p2}, Lcom/opensource/svgaplayer/SVGADrawable;-><init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    .line 90
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAImageView;->startAnimation()V

    return-void
.end method

.method public hideView()V
    .locals 1

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractApertureUI;->mApertureRootView:Landroid/view/View;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 69
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method abstract inflateApertureProgressView()V
.end method

.method abstract inflateApertureSelfTimerView()V
.end method

.method abstract inflateDoubleApertureView()V
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 30
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractApertureUI;->mApertureType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f0c003c

    .line 38
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0900b3

    .line 39
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractApertureUI;->mApertureRootView:Landroid/view/View;

    .line 40
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractApertureUI;->inflateDoubleApertureView()V

    goto :goto_0

    :cond_1
    const v0, 0x7f0c00e4

    .line 32
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0901fb

    .line 33
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractApertureUI;->mApertureRootView:Landroid/view/View;

    .line 34
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractApertureUI;->inflateApertureProgressView()V

    .line 35
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractApertureUI;->inflateApertureSelfTimerView()V

    .line 43
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractApertureUI;->mApertureRootView:Landroid/view/View;

    return-object p0
.end method

.method public onSetupViews()V
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractApertureUI;->hideView()V

    return-void
.end method

.method public showView(Z)V
    .locals 0

    return-void
.end method

.method public startSelfTimerAnim(Lcom/transsion/camera/app/common/IAppUIControl$IApertureUIControl$AnimationType;)V
    .locals 0

    return-void
.end method

.method public stopSelfTimerAnim()V
    .locals 0

    return-void
.end method

.method public unInit()V
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractApertureUI;->hideView()V

    return-void
.end method
