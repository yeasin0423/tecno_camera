.class public Lcom/transsion/camera/feature/mode/supernight/ui/ModeUI;
.super Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;
.source "ModeUI.java"


# instance fields
.field private mPreviewFrame:Landroid/view/View;

.field private mProcessingRotateView:Landroid/view/View;

.field private mProcessingText:Landroid/widget/TextView;

.field private mProcessingView:Lcom/opensource/svgaplayer/SVGAImageView;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    return-void
.end method

.method private startSVGA(Lcom/opensource/svgaplayer/SVGAImageView;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 82
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAImageView;->isAnimating()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 83
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation()V

    .line 85
    :cond_0
    sget-object p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startSVGA: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAImageView;->startAnimation()V

    :cond_1
    return-void
.end method

.method private stopSVGA(Lcom/opensource/svgaplayer/SVGAImageView;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAImageView;->isAnimating()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 92
    sget-object p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopSVGA: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected doStartEndingAnim()V
    .locals 1

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/ModeUI;->mProcessingText:Landroid/widget/TextView;

    sget v0, Lcom/transsion/camera/feature/supernight/R$string;->supernight_mode_capture_ending:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method protected doStartProcessingAnim(Z)V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/ModeUI;->mProcessingText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/ModeUI;->mProcessingText:Landroid/widget/TextView;

    sget v2, Lcom/transsion/camera/feature/supernight/R$string;->supernight_mode_during_capture:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    if-nez p1, :cond_0

    .line 63
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/ModeUI;->mProcessingView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 64
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/ModeUI;->mProcessingView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/supernight/ui/ModeUI;->startSVGA(Lcom/opensource/svgaplayer/SVGAImageView;)V

    :cond_0
    return-void
.end method

.method protected doStopProcessingAnim()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/ModeUI;->mProcessingText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/ModeUI;->mProcessingView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/ModeUI;->mProcessingView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/supernight/ui/ModeUI;->stopSVGA(Lcom/opensource/svgaplayer/SVGAImageView;)V

    return-void
.end method

.method protected onFinishInflate(Landroid/view/View;)V
    .locals 3

    .line 36
    sget v0, Lcom/transsion/camera/feature/supernight/R$id;->super_night_preview_frame:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/ModeUI;->mPreviewFrame:Landroid/view/View;

    .line 37
    sget v0, Lcom/transsion/camera/feature/supernight/R$id;->super_night_processing_rotate:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/ModeUI;->mProcessingRotateView:Landroid/view/View;

    .line 38
    sget v0, Lcom/transsion/camera/feature/supernight/R$id;->super_night_processing:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/opensource/svgaplayer/SVGAImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/ModeUI;->mProcessingView:Lcom/opensource/svgaplayer/SVGAImageView;

    .line 39
    sget v0, Lcom/transsion/camera/feature/supernight/R$id;->super_night_processing_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/ModeUI;->mProcessingText:Landroid/widget/TextView;

    .line 41
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/ModeUI;->mPreviewFrame:Landroid/view/View;

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 43
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopBarHeight()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 44
    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePickerTabHeight()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x0

    .line 43
    invoke-virtual {p1, v2, v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 45
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/ModeUI;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/ModeUI;->mProcessingText:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result p0

    invoke-virtual {p1, v2, v2, v2, p0}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method

.method public onOrientationChanged(IZ)V
    .locals 1

    .line 52
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->onOrientationChanged(IZ)V

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/ModeUI;->mProcessingRotateView:Landroid/view/View;

    instance-of v0, p0, Lcom/transsion/camera/app/ui/widget/IRotatable;

    if-eqz v0, :cond_0

    .line 54
    check-cast p0, Lcom/transsion/camera/app/ui/widget/IRotatable;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    :cond_0
    return-void
.end method
