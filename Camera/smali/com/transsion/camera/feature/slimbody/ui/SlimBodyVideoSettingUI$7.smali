.class Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$7;
.super Ljava/lang/Object;
.source "SlimBodyVideoSettingUI.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$7;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 232
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    .line 234
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$7;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;

    invoke-static {v1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->access$900(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 235
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$7;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;

    invoke-static {v1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->access$900(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 236
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$7;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;

    invoke-static {v1, v0, v2}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->access$1200(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;FF)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$7;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->access$1300(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)Lcom/transsion/camera/app/common/interactive/CommonInteractive;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$7;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->access$1400(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)Z

    move-result v0

    .line 238
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$7;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->access$1300(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)Lcom/transsion/camera/app/common/interactive/CommonInteractive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getModeRegionControl()Lcom/transsion/camera/app/common/IModeRegionControl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 240
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$7;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;

    invoke-static {v1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->access$1400(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IModeRegionControl;->hideModeRegion()V

    goto :goto_0

    .line 243
    :cond_0
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IModeRegionControl;->showModeRegion()V

    .line 250
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$7;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->access$1100(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$7;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->access$1100(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 252
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$7;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;

    invoke-static {v0, p1, v2}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->access$1200(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;FF)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 253
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$7;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->access$1500(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)V

    :cond_2
    return-void
.end method
