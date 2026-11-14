.class public Lcom/transsion/camera/app/ui/ModePickerUI;
.super Lcom/transsion/camera/app/ui/AbstractModePickerUI;
.source "ModePickerUI.java"


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/ui/ModeVerticalScroll;Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;Landroid/content/Context;Lcom/transsion/camera/app/ui/ScrollConsumer;Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;)V
    .locals 0

    .line 21
    invoke-direct/range {p0 .. p5}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;-><init>(Lcom/transsion/camera/app/ui/ModeVerticalScroll;Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;Landroid/content/Context;Lcom/transsion/camera/app/ui/ScrollConsumer;Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;)V

    return-void
.end method


# virtual methods
.method protected getTabAnimationDuration()I
    .locals 0

    const/16 p0, 0x12c

    return p0
.end method

.method protected getTabAnimationInterpolator()Landroid/view/animation/Interpolator;
    .locals 0

    .line 31
    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    return-object p0
.end method
