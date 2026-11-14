.class public Lcom/transsion/camera/app/ui/mode/video/VideoUI;
.super Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;
.source "VideoUI.java"


# instance fields
.field private mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mVideoShutterPanelLayout:Landroid/view/View;

.field protected mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mVideoSnapShotCover:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V
    .locals 1

    const v0, 0x7f0c008b

    .line 41
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ILcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V

    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotCover:Landroid/view/View;

    .line 26
    new-instance p1, Lcom/transsion/camera/app/ui/mode/video/VideoUI$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/mode/video/VideoUI$1;-><init>(Lcom/transsion/camera/app/ui/mode/video/VideoUI;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/ui/mode/video/VideoUI;)Landroid/view/View;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotCover:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method protected doCreateView()Landroid/view/View;
    .locals 3

    .line 46
    invoke-super {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->doCreateView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090269

    .line 47
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoShutterPanelLayout:Landroid/view/View;

    const v1, 0x7f090268

    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 50
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getPauseResumeListener()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09026a

    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 52
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getVideoSnapShotListener()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09026b

    .line 53
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotCover:Landroid/view/View;

    .line 54
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getSupportedCapture()Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-object v0
.end method

.method protected onHideRecordingUI()V
    .locals 2

    .line 100
    invoke-super {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->onHideRecordingUI()V

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 2

    .line 128
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->onOrientationChanged(I)V

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 132
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p0, :cond_1

    .line 133
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    :cond_1
    return-void
.end method

.method protected onShowRecordingUI()V
    .locals 4

    .line 79
    invoke-super {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->onShowRecordingUI()V

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoShutterPanelLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 82
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getPauseResumeListener()Landroid/view/View$OnClickListener;

    move-result-object v2

    .line 81
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 84
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getSupportedPause()Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 83
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 86
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getSupportedVss()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    .line 85
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x1f4

    .line 89
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 90
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getSupportedPause()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 93
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getSupportedVss()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 94
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    return-void
.end method

.method protected onUpdateRecordingUI(Z)V
    .locals 0

    .line 108
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->onUpdateRecordingUI(Z)V

    if-eqz p1, :cond_0

    const p1, 0x7f08044e

    goto :goto_0

    :cond_0
    const p1, 0x7f08044d

    .line 113
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void
.end method

.method public playCaptureAnimation(Landroid/content/Context;)V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "playCaptureAnimation +"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const v0, 0x7f020003

    .line 119
    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    check-cast p1, Landroid/animation/AnimatorSet;

    .line 120
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotCover:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 122
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 123
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "playCaptureAnimation -"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected updateLayoutForBottomBar(I)V
    .locals 3

    .line 62
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateLayoutForBottomBar(I)V

    .line 63
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLayoutForBottomBar,height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-lez p1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoShutterPanelLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 66
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 67
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoShutterPanelLayout:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method protected updateLayoutForNavigationBar(I)V
    .locals 1

    .line 73
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateLayoutForNavigationBar(I)V

    .line 74
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoShutterPanelLayout:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
