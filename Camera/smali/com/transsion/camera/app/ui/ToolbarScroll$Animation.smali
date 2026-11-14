.class abstract Lcom/transsion/camera/app/ui/ToolbarScroll$Animation;
.super Ljava/lang/Object;
.source "ToolbarScroll.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/ToolbarScroll$IAnimation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/ToolbarScroll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Animation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/ToolbarScroll;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/ToolbarScroll;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ToolbarScroll$Animation;->this$0:Lcom/transsion/camera/app/ui/ToolbarScroll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/ToolbarScroll;Lcom/transsion/camera/app/ui/ToolbarScroll$1;)V
    .locals 0

    .line 187
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ToolbarScroll$Animation;-><init>(Lcom/transsion/camera/app/ui/ToolbarScroll;)V

    return-void
.end method

.method private startAnimator(Landroid/animation/Animator;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 207
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ToolbarScroll$Animation;->onCreateInterpolator()Landroid/view/animation/Interpolator;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 208
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 209
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method


# virtual methods
.method final createPaddingAnimator(III)Landroid/animation/Animator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 224
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 225
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll$Animation;->this$0:Lcom/transsion/camera/app/ui/ToolbarScroll;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ToolbarScroll;->access$1000(Lcom/transsion/camera/app/ui/ToolbarScroll;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    int-to-long p2, p3

    .line 226
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method final createPaddingSequentiallyAnimator([I[I)Landroid/animation/Animator;
    .locals 5

    .line 213
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll$Animation;->this$0:Lcom/transsion/camera/app/ui/ToolbarScroll;

    array-length v1, p1

    array-length v2, p2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-static {v0, v3}, Lcom/transsion/camera/app/ui/ToolbarScroll;->access$900(Lcom/transsion/camera/app/ui/ToolbarScroll;Z)V

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 215
    :goto_1
    array-length v1, p2

    if-ge v4, v1, :cond_1

    .line 216
    aget v1, p1, v4

    add-int/lit8 v2, v4, 0x1

    aget v3, p1, v2

    aget v4, p2, v4

    invoke-virtual {p0, v1, v3, v4}, Lcom/transsion/camera/app/ui/ToolbarScroll$Animation;->createPaddingAnimator(III)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v2

    goto :goto_1

    .line 218
    :cond_1
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 219
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    return-object p0
.end method

.method abstract onCreateAnimator()Landroid/animation/Animator;
.end method

.method onCreateInterpolator()Landroid/view/animation/Interpolator;
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll$Animation;->this$0:Lcom/transsion/camera/app/ui/ToolbarScroll;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ToolbarScroll;->access$800(Lcom/transsion/camera/app/ui/ToolbarScroll;)Landroid/view/animation/PathInterpolator;

    move-result-object p0

    return-object p0
.end method

.method public final start(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;)V
    .locals 3

    .line 196
    invoke-static {}, Lcom/transsion/camera/app/ui/ToolbarScroll;->access$700()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAnimation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " listener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ToolbarScroll$Animation;->onCreateAnimator()Landroid/animation/Animator;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/ToolbarScroll$AnimatorTotalListener;

    invoke-direct {v1, p1}, Lcom/transsion/camera/app/ui/ToolbarScroll$AnimatorTotalListener;-><init>(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;)V

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/ToolbarScroll$Animation;->startAnimator(Landroid/animation/Animator;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
