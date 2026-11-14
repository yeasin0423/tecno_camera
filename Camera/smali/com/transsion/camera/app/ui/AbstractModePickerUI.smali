.class public abstract Lcom/transsion/camera/app/ui/AbstractModePickerUI;
.super Ljava/lang/Object;
.source "AbstractModePickerUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IRootUI;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;,
        Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;,
        Lcom/transsion/camera/app/ui/AbstractModePickerUI$OnTabSelectedListenerImpl;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private mContext:Landroid/content/Context;

.field private mCurrentModeUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;

.field private mFromResume:Z

.field private mIsCameraSwitching:Z

.field private mIsReadyForScroll:Z

.field private mIsResumeAfterEdit:Z

.field private mModeArrow:Landroid/view/View;

.field private mModeArrowSvga:Lcom/opensource/svgaplayer/SVGAImageView;

.field private mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

.field private final mModeHorizontalScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;

.field private final mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

.field private mModePickerLayout:Landroid/widget/FrameLayout;

.field private mModePickerRoot:Landroid/view/ViewGroup;

.field private mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

.field private final mModeVerticalScroll:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

.field private mOrderEditorFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;

.field private mRootView:Landroid/view/View;

.field private mSVGACallback:Lcom/opensource/svgaplayer/SVGACallback;

.field private mSVGAParser:Lcom/opensource/svgaplayer/SVGAParser;

.field private final mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

.field private mSelfTimerBegin:Z

.field private mSellingPointItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ModePickerUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/ui/ModeVerticalScroll;Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;Landroid/content/Context;Lcom/transsion/camera/app/ui/ScrollConsumer;Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;)V
    .locals 4

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mIsReadyForScroll:Z

    .line 77
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mIsCameraSwitching:Z

    .line 78
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mSelfTimerBegin:Z

    .line 80
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mIsResumeAfterEdit:Z

    .line 81
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mFromResume:Z

    .line 83
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 626
    new-instance v0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$2;-><init>(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mSVGACallback:Lcom/opensource/svgaplayer/SVGACallback;

    .line 87
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeVerticalScroll:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    .line 88
    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeHorizontalScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;

    .line 89
    iput-object p4, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    .line 90
    iput-object p5, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mOrderEditorFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;

    .line 91
    iput-object p3, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mContext:Landroid/content/Context;

    .line 92
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f030016

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mSellingPointItems:Ljava/util/List;

    .line 93
    new-instance p1, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0a0018

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    invoke-direct {p1, p2}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    return-void
.end method

.method static synthetic access$1700(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mOrderEditorFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mIsResumeAfterEdit:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->notifyModeSwitch()V

    return-void
.end method

.method static synthetic access$2600(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Lcom/opensource/svgaplayer/SVGAImageView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeArrowSvga:Lcom/opensource/svgaplayer/SVGAImageView;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Lcom/opensource/svgaplayer/SVGACallback;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mSVGACallback:Lcom/opensource/svgaplayer/SVGACallback;

    return-object p0
.end method

.method static synthetic access$2800()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 47
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Landroid/view/View;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeArrow:Landroid/view/View;

    return-object p0
.end method

.method private cannotUpdateCurrentTab()Z
    .locals 4

    .line 261
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$300(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 262
    :goto_1
    sget-object v1, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannotUpdateCurrentTab mFromResume: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mFromResume:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$300(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mFromResume:Z

    if-nez v1, :cond_2

    .line 264
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->notifyModeSwitch()V

    :cond_2
    if-eqz v0, :cond_3

    .line 267
    sget-object v1, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCurrentTab currentIsTabLayoutMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v3}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$300(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " ModeTabLayout:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_3
    return v0
.end method

.method private cannotUpdateModeTabLayout()Z
    .locals 4

    .line 505
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$2200(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 507
    sget-object v1, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateModeTabLayout mModeTabLayout:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " validModeList:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$2200(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Z

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_2
    return v0
.end method

.method private synthetic lambda$setupViews$0(Landroid/view/View;)V
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->startPullingModePanel()V

    return-void
.end method

.method private synthetic lambda$setupViews$1(Landroid/view/View;)V
    .locals 0

    .line 138
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mIsCameraSwitching:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mSelfTimerBegin:Z

    if-nez p1, :cond_0

    .line 139
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$1600(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)V

    .line 140
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateCurrentModeAndNotify()V

    :cond_0
    return-void
.end method

.method private notifyModeSwitch()V
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    if-eqz v0, :cond_0

    .line 393
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$1200(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;->onSwitchMode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private playSvgaAnimation(Ljava/lang/String;)V
    .locals 2

    .line 605
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[playSvgaAnimation] stopAnimation "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 606
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeArrowSvga:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation()V

    .line 607
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mSVGAParser:Lcom/opensource/svgaplayer/SVGAParser;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractModePickerUI$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$1;-><init>(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)V

    invoke-virtual {v0, p1, v1}, Lcom/opensource/svgaplayer/SVGAParser;->parse(Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V

    return-void
.end method

.method private startPullingModePanel()V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->spreadModePanel()V

    .line 157
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz p0, :cond_0

    const/16 v0, 0x48

    .line 158
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_0
    return-void
.end method

.method private updateCurrentModeAndNotify()V
    .locals 0

    .line 386
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateCurrentTab()V

    .line 387
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateCurrentModeUI()V

    .line 388
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->notifyModeSwitch()V

    return-void
.end method

.method private updateCurrentModeUI()V
    .locals 2

    .line 398
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-nez v0, :cond_0

    return-void

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$300(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 403
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mCurrentModeUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;->access$1300(Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;)V

    goto :goto_0

    .line 405
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$1400(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.arcore.ARCoreModeEntry"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 406
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 407
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mCurrentModeUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$400(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;->access$500(Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateCurrentTab()V
    .locals 2

    .line 254
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->cannotUpdateCurrentTab()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$700(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->selectTabIndex(IZ)Z

    return-void
.end method

.method private updateModeTabLayout(Ljava/lang/String;)V
    .locals 8

    .line 513
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->cannotUpdateModeTabLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->removeAllTabs()V

    .line 517
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$2300(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Ljava/util/List;

    move-result-object v0

    .line 519
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/common/FeatureResource;

    .line 520
    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v4}, Lcom/transsion/camera/app/ui/widget/TabLayout;->newTab()Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    move-result-object v4

    .line 521
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mSellingPointItems:Ljava/util/List;

    iget-object v6, v3, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mContext:Landroid/content/Context;

    iget-object v7, v3, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    .line 522
    invoke-virtual {v5, v7, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iget-object v7, v3, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    .line 523
    invoke-interface {v5, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v6

    goto :goto_1

    :cond_1
    move v5, v1

    .line 524
    :goto_1
    iget-object v7, v3, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->setTextWithoutUpdate(Ljava/lang/CharSequence;)Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    const-class v7, Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    .line 525
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->setContentDescriptionWithoutUpdate(Ljava/lang/CharSequence;)Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    .line 526
    invoke-virtual {v4, v5}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->setShowPointIconWithoutUpdate(Z)Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    .line 527
    invoke-virtual {v4}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->updateView()V

    .line 528
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v5, v3}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$2400(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;Lcom/transsion/camera/app/common/FeatureResource;)Z

    move-result v3

    if-nez v2, :cond_3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v2, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v2, v6

    .line 530
    :goto_3
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v5, v4, v3}, Lcom/transsion/camera/app/ui/widget/TabLayout;->addTab(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;Z)V

    goto :goto_0

    .line 532
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->updateHeadFootPadding()V

    if-eqz p1, :cond_5

    if-nez v2, :cond_5

    .line 534
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$1000(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;Ljava/lang/String;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public canScrollToNext()Z
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$300(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->canScrollToNext()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public canScrollToPrevious()Z
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$300(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->canScrollToPrevious()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public canScrolling()Z
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$300(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->canScrolling()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public currentIsIabLayoutMode()Z
    .locals 0

    .line 306
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$300(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Z

    move-result p0

    return p0
.end method

.method protected abstract getTabAnimationDuration()I
.end method

.method protected abstract getTabAnimationInterpolator()Landroid/view/animation/Interpolator;
.end method

.method public hideModePicker()V
    .locals 1

    .line 353
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 354
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 98
    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModePickerRoot:Landroid/view/ViewGroup;

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeVerticalScroll:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->setModePickerLayout(Landroid/view/ViewGroup;)V

    const v0, 0x7f0c006f

    const/4 v1, 0x1

    .line 101
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mRootView:Landroid/view/View;

    const p2, 0x7f090160

    .line 102
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeArrow:Landroid/view/View;

    .line 103
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mRootView:Landroid/view/View;

    const p2, 0x7f090161

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/opensource/svgaplayer/SVGAImageView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeArrowSvga:Lcom/opensource/svgaplayer/SVGAImageView;

    .line 104
    new-instance p1, Lcom/opensource/svgaplayer/SVGAParser;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/opensource/svgaplayer/SVGAParser;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mSVGAParser:Lcom/opensource/svgaplayer/SVGAParser;

    .line 105
    new-instance p1, Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mRootView:Landroid/view/View;

    const v0, 0x7f090097

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mRootView:Landroid/view/View;

    const v2, 0x7f090096

    .line 106
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mRootView:Landroid/view/View;

    const v3, 0x7f090094

    .line 107
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p1, p2, v0, v2, v3}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;-><init>(Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;Lcom/transsion/camera/app/ui/AbstractModePickerUI$1;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mCurrentModeUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;

    .line 108
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mRootView:Landroid/view/View;

    const p2, 0x7f090163

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    .line 109
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mRootView:Landroid/view/View;

    const p2, 0x7f090164

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/TabLayout;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    .line 110
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->getTabAnimationDuration()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/widget/TabLayout;->setTabAnimationDuration(I)V

    .line 111
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->getTabAnimationInterpolator()Landroid/view/animation/Interpolator;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/widget/TabLayout;->setTabAnimationInterpolator(Landroid/view/animation/Interpolator;)V

    .line 112
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p1, v1}, Landroid/widget/HorizontalScrollView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 113
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/high16 v0, 0x42a00000    # 80.0f

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;F)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/HorizontalScrollView;->setFadingEdgeLength(I)V

    .line 114
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/HorizontalScrollView;->setFocusable(Z)V

    .line 115
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeHorizontalScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->setModeScroll(Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;)V

    .line 117
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->isModePanelGuideSupported()Z

    move-result p1

    if-nez p1, :cond_1

    .line 118
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030014

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 120
    array-length p1, p1

    array-length v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v0, 0x6

    if-ge p1, v0, :cond_0

    .line 121
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeArrow:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 123
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeArrow:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 126
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 236
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isModePanelGuideSupported()Z
    .locals 2

    .line 240
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mContext:Landroid/content/Context;

    .line 241
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "camera_mode_panel_guide_support"

    .line 240
    invoke-static {p0, v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isModeTabScrolling()Z
    .locals 0

    .line 295
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 298
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->isScrolling()Z

    move-result p0

    return p0
.end method

.method public isTabLayoutMode(Ljava/lang/String;)Z
    .locals 0

    .line 302
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$1100(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$setupViews$0$AbstractModePickerUI(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->lambda$setupViews$0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$setupViews$1$AbstractModePickerUI(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->lambda$setupViews$1(Landroid/view/View;)V

    return-void
.end method

.method public modePickerHideAlphaAnimator(I)Landroid/animation/ObjectAnimator;
    .locals 3

    .line 382
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const-string v1, "alpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public modePickerShowAlphaAnimator(I)Landroid/animation/ObjectAnimator;
    .locals 3

    .line 373
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 376
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    const-string v1, "alpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public onBackPressed()Z
    .locals 2

    .line 414
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mCurrentModeUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;->access$1500(Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$1600(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)V

    .line 417
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateCurrentModeAndNotify()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    .line 462
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mIsReadyForScroll:Z

    const/4 p0, 0x0

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .line 432
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    return p2

    .line 436
    :cond_0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mIsReadyForScroll:Z

    if-nez p0, :cond_1

    return p2

    .line 439
    :cond_1
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_2

    :cond_2
    return p2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public scrollToNext()V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$300(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->scrollToNext()V

    :cond_0
    return-void
.end method

.method public scrollToPrevious()V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$300(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->scrollToPrevious()V

    :cond_0
    return-void
.end method

.method public scrolling(FF)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$300(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/TabLayout;->scrolling(FF)V

    :cond_0
    return-void
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .locals 0

    .line 487
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setEnable(Z)V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0, p1}, Landroid/widget/HorizontalScrollView;->setEnabled(Z)V

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mCurrentModeUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;

    if-eqz v0, :cond_1

    .line 227
    invoke-static {v0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;->access$600(Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;Z)V

    .line 229
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeArrow:Landroid/view/View;

    if-eqz p0, :cond_2

    .line 230
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public setIsCameraSwitching(Z)V
    .locals 0

    .line 359
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mIsCameraSwitching:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 362
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mFromResume:Z

    :cond_0
    return-void
.end method

.method public setIsResumeAfterEdit(Z)V
    .locals 0

    .line 818
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mIsResumeAfterEdit:Z

    return-void
.end method

.method public setModeChangedListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V
    .locals 0

    .line 482
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    return-void
.end method

.method public setModePickerOpaque()V
    .locals 1

    .line 341
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 342
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setModePickerUnOpaque()V
    .locals 1

    .line 347
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 348
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setSelfTimerBegin(Z)V
    .locals 0

    .line 367
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mSelfTimerBegin:Z

    return-void
.end method

.method public setupViews()V
    .locals 4

    .line 131
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 132
    new-instance v1, Landroid/view/GestureDetector;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v0, p0, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    .line 133
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;F)F

    .line 134
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeArrow:Landroid/view/View;

    new-instance v3, Lcom/transsion/camera/app/ui/-$$Lambda$AbstractModePickerUI$384wN6a7KQJdnfnbeG9SBH_xdy8;

    invoke-direct {v3, p0}, Lcom/transsion/camera/app/ui/-$$Lambda$AbstractModePickerUI$384wN6a7KQJdnfnbeG9SBH_xdy8;-><init>(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mCurrentModeUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;

    new-instance v3, Lcom/transsion/camera/app/ui/-$$Lambda$AbstractModePickerUI$A_LKYPbAIQJp6PC6NgNB_nAWmig;

    invoke-direct {v3, p0}, Lcom/transsion/camera/app/ui/-$$Lambda$AbstractModePickerUI$A_LKYPbAIQJp6PC6NgNB_nAWmig;-><init>(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)V

    invoke-static {v0, v3}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;->access$100(Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->setGestureDetector(Landroid/view/GestureDetector;)V

    .line 145
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractModePickerUI$OnTabSelectedListenerImpl;

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$OnTabSelectedListenerImpl;-><init>(Lcom/transsion/camera/app/ui/AbstractModePickerUI;Lcom/transsion/camera/app/ui/AbstractModePickerUI$1;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->setOnTabSelectedListener(Lcom/transsion/camera/app/ui/widget/TabLayout$OnTabSelectedListener;)V

    .line 146
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setEnabled(Z)V

    .line 147
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateModeTabLayout(Ljava/lang/String;)V

    .line 148
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateCurrentTab()V

    .line 149
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$300(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mCurrentModeUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$400(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;->access$500(Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public showModePicker()V
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 320
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 322
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateCurrentModeUI()V

    return-void
.end method

.method public showModeRegionOnSinked()V
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-nez v0, :cond_1

    return-void

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$300(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 333
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 334
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mCurrentModeUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;->access$1300(Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;)V

    goto :goto_0

    .line 336
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public stopScroll()V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$300(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->stopScroll()V

    :cond_0
    return-void
.end method

.method public updateArrowEnableState(Z)V
    .locals 0

    .line 550
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeArrow:Landroid/view/View;

    if-eqz p0, :cond_0

    .line 551
    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method public updateCurrentMode(Ljava/lang/String;)V
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$1000(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;Ljava/lang/String;)V

    .line 289
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateCurrentTab()V

    .line 290
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateCurrentModeUI()V

    return-void
.end method

.method public updateMode(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 312
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$1200(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$1000(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;Ljava/lang/String;)V

    .line 314
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateCurrentModeAndNotify()V

    :cond_0
    return-void
.end method

.method public updateModeArrowState(ZZ)V
    .locals 2

    .line 556
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeArrow:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeArrowSvga:Lcom/opensource/svgaplayer/SVGAImageView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    const/4 p1, 0x4

    .line 560
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_1

    const-string p1, "mode_picker_arrow_min_anim.svga"

    .line 562
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->playSvgaAnimation(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "mode_picker_arrow_anim.svga"

    .line 564
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->playSvgaAnimation(Ljava/lang/String;)V

    goto :goto_0

    .line 567
    :cond_2
    invoke-virtual {v1}, Lcom/opensource/svgaplayer/SVGAImageView;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 568
    sget-object p1, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "[updateModeArrowState] stopAnimation."

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 569
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeArrowSvga:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation()V

    :cond_3
    :goto_0
    return-void
.end method

.method public updateModes(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v0, p1, p2, p3}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$800(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateModeTabLayout(Ljava/lang/String;)V

    .line 276
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateCurrentTab()V

    return-void
.end method

.method public updateModes(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$900(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V

    .line 282
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateModeTabLayout(Ljava/lang/String;)V

    .line 283
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateCurrentTab()V

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public updateTabIndexOnPause(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 660
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$1200(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$1000(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;Ljava/lang/String;)V

    .line 662
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$700(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)I

    move-result p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->selectTabIndex(IZ)Z

    :cond_0
    return-void
.end method

.method public updateTabIndexOnResume(Ljava/lang/String;)V
    .locals 3

    .line 650
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTabIndexOnResume currentMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", currentModeFeatureName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    .line 651
    invoke-static {v2}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$1200(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 650
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 652
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mFromResume:Z

    .line 654
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$1200(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 655
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->checkTabIndex()V

    :cond_0
    return-void
.end method

.method public updateTabSellingPointState()V
    .locals 6

    .line 539
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    .line 540
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getTabCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 541
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v2, v1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$2500(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;I)Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v2

    .line 542
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mSellingPointItems:Ljava/util/List;

    iget-object v4, v2, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mContext:Landroid/content/Context;

    iget-object v4, v2, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    .line 543
    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iget-object v2, v2, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    invoke-interface {v3, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    move v5, v0

    .line 544
    :goto_1
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getTabAt(I)Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->setShowPointIcon(Z)Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
