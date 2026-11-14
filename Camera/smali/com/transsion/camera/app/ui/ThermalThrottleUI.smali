.class public Lcom/transsion/camera/app/ui/ThermalThrottleUI;
.super Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;
.source "ThermalThrottleUI.java"


# instance fields
.field private mRoot:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/ThermalThrottleUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;-><init>()V

    return-void
.end method


# virtual methods
.method public fadeIn(Landroid/view/View;)V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f020024

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 54
    invoke-virtual {v0, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 55
    new-instance v1, Lcom/transsion/camera/app/ui/ThermalThrottleUI$2;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/app/ui/ThermalThrottleUI$2;-><init>(Lcom/transsion/camera/app/ui/ThermalThrottleUI;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 67
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public fadeOut(Landroid/view/View;)V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f020025

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 73
    invoke-virtual {v0, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 74
    new-instance v1, Lcom/transsion/camera/app/ui/ThermalThrottleUI$3;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/app/ui/ThermalThrottleUI$3;-><init>(Lcom/transsion/camera/app/ui/ThermalThrottleUI;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 80
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method getLowTemperatureLayout()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method getMediumTemperatureLayout()I
    .locals 0

    const p0, 0x7f0c00f9

    return p0
.end method

.method public updateLayout()V
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;->mLayout:Landroid/view/View;

    const v1, 0x7f090127

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mRoot:Landroid/widget/LinearLayout;

    .line 37
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;->mCutoutHeight:I

    if-lez v1, :cond_0

    const/4 v2, 0x0

    .line 38
    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mRoot:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/transsion/camera/app/ui/ThermalThrottleUI$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/ThermalThrottleUI$1;-><init>(Lcom/transsion/camera/app/ui/ThermalThrottleUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
