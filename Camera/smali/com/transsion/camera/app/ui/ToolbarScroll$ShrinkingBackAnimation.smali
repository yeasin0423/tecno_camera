.class final Lcom/transsion/camera/app/ui/ToolbarScroll$ShrinkingBackAnimation;
.super Lcom/transsion/camera/app/ui/ToolbarScroll$Animation;
.source "ToolbarScroll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/ToolbarScroll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShrinkingBackAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/ToolbarScroll;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/ToolbarScroll;)V
    .locals 1

    .line 296
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ToolbarScroll$ShrinkingBackAnimation;->this$0:Lcom/transsion/camera/app/ui/ToolbarScroll;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/ToolbarScroll$Animation;-><init>(Lcom/transsion/camera/app/ui/ToolbarScroll;Lcom/transsion/camera/app/ui/ToolbarScroll$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/ToolbarScroll;Lcom/transsion/camera/app/ui/ToolbarScroll$1;)V
    .locals 0

    .line 296
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ToolbarScroll$ShrinkingBackAnimation;-><init>(Lcom/transsion/camera/app/ui/ToolbarScroll;)V

    return-void
.end method

.method private animatorDynamicDuration(FFF)I
    .locals 0

    sub-float/2addr p2, p1

    .line 306
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p0

    div-float/2addr p0, p3

    const/high16 p1, 0x43960000    # 300.0f

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method


# virtual methods
.method onCreateAnimator()Landroid/animation/Animator;
    .locals 9

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 299
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ToolbarScroll$ShrinkingBackAnimation;->this$0:Lcom/transsion/camera/app/ui/ToolbarScroll;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/ToolbarScroll;->access$1200(Lcom/transsion/camera/app/ui/ToolbarScroll;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ToolbarScroll$ShrinkingBackAnimation;->this$0:Lcom/transsion/camera/app/ui/ToolbarScroll;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/ToolbarScroll;->access$1300(Lcom/transsion/camera/app/ui/ToolbarScroll;)I

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ToolbarScroll$ShrinkingBackAnimation;->this$0:Lcom/transsion/camera/app/ui/ToolbarScroll;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/ToolbarScroll;->access$1300(Lcom/transsion/camera/app/ui/ToolbarScroll;)I

    move-result v1

    iget-object v4, p0, Lcom/transsion/camera/app/ui/ToolbarScroll$ShrinkingBackAnimation;->this$0:Lcom/transsion/camera/app/ui/ToolbarScroll;

    invoke-static {v4}, Lcom/transsion/camera/app/ui/ToolbarScroll;->access$1400(Lcom/transsion/camera/app/ui/ToolbarScroll;)I

    move-result v4

    add-int/2addr v1, v4

    const/4 v4, 0x2

    aput v1, v0, v4

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ToolbarScroll$ShrinkingBackAnimation;->this$0:Lcom/transsion/camera/app/ui/ToolbarScroll;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/ToolbarScroll;->access$1300(Lcom/transsion/camera/app/ui/ToolbarScroll;)I

    move-result v1

    const/4 v5, 0x3

    aput v1, v0, v5

    new-array v1, v5, [I

    .line 300
    iget-object v5, p0, Lcom/transsion/camera/app/ui/ToolbarScroll$ShrinkingBackAnimation;->this$0:Lcom/transsion/camera/app/ui/ToolbarScroll;

    invoke-static {v5}, Lcom/transsion/camera/app/ui/ToolbarScroll;->access$1200(Lcom/transsion/camera/app/ui/ToolbarScroll;)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/transsion/camera/app/ui/ToolbarScroll$ShrinkingBackAnimation;->this$0:Lcom/transsion/camera/app/ui/ToolbarScroll;

    invoke-static {v6}, Lcom/transsion/camera/app/ui/ToolbarScroll;->access$1300(Lcom/transsion/camera/app/ui/ToolbarScroll;)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/transsion/camera/app/ui/ToolbarScroll$ShrinkingBackAnimation;->this$0:Lcom/transsion/camera/app/ui/ToolbarScroll;

    invoke-static {v7}, Lcom/transsion/camera/app/ui/ToolbarScroll;->access$1300(Lcom/transsion/camera/app/ui/ToolbarScroll;)I

    move-result v7

    iget-object v8, p0, Lcom/transsion/camera/app/ui/ToolbarScroll$ShrinkingBackAnimation;->this$0:Lcom/transsion/camera/app/ui/ToolbarScroll;

    invoke-static {v8}, Lcom/transsion/camera/app/ui/ToolbarScroll;->access$1800(Lcom/transsion/camera/app/ui/ToolbarScroll;)I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-direct {p0, v5, v6, v7}, Lcom/transsion/camera/app/ui/ToolbarScroll$ShrinkingBackAnimation;->animatorDynamicDuration(FFF)I

    move-result v5

    aput v5, v1, v2

    const/16 v2, 0x64

    aput v2, v1, v3

    const/16 v2, 0x96

    aput v2, v1, v4

    .line 302
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/ui/ToolbarScroll$Animation;->createPaddingSequentiallyAnimator([I[I)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method
