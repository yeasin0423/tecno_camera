.class Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI$4;
.super Ljava/lang/Object;
.source "MultiFaceBeautyVideoUI.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI$4;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 203
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    .line 205
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI$4;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;->access$200(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 206
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI$4;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;->access$200(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI$4;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;->access$000(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;)Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 209
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI$4;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;->access$000(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;)Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    :cond_1
    return-void
.end method
