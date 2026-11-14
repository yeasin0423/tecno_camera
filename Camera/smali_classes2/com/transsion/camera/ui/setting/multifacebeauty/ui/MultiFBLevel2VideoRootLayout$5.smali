.class Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout$5;
.super Ljava/lang/Object;
.source "MultiFBLevel2VideoRootLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout$5;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 356
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 357
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout$5;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->access$1100(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout$5;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->access$1100(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout$5;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->access$1200(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;)Z

    move-result v2

    if-eqz v2, :cond_0

    sub-float v2, v1, p1

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout$5;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->access$300(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 361
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout$5;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->access$300(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout$5;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;->access$1400(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2VideoRootLayout;)Z

    move-result p0

    if-eqz p0, :cond_2

    sub-float p1, v1, p1

    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_3
    return-void
.end method
