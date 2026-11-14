.class Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$4;
.super Ljava/lang/Object;
.source "MultiFaceBeautyUI.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$4;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 327
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 328
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$4;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->access$600(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$4;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->access$600(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$4;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->access$700(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 333
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$4;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->access$700(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    return-void
.end method
