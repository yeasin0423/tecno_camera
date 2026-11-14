.class Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ARStickerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->doAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI$1;->this$0:Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 253
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 254
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI$1;->this$0:Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->access$000(Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;)Landroid/widget/RelativeLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 255
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI$1;->this$0:Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->access$000(Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;)Landroid/widget/RelativeLayout;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI$1;->this$0:Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mShowBar:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 245
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 246
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI$1;->this$0:Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;

    iget-boolean v0, p1, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mShowBar:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->access$000(Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;)Landroid/widget/RelativeLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 247
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI$1;->this$0:Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->access$000(Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;)Landroid/widget/RelativeLayout;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 237
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 238
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI$1;->this$0:Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;

    iget-boolean v0, p1, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mShowBar:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->access$000(Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;)Landroid/widget/RelativeLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 239
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI$1;->this$0:Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->access$000(Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;)Landroid/widget/RelativeLayout;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
