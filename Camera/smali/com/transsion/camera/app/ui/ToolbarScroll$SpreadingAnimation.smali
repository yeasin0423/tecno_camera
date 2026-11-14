.class final Lcom/transsion/camera/app/ui/ToolbarScroll$SpreadingAnimation;
.super Lcom/transsion/camera/app/ui/ToolbarScroll$Animation;
.source "ToolbarScroll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/ToolbarScroll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SpreadingAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/ToolbarScroll;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/ToolbarScroll;)V
    .locals 1

    .line 231
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ToolbarScroll$SpreadingAnimation;->this$0:Lcom/transsion/camera/app/ui/ToolbarScroll;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/ToolbarScroll$Animation;-><init>(Lcom/transsion/camera/app/ui/ToolbarScroll;Lcom/transsion/camera/app/ui/ToolbarScroll$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/ToolbarScroll;Lcom/transsion/camera/app/ui/ToolbarScroll$1;)V
    .locals 0

    .line 231
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ToolbarScroll$SpreadingAnimation;-><init>(Lcom/transsion/camera/app/ui/ToolbarScroll;)V

    return-void
.end method

.method private createArrowAnimator()Landroid/animation/Animator;
    .locals 2

    .line 256
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll$SpreadingAnimation;->this$0:Lcom/transsion/camera/app/ui/ToolbarScroll;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ToolbarScroll;->access$1700(Lcom/transsion/camera/app/ui/ToolbarScroll;)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x12c

    .line 257
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private createPaddingAnimator()Landroid/animation/Animator;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 243
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ToolbarScroll$SpreadingAnimation;->this$0:Lcom/transsion/camera/app/ui/ToolbarScroll;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/ToolbarScroll;->access$1200(Lcom/transsion/camera/app/ui/ToolbarScroll;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ToolbarScroll$SpreadingAnimation;->this$0:Lcom/transsion/camera/app/ui/ToolbarScroll;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/ToolbarScroll;->access$1300(Lcom/transsion/camera/app/ui/ToolbarScroll;)I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ToolbarScroll$SpreadingAnimation;->this$0:Lcom/transsion/camera/app/ui/ToolbarScroll;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/ToolbarScroll;->access$1400(Lcom/transsion/camera/app/ui/ToolbarScroll;)I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ToolbarScroll$SpreadingAnimation;->this$0:Lcom/transsion/camera/app/ui/ToolbarScroll;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/ToolbarScroll;->access$1300(Lcom/transsion/camera/app/ui/ToolbarScroll;)I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    new-array v1, v2, [I

    .line 244
    fill-array-data v1, :array_0

    .line 245
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/ui/ToolbarScroll$Animation;->createPaddingSequentiallyAnimator([I[I)Landroid/animation/Animator;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x12c
        0x96
    .end array-data
.end method

.method private createTitleAnimator()Landroid/animation/Animator;
    .locals 3

    .line 249
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll$SpreadingAnimation;->this$0:Lcom/transsion/camera/app/ui/ToolbarScroll;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ToolbarScroll;->access$1500(Lcom/transsion/camera/app/ui/ToolbarScroll;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 250
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll$SpreadingAnimation;->this$0:Lcom/transsion/camera/app/ui/ToolbarScroll;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ToolbarScroll;->access$1600(Lcom/transsion/camera/app/ui/ToolbarScroll;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v1, 0x12c

    .line 251
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method onCreateAnimator()Landroid/animation/Animator;
    .locals 5

    .line 234
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ToolbarScroll$SpreadingAnimation;->createPaddingAnimator()Landroid/animation/Animator;

    move-result-object v0

    .line 235
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ToolbarScroll$SpreadingAnimation;->createTitleAnimator()Landroid/animation/Animator;

    move-result-object v1

    .line 236
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ToolbarScroll$SpreadingAnimation;->createArrowAnimator()Landroid/animation/Animator;

    move-result-object p0

    .line 237
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object p0, v3, v0

    .line 238
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v2
.end method
