.class final Lcom/opensource/svgaplayer/SVGAImageView$startAnimation$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "SVGAImageView.kt"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opensource/svgaplayer/SVGAImageView;->startAnimation(Lcom/opensource/svgaplayer/utils/SVGARange;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $animator:Landroid/animation/ValueAnimator;

.field final synthetic $drawable$inlined:Lcom/opensource/svgaplayer/SVGADrawable;

.field final synthetic this$0:Lcom/opensource/svgaplayer/SVGAImageView;


# direct methods
.method constructor <init>(Landroid/animation/ValueAnimator;Lcom/opensource/svgaplayer/SVGAImageView;Lcom/opensource/svgaplayer/utils/SVGARange;Lcom/opensource/svgaplayer/SVGADrawable;Z)V
    .locals 0

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAImageView$startAnimation$$inlined$let$lambda$1;->$animator:Landroid/animation/ValueAnimator;

    iput-object p2, p0, Lcom/opensource/svgaplayer/SVGAImageView$startAnimation$$inlined$let$lambda$1;->this$0:Lcom/opensource/svgaplayer/SVGAImageView;

    iput-object p4, p0, Lcom/opensource/svgaplayer/SVGAImageView$startAnimation$$inlined$let$lambda$1;->$drawable$inlined:Lcom/opensource/svgaplayer/SVGADrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 162
    iget-object p1, p0, Lcom/opensource/svgaplayer/SVGAImageView$startAnimation$$inlined$let$lambda$1;->$drawable$inlined:Lcom/opensource/svgaplayer/SVGADrawable;

    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAImageView$startAnimation$$inlined$let$lambda$1;->$animator:Landroid/animation/ValueAnimator;

    const-string v1, "animator"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/opensource/svgaplayer/SVGADrawable;->setCurrentFrame$library_release(I)V

    .line 163
    iget-object p1, p0, Lcom/opensource/svgaplayer/SVGAImageView$startAnimation$$inlined$let$lambda$1;->this$0:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAImageView;->getCallback()Lcom/opensource/svgaplayer/SVGACallback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAImageView$startAnimation$$inlined$let$lambda$1;->$drawable$inlined:Lcom/opensource/svgaplayer/SVGADrawable;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGADrawable;->getCurrentFrame()I

    move-result v0

    iget-object v1, p0, Lcom/opensource/svgaplayer/SVGAImageView$startAnimation$$inlined$let$lambda$1;->$drawable$inlined:Lcom/opensource/svgaplayer/SVGADrawable;

    invoke-virtual {v1}, Lcom/opensource/svgaplayer/SVGADrawable;->getCurrentFrame()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-double v1, v1

    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGAImageView$startAnimation$$inlined$let$lambda$1;->$drawable$inlined:Lcom/opensource/svgaplayer/SVGADrawable;

    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGADrawable;->getVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getFrames()I

    move-result p0

    int-to-double v3, p0

    div-double/2addr v1, v3

    invoke-interface {p1, v0, v1, v2}, Lcom/opensource/svgaplayer/SVGACallback;->onStep(ID)V

    :cond_0
    return-void

    .line 162
    :cond_1
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
