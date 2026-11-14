.class public Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;
.super Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;
.source "FunVideoReviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment$MySurfaceHolderListener;
    }
.end annotation


# static fields
.field private static ARCORE_SCALE:F = 0.0f

.field private static final SHOW_SCALE:F = 1.7777778f

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private displayMetrics:Landroid/util/DisplayMetrics;

.field private mActionCancelView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mActionDoneView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mActionShareView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mActionVskitShareView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mActionsPanel:Landroid/view/View;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAnimatorHelper:Lcom/transsion/camera/feature/funvideo/ui/AnimatorHelper;

.field private mArcoreCancelView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mArcoreDoneView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mArcorePanel:Landroid/view/View;

.field private mArcoreShareView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mBottomOffset:I

.field private mCurrentPosition:I

.field private mCutoutHeight:I

.field private mIsLand:Z

.field private mIsSecureCamera:Z

.field private mIscometoArcore:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMusicPath:Ljava/lang/String;

.field private mMusicPlayer:Landroid/media/MediaPlayer;

.field private mNavigationBarHeight:I

.field private mPlayBackRootView:Landroid/view/View;

.field private mPlayerSurface:Landroid/view/SurfaceHolder;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mRootView:Landroid/view/View;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSpeed:F

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mTopOffset:I

.field private mVideoPath:Ljava/lang/String;

.field private mbMediaPlayerPrepared:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FunVideoReviewFragment"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x0

    .line 41
    sput v0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->ARCORE_SCALE:F

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 37
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mScreenWidth:I

    .line 43
    iput v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mScreenHeight:I

    .line 45
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mIsLand:Z

    const/4 v1, 0x0

    .line 49
    iput-object v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mPlayBackRootView:Landroid/view/View;

    .line 60
    iput v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mTopOffset:I

    .line 61
    iput v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mBottomOffset:I

    .line 62
    iput v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mPreviewWidth:I

    .line 63
    iput v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mPreviewHeight:I

    const/4 v2, -0x1

    .line 64
    iput v2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mCutoutHeight:I

    .line 65
    iput v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mNavigationBarHeight:I

    .line 70
    iput-object v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 71
    iput-object v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    .line 72
    iput-object v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mPlayerSurface:Landroid/view/SurfaceHolder;

    .line 73
    iput v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mCurrentPosition:I

    .line 74
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mbMediaPlayerPrepared:Z

    .line 76
    new-instance v1, Lcom/transsion/camera/feature/funvideo/ui/AnimatorHelper;

    invoke-direct {v1}, Lcom/transsion/camera/feature/funvideo/ui/AnimatorHelper;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mAnimatorHelper:Lcom/transsion/camera/feature/funvideo/ui/AnimatorHelper;

    .line 77
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mIsSecureCamera:Z

    return-void
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 37
    sget-object v0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$202(Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mPlayerSurface:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->setPlayFunVideo()V

    return-void
.end method

.method private changeReviewScale(F)V
    .locals 4

    .line 468
    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mbMediaPlayerPrepared:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    goto :goto_3

    .line 476
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    .line 477
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    .line 479
    div-int/2addr v1, v0

    int-to-float v0, v1

    .line 480
    iget-boolean v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mIsLand:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v1, :cond_2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 482
    iget v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mScreenHeight:I

    int-to-float v1, v0

    div-float/2addr v1, p1

    goto :goto_0

    .line 485
    :cond_1
    iget v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mScreenHeight:I

    int-to-float v1, v0

    mul-float/2addr v1, p1

    :goto_0
    float-to-int p1, v1

    goto :goto_2

    :cond_2
    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    .line 490
    iget v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mScreenHeight:I

    int-to-float v1, v0

    mul-float/2addr v1, p1

    goto :goto_1

    .line 493
    :cond_3
    iget v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mScreenHeight:I

    int-to-float v1, v0

    div-float/2addr v1, p1

    :goto_1
    float-to-int p1, v1

    move v3, v0

    move v0, p1

    move p1, v3

    .line 499
    :goto_2
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0xd

    .line 500
    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 501
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 469
    :cond_4
    :goto_3
    sget-object p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "resetReviewSize, mbMediaPlayerPrepared is false"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private createArcoreModeView()V
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/funvideo/R$id;->arcore_bottom_panel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mArcorePanel:Landroid/view/View;

    .line 149
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/funvideo/R$id;->arcore_bottom_cancel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mArcoreCancelView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 150
    new-instance v1, Lcom/transsion/camera/feature/funvideo/ui/-$$Lambda$FunVideoReviewFragment$wZxDgERgo1DAHBUmmOMpc6toKF0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/funvideo/ui/-$$Lambda$FunVideoReviewFragment$wZxDgERgo1DAHBUmmOMpc6toKF0;-><init>(Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/funvideo/R$id;->arcore_bottom_done:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mArcoreDoneView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 158
    new-instance v1, Lcom/transsion/camera/feature/funvideo/ui/-$$Lambda$FunVideoReviewFragment$LDDGeAkq7ZvqVvNQYEEtUTz4mX4;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/funvideo/ui/-$$Lambda$FunVideoReviewFragment$LDDGeAkq7ZvqVvNQYEEtUTz4mX4;-><init>(Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/funvideo/R$id;->arcore_bottom_share:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mArcoreShareView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 166
    new-instance v1, Lcom/transsion/camera/feature/funvideo/ui/-$$Lambda$FunVideoReviewFragment$EOuLC7Dr7wJbSkVHhOqojykpLpI;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/funvideo/ui/-$$Lambda$FunVideoReviewFragment$EOuLC7Dr7wJbSkVHhOqojykpLpI;-><init>(Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->initSurfaceViewAndOrientation()V

    .line 173
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mArcorePanel:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mArcorePanel:Landroid/view/View;

    iget v2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mCutoutHeight:I

    iget p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mNavigationBarHeight:I

    add-int/2addr v2, p0

    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private createFunVideoModeView()V
    .locals 8

    .line 103
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/funvideo/R$id;->funvideo_bottom_panel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionsPanel:Landroid/view/View;

    .line 104
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/funvideo/R$id;->funvideo_bottom_cancel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionCancelView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 105
    new-instance v1, Lcom/transsion/camera/feature/funvideo/ui/-$$Lambda$FunVideoReviewFragment$b2BWNy5jh81OmI6eU0zHqPblC3E;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/funvideo/ui/-$$Lambda$FunVideoReviewFragment$b2BWNy5jh81OmI6eU0zHqPblC3E;-><init>(Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/funvideo/R$id;->funvideo_bottom_done:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionDoneView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 114
    new-instance v1, Lcom/transsion/camera/feature/funvideo/ui/-$$Lambda$FunVideoReviewFragment$RHDF38F52g_g6PftmCwPmXS_Kfw;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/funvideo/ui/-$$Lambda$FunVideoReviewFragment$RHDF38F52g_g6PftmCwPmXS_Kfw;-><init>(Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/funvideo/R$id;->funvideo_bottom_share:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionShareView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 123
    new-instance v1, Lcom/transsion/camera/feature/funvideo/ui/-$$Lambda$FunVideoReviewFragment$zrvm6L1ewsBbjIrdXUQjyPd2sr4;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/funvideo/ui/-$$Lambda$FunVideoReviewFragment$zrvm6L1ewsBbjIrdXUQjyPd2sr4;-><init>(Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/funvideo/R$id;->funvideo_bottom_share_vskit:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionVskitShareView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 133
    new-instance v1, Lcom/transsion/camera/feature/funvideo/ui/-$$Lambda$FunVideoReviewFragment$sMhCTURjqXLN_W1ayhWn2pO54lc;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/funvideo/ui/-$$Lambda$FunVideoReviewFragment$sMhCTURjqXLN_W1ayhWn2pO54lc;-><init>(Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->initSurfaceViewAndOrientation()V

    .line 142
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "isSecureCamera"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mIsSecureCamera:Z

    .line 143
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->initViewLayout(Z)V

    .line 144
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mAnimatorHelper:Lcom/transsion/camera/feature/funvideo/ui/AnimatorHelper;

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    iget-boolean v3, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mIsSecureCamera:Z

    iget-object v4, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionCancelView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iget-object v5, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionDoneView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iget-object v6, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionShareView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iget-object v7, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionsPanel:Landroid/view/View;

    invoke-virtual/range {v1 .. v7}, Lcom/transsion/camera/feature/funvideo/ui/AnimatorHelper;->startAnimation(Landroid/content/Context;ZLandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private destroyPlayFunVideo()V
    .locals 3

    .line 434
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    const-string v2, "destroyPlayFunVideo"

    if-eqz v0, :cond_1

    .line 435
    sget-object v0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 440
    iput-object v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 442
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    .line 443
    sget-object v0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 445
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 447
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 448
    iput-object v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    :cond_3
    const/4 v0, 0x0

    .line 450
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mbMediaPlayerPrepared:Z

    return-void
.end method

.method private getCurrentPlayFunVideoPosition()V
    .locals 3

    .line 427
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 428
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mCurrentPosition:I

    .line 429
    sget-object v0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentPosition, mCurrentPosition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mCurrentPosition:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private initSurfaceViewAndOrientation()V
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/funvideo/R$id;->funvideo_surface_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mSurfaceView:Landroid/view/SurfaceView;

    .line 179
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment$MySurfaceHolderListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment$MySurfaceHolderListener;-><init>(Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment$1;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 180
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mScreenWidth:I

    .line 182
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mScreenHeight:I

    .line 183
    sget-object v0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateView,  mScreenWidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mScreenWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mScreenHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mScreenHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mIsLand:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mIsLand:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private initViewLayout(Z)V
    .locals 3

    .line 187
    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mIsLand:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 188
    iget v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mNavigationBarHeight:I

    iget v2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mCutoutHeight:I

    add-int/2addr v0, v2

    invoke-direct {p0, v0, v1, v1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->updateLayoutForNavigationBar(III)V

    goto :goto_0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/feature/funvideo/R$dimen;->funvideo_landbottom:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p0, v0, v1, v1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->updateLayoutForNavigationBar(III)V

    :goto_0
    const/16 v0, 0x8

    if-eqz p1, :cond_1

    .line 193
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionShareView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 194
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionVskitShareView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 195
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionDoneView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 196
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionDoneView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/funvideo/R$dimen;->funvideo_review_done_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionDoneView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 197
    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/funvideo/R$dimen;->funvideo_bottom_panel_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionDoneView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 198
    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/funvideo/R$dimen;->funvideo_bottom_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 196
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 199
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionDoneView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 201
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionShareView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 202
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionVskitShareView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$createArcoreModeView$5(Landroid/view/View;)V
    .locals 1

    .line 151
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mArcoreDoneView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 152
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mArcoreShareView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 153
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 154
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$createArcoreModeView$6(Landroid/view/View;)V
    .locals 1

    .line 159
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mArcoreCancelView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 160
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mArcoreShareView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 161
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 162
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$createArcoreModeView$7(Landroid/view/View;)V
    .locals 1

    .line 167
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mArcoreDoneView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 168
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mArcoreCancelView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 169
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 170
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$createFunVideoModeView$1(Landroid/view/View;)V
    .locals 1

    .line 106
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionDoneView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 107
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionShareView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 108
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 109
    invoke-static {v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMsgTag;->setsFunVideoMsgTag(I)V

    .line 110
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$createFunVideoModeView$2(Landroid/view/View;)V
    .locals 1

    .line 115
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionCancelView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 116
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionShareView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 117
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 118
    invoke-static {v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMsgTag;->setsFunVideoMsgTag(I)V

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$createFunVideoModeView$3(Landroid/view/View;)V
    .locals 1

    .line 124
    sget-object p1, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "Share"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 125
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionDoneView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 126
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionCancelView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 127
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 128
    invoke-static {v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMsgTag;->setsFunVideoMsgTag(I)V

    .line 129
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$createFunVideoModeView$4(Landroid/view/View;)V
    .locals 1

    .line 134
    sget-object p1, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "Share vskit"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 135
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionDoneView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 136
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionCancelView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 137
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 138
    invoke-static {v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMsgTag;->setsFunVideoMsgTag(I)V

    .line 139
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method static synthetic lambda$onCreateView$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$setPlayFunVideo$10(Landroid/media/MediaPlayer;)V
    .locals 7

    const/4 v0, 0x1

    .line 385
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mbMediaPlayerPrepared:Z

    .line 386
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v1

    iget v2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mSpeed:F

    float-to-double v3, v2

    const-wide v5, 0x3f1a36e2eb1c432dL    # 1.0E-4

    sub-double/2addr v3, v5

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v2}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    .line 387
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->resetReviewSize()V

    .line 388
    iget v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mCurrentPosition:I

    if-lez v0, :cond_1

    .line 389
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 390
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 391
    iget v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mCurrentPosition:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 394
    :cond_1
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 395
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    if-eqz p0, :cond_2

    .line 396
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$setPlayFunVideo$8(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 368
    sget-object p1, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "setPlayFunVideo onError, can\'t play this video."

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 369
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->showErrorAndFinish()V

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$setPlayFunVideo$9(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 377
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    .line 378
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    .line 379
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 380
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 382
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method private synthetic lambda$showErrorAndFinish$11(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 511
    sget-object p1, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "[showErrorAndFinish] on OK click, will finish activity"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 512
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    .line 513
    invoke-static {p2}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMsgTag;->setsFunVideoMsgTag(I)V

    .line 514
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private pausePlayFunVideo()V
    .locals 2

    .line 407
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    sget-object v0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "pausePlayFunVideo"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->pause()V

    :cond_1
    return-void
.end method

.method private processOrientationChanged(I)V
    .locals 2

    .line 320
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionCancelView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionDoneView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_1

    .line 324
    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 326
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionShareView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p0, :cond_2

    .line 327
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    :cond_2
    return-void
.end method

.method private resetReviewSize()V
    .locals 3

    .line 454
    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mIscometoArcore:Z

    if-eqz v0, :cond_0

    .line 455
    iget v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mScreenWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mScreenHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    sput v0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->ARCORE_SCALE:F

    .line 456
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->changeReviewScale(F)V

    goto :goto_0

    :cond_0
    const v0, 0x3fe38e39

    .line 458
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->changeReviewScale(F)V

    .line 459
    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mIsLand:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 460
    iget v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mNavigationBarHeight:I

    iget v2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mCutoutHeight:I

    add-int/2addr v0, v2

    invoke-direct {p0, v0, v1, v1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->updateLayoutForNavigationBar(III)V

    goto :goto_0

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/feature/funvideo/R$dimen;->funvideo_landbottom:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p0, v0, v1, v1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->updateLayoutForNavigationBar(III)V

    :goto_0
    return-void
.end method

.method private setPlayFunVideo()V
    .locals 3

    .line 352
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->destroyPlayFunVideo()V

    .line 353
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMusicPath:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    .line 356
    :cond_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 358
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMusicPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mPlayerSurface:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 363
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mVideoPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setVideoScalingMode(I)V

    .line 365
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 366
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 367
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/transsion/camera/feature/funvideo/ui/-$$Lambda$FunVideoReviewFragment$JI-B8LJBrGdUKPIj5xAbSF9weM0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/funvideo/ui/-$$Lambda$FunVideoReviewFragment$JI-B8LJBrGdUKPIj5xAbSF9weM0;-><init>(Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 372
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 373
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 375
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 376
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/transsion/camera/feature/funvideo/ui/-$$Lambda$FunVideoReviewFragment$dP7DRvqrKpmbk11ZuiqoCJ-Vuck;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/funvideo/ui/-$$Lambda$FunVideoReviewFragment$dP7DRvqrKpmbk11ZuiqoCJ-Vuck;-><init>(Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 384
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/transsion/camera/feature/funvideo/ui/-$$Lambda$FunVideoReviewFragment$7WbqCNtdjuY384WmWeIiudM4VzI;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/funvideo/ui/-$$Lambda$FunVideoReviewFragment$7WbqCNtdjuY384WmWeIiudM4VzI;-><init>(Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 400
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 401
    sget-object v0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "setPlayFunVideo IOException, can\'t play this video."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 402
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->showErrorAndFinish()V

    :goto_0
    return-void
.end method

.method private showErrorAndFinish()V
    .locals 3

    .line 505
    sget-object v0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showErrorAndFinish"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 506
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 507
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 510
    :cond_0
    new-instance v0, Lcom/transsion/camera/feature/funvideo/ui/-$$Lambda$FunVideoReviewFragment$qgjqHv780Otn4hEb51KdBL6pl9c;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/funvideo/ui/-$$Lambda$FunVideoReviewFragment$qgjqHv780Otn4hEb51KdBL6pl9c;-><init>(Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;)V

    .line 517
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    .line 518
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, ""

    .line 519
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/funvideo/R$string;->cannot_play_dialog_string:I

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    .line 520
    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 521
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 525
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mAlertDialog:Landroid/app/AlertDialog;

    return-void

    .line 522
    :cond_2
    :goto_0
    sget-object p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[showErrorAndFinish] activity is finishing, do noting"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private startPlayFunVideo()V
    .locals 3

    .line 417
    sget-object v0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPlayFunVideo, mbMediaPlayerPrepared:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mbMediaPlayerPrepared:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mbMediaPlayerPrepared:Z

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mbMediaPlayerPrepared:Z

    if-eqz v0, :cond_1

    .line 422
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    :cond_1
    return-void
.end method

.method private updateLayoutForNavigationBar(III)V
    .locals 1

    .line 207
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionsPanel:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, p3, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$createArcoreModeView$5$FunVideoReviewFragment(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->lambda$createArcoreModeView$5(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$createArcoreModeView$6$FunVideoReviewFragment(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->lambda$createArcoreModeView$6(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$createArcoreModeView$7$FunVideoReviewFragment(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->lambda$createArcoreModeView$7(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$createFunVideoModeView$1$FunVideoReviewFragment(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->lambda$createFunVideoModeView$1(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$createFunVideoModeView$2$FunVideoReviewFragment(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->lambda$createFunVideoModeView$2(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$createFunVideoModeView$3$FunVideoReviewFragment(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->lambda$createFunVideoModeView$3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$createFunVideoModeView$4$FunVideoReviewFragment(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->lambda$createFunVideoModeView$4(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$setPlayFunVideo$10$FunVideoReviewFragment(Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->lambda$setPlayFunVideo$10(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public synthetic lambda$setPlayFunVideo$8$FunVideoReviewFragment(Landroid/media/MediaPlayer;II)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->lambda$setPlayFunVideo$8(Landroid/media/MediaPlayer;II)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$setPlayFunVideo$9$FunVideoReviewFragment(Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->lambda$setPlayFunVideo$9(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public synthetic lambda$showErrorAndFinish$11$FunVideoReviewFragment(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->lambda$showErrorAndFinish$11(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 306
    sget-object v0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 308
    invoke-static {v1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMsgTag;->setsFunVideoMsgTag(I)V

    .line 309
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 212
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 214
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mIsLand:Z

    .line 216
    sget-object p1, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged, mIsLand:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mIsLand:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mScreenWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mScreenHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 217
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->resetReviewSize()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 222
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 223
    sget-object p1, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 225
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->processFunVideoIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 82
    sget-object p3, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onCreateView"

    invoke-static {p3, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 83
    sget p3, Lcom/transsion/camera/feature/funvideo/R$layout;->funvideo_review_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mRootView:Landroid/view/View;

    .line 85
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 86
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p1, p2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 87
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mIsLand:Z

    .line 88
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->displayMetrics:Landroid/util/DisplayMetrics;

    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le p2, p1, :cond_0

    const/4 p1, 0x1

    .line 89
    iput-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mIsLand:Z

    .line 92
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mRootView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/feature/funvideo/R$id;->funvideo_review_group:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mPlayBackRootView:Landroid/view/View;

    .line 93
    sget-object p2, Lcom/transsion/camera/feature/funvideo/ui/-$$Lambda$FunVideoReviewFragment$eWG-1H3FdprdEoY9RM2_Zl9v8QE;->INSTANCE:Lcom/transsion/camera/feature/funvideo/ui/-$$Lambda$FunVideoReviewFragment$eWG-1H3FdprdEoY9RM2_Zl9v8QE;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 94
    iget-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mIscometoArcore:Z

    if-eqz p1, :cond_1

    .line 95
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->createArcoreModeView()V

    goto :goto_0

    .line 97
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->createFunVideoModeView()V

    .line 99
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public onDestroy()V
    .locals 2

    .line 314
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 315
    sget-object v0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 316
    iput v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mCurrentPosition:I

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 268
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->onPause()V

    .line 269
    sget-object v0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 271
    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mIsSecureCamera:Z

    if-nez v0, :cond_0

    .line 272
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->pausePlayFunVideo()V

    goto :goto_2

    .line 274
    :cond_0
    invoke-static {}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMsgTag;->getsFunVideoMsgTag()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 275
    invoke-static {}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMsgTag;->getsFunVideoMsgTag()I

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    goto :goto_1

    .line 276
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 277
    invoke-static {v1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMsgTag;->setsFunVideoMsgTag(I)V

    .line 281
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_2
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 251
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->onResume()V

    .line 252
    sget-object v0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 253
    invoke-static {v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMsgTag;->setsFunVideoMsgTag(I)V

    .line 254
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->startPlayFunVideo()V

    .line 255
    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mIscometoArcore:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mArcoreCancelView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 257
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mArcoreDoneView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 258
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mArcoreShareView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionDoneView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 261
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionCancelView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 262
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionShareView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 287
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 288
    sget-object v0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 290
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->getCurrentPlayFunVideoPosition()V

    .line 291
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->destroyPlayFunVideo()V

    .line 292
    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mIsSecureCamera:Z

    if-nez v0, :cond_2

    .line 293
    invoke-static {}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMsgTag;->getsFunVideoMsgTag()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 294
    invoke-static {}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMsgTag;->getsFunVideoMsgTag()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    goto :goto_1

    .line 295
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 296
    invoke-static {v1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMsgTag;->setsFunVideoMsgTag(I)V

    .line 300
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    return-void
.end method

.method public processFunVideoIntent(Landroid/content/Intent;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 232
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 234
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "key_iscome_to_arcore"

    const/4 v1, 0x0

    .line 235
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mIscometoArcore:Z

    const/16 v0, 0x500

    const-string v2, "key_preview_width"

    .line 236
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mPreviewWidth:I

    const/16 v0, 0x2d0

    const-string v2, "key_preview_height"

    .line 237
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mPreviewHeight:I

    const-string v0, "key_preview_top_offset"

    .line 238
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mTopOffset:I

    const-string v0, "key_preview_bottom_offset"

    .line 239
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mBottomOffset:I

    const-string v0, "key_preview_cutout_height"

    .line 240
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mCutoutHeight:I

    const-string v0, "key_preview_navigationbar_height"

    .line 241
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mNavigationBarHeight:I

    const-string v0, "key_video_path"

    const-string v1, ""

    .line 242
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mVideoPath:Ljava/lang/String;

    const-string v0, "key_music_path"

    .line 243
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMusicPath:Ljava/lang/String;

    const-string v0, "key_speed"

    .line 244
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mSpeed:F

    .line 246
    sget-object p1, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate, intent preview width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mPreviewWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mPreviewHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", top offset:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mTopOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bottom offset:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mBottomOffset:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
