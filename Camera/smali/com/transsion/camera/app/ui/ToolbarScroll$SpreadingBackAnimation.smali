.class final Lcom/transsion/camera/app/ui/ToolbarScroll$SpreadingBackAnimation;
.super Lcom/transsion/camera/app/ui/ToolbarScroll$Animation;
.source "ToolbarScroll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/ToolbarScroll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SpreadingBackAnimation"
.end annotation


# instance fields
.field private final mBackInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field final synthetic this$0:Lcom/transsion/camera/app/ui/ToolbarScroll;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/ToolbarScroll;)V
    .locals 1

    .line 262
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ToolbarScroll$SpreadingBackAnimation;->this$0:Lcom/transsion/camera/app/ui/ToolbarScroll;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/ToolbarScroll$Animation;-><init>(Lcom/transsion/camera/app/ui/ToolbarScroll;Lcom/transsion/camera/app/ui/ToolbarScroll$1;)V

    .line 263
    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ToolbarScroll$SpreadingBackAnimation;->mBackInterpolator:Landroid/view/animation/AccelerateInterpolator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/ToolbarScroll;Lcom/transsion/camera/app/ui/ToolbarScroll$1;)V
    .locals 0

    .line 262
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ToolbarScroll$SpreadingBackAnimation;-><init>(Lcom/transsion/camera/app/ui/ToolbarScroll;)V

    return-void
.end method


# virtual methods
.method onCreateAnimator()Landroid/animation/Animator;
    .locals 3

    .line 266
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll$SpreadingBackAnimation;->this$0:Lcom/transsion/camera/app/ui/ToolbarScroll;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ToolbarScroll;->access$1200(Lcom/transsion/camera/app/ui/ToolbarScroll;)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ToolbarScroll$SpreadingBackAnimation;->this$0:Lcom/transsion/camera/app/ui/ToolbarScroll;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/ToolbarScroll;->access$1800(Lcom/transsion/camera/app/ui/ToolbarScroll;)I

    move-result v1

    const/16 v2, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/camera/app/ui/ToolbarScroll$Animation;->createPaddingAnimator(III)Landroid/animation/Animator;

    move-result-object p0

    .line 267
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 268
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0
.end method

.method onCreateInterpolator()Landroid/view/animation/Interpolator;
    .locals 0

    .line 274
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll$SpreadingBackAnimation;->mBackInterpolator:Landroid/view/animation/AccelerateInterpolator;

    return-object p0
.end method
