.class public abstract Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;
.super Ljava/lang/Object;
.source "AbstractContinuousShotUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;
.implements Lcom/transsion/camera/app/common/IAppUIControl$IContinuousShotControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/AbstractContinuousShotUI$MainHandler;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mMainHandler:Landroid/os/Handler;

.field private mPosition:Lcom/transsion/camera/app/ui/MainScreenOriginPosition;

.field private mProgressContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mProgressNumberFormat:Ljava/lang/String;

.field private mRootView:Landroid/view/View;

.field private mShotProgress:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/ui/MainScreenOriginPosition;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI$MainHandler;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI$MainHandler;-><init>(Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mMainHandler:Landroid/os/Handler;

    .line 50
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mPosition:Lcom/transsion/camera/app/ui/MainScreenOriginPosition;

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 32
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;II)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->showShotProgress(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->hideContinuousShotView()V

    return-void
.end method

.method private hideContinuousShotView()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mShotProgress:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mProgressContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mProgressContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->onContinuousShotProgressHide(Landroid/view/View;)V

    return-void
.end method

.method private showShotProgress(II)V
    .locals 4

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mProgressContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->onContinuousShotProgressShow(Landroid/view/View;)V

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mProgressContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 104
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mProgressNumberFormat:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 105
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mShotProgress:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c0028

    const/4 v1, 0x1

    .line 55
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mRootView:Landroid/view/View;

    return-object p1
.end method

.method public onContinuousShotProgress(II)V
    .locals 1

    .line 90
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mMainHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected onContinuousShotProgressHide(Landroid/view/View;)V
    .locals 0

    .line 120
    sget-object p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onContinuousShotProgressHide"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected onContinuousShotProgressShow(Landroid/view/View;)V
    .locals 0

    .line 116
    sget-object p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onContinuousShotProgressShow"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onContinuousShotStop()V
    .locals 1

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mMainHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 3

    .line 78
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientationChanged orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mProgressContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-nez p0, :cond_0

    .line 81
    sget-object p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mProgressContainer is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 85
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    return-void
.end method

.method public setupViews()V
    .locals 4

    .line 61
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mRootView:Landroid/view/View;

    const v1, 0x7f090091

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mProgressContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 62
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 63
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mPosition:Lcom/transsion/camera/app/ui/MainScreenOriginPosition;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/MainScreenOriginPosition;->getBottomHeight()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mProgressContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 64
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700b1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 65
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mProgressContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mRootView:Landroid/view/View;

    const v1, 0x7f090090

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mShotProgress:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f00a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mProgressNumberFormat:Ljava/lang/String;

    return-void
.end method

.method public unInit()V
    .locals 0

    return-void
.end method
