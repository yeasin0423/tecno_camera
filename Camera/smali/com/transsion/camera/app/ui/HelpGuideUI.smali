.class public Lcom/transsion/camera/app/ui/HelpGuideUI;
.super Ljava/lang/Object;
.source "HelpGuideUI.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/IHelpGuideUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/HelpGuideUI$GuideIconClickListener;
    }
.end annotation


# instance fields
.field private mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private mGuideFragment:Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

.field private mHelpGuideImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/ui/HelpGuideUI;)Lcom/transsion/camera/app/ui/GuidePagerRootFragment;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mGuideFragment:Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

    return-object p0
.end method

.method static synthetic access$002(Lcom/transsion/camera/app/ui/HelpGuideUI;Lcom/transsion/camera/app/ui/GuidePagerRootFragment;)Lcom/transsion/camera/app/ui/GuidePagerRootFragment;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mGuideFragment:Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

    return-object p1
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/HelpGuideUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-object p0
.end method


# virtual methods
.method public exitGuideFragment()V
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mGuideFragment:Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

    if-eqz p0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->exit()V

    :cond_0
    return-void
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c005b

    const/4 v1, 0x1

    .line 23
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090135

    .line 24
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mHelpGuideImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const p0, 0x7f090110

    .line 25
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onOrientationChanged(I)V
    .locals 1

    .line 51
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mHelpGuideImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 52
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    :cond_0
    return-void
.end method

.method public refreshIconState()V
    .locals 1

    .line 41
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mHelpGuideImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    return-void
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mHelpGuideImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p0, :cond_0

    .line 59
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method public updateIcon(ZLandroid/app/FragmentManager;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/app/FragmentManager;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    .line 30
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 31
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mHelpGuideImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 32
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mHelpGuideImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 33
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mHelpGuideImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    new-instance v0, Lcom/transsion/camera/app/ui/HelpGuideUI$GuideIconClickListener;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/transsion/camera/app/ui/HelpGuideUI$GuideIconClickListener;-><init>(Lcom/transsion/camera/app/ui/HelpGuideUI;Landroid/app/FragmentManager;ILjava/util/List;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 35
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mHelpGuideImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method
