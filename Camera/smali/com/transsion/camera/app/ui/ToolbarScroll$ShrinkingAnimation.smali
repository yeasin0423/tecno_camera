.class final Lcom/transsion/camera/app/ui/ToolbarScroll$ShrinkingAnimation;
.super Lcom/transsion/camera/app/ui/ToolbarScroll$Animation;
.source "ToolbarScroll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/ToolbarScroll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShrinkingAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/ToolbarScroll;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/ToolbarScroll;)V
    .locals 1

    .line 278
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ToolbarScroll$ShrinkingAnimation;->this$0:Lcom/transsion/camera/app/ui/ToolbarScroll;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/ToolbarScroll$Animation;-><init>(Lcom/transsion/camera/app/ui/ToolbarScroll;Lcom/transsion/camera/app/ui/ToolbarScroll$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/ToolbarScroll;Lcom/transsion/camera/app/ui/ToolbarScroll$1;)V
    .locals 0

    .line 278
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ToolbarScroll$ShrinkingAnimation;-><init>(Lcom/transsion/camera/app/ui/ToolbarScroll;)V

    return-void
.end method

.method private createTitleAnimator()Landroid/animation/Animator;
    .locals 3

    .line 289
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll$ShrinkingAnimation;->this$0:Lcom/transsion/camera/app/ui/ToolbarScroll;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ToolbarScroll;->access$1500(Lcom/transsion/camera/app/ui/ToolbarScroll;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 290
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll$ShrinkingAnimation;->this$0:Lcom/transsion/camera/app/ui/ToolbarScroll;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ToolbarScroll;->access$1900(Lcom/transsion/camera/app/ui/ToolbarScroll;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v1, 0x12c

    .line 291
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method onCreateAnimator()Landroid/animation/Animator;
    .locals 4

    .line 281
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll$ShrinkingAnimation;->this$0:Lcom/transsion/camera/app/ui/ToolbarScroll;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ToolbarScroll;->access$1200(Lcom/transsion/camera/app/ui/ToolbarScroll;)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ToolbarScroll$ShrinkingAnimation;->this$0:Lcom/transsion/camera/app/ui/ToolbarScroll;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/ToolbarScroll;->access$1800(Lcom/transsion/camera/app/ui/ToolbarScroll;)I

    move-result v1

    const/16 v2, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/camera/app/ui/ToolbarScroll$Animation;->createPaddingAnimator(III)Landroid/animation/Animator;

    move-result-object v0

    .line 282
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ToolbarScroll$ShrinkingAnimation;->createTitleAnimator()Landroid/animation/Animator;

    move-result-object p0

    .line 283
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p0, v2, v0

    .line 284
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v1
.end method
