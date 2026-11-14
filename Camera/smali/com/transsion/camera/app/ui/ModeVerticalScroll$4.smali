.class Lcom/transsion/camera/app/ui/ModeVerticalScroll$4;
.super Ljava/lang/Object;
.source "ModeVerticalScroll.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/ModeVerticalScroll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/ModeVerticalScroll;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/ModeVerticalScroll;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll$4;->this$0:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll$4;->this$0:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->access$500(Lcom/transsion/camera/app/ui/ModeVerticalScroll;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 386
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 387
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll$4;->this$0:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->access$500(Lcom/transsion/camera/app/ui/ModeVerticalScroll;)Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
