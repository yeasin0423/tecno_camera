.class Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$6;
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

    .line 350
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$6;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 354
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    .line 356
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$6;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->access$600(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 357
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$6;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->access$600(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$6;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->access$400(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;)Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 360
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$6;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->access$400(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;)Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    :cond_1
    return-void
.end method
