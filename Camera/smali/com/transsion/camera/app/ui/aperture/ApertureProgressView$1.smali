.class Lcom/transsion/camera/app/ui/aperture/ApertureProgressView$1;
.super Ljava/lang/Object;
.source "ApertureProgressView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;->startDrawAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView$1;->this$0:Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView$1;->this$0:Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;->access$002(Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;F)F

    .line 98
    invoke-static {}, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onAnimationUpdate]-- mCurrentAngle\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView$1;->this$0:Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;->access$000(Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView$1;->this$0:Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
