.class Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MultiFaceBeautyVideoUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;->addAnimatorListener()V
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

    .line 150
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI$1;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 154
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 155
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI$1;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;->access$000(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;)Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getTranslationY()F

    move-result p1

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    .line 157
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI$1;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;->hideLevel2(Z)V

    goto :goto_0

    .line 159
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI$1;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;->access$100(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;)V

    :goto_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 165
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 166
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI$1;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;->access$100(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;)V

    return-void
.end method
