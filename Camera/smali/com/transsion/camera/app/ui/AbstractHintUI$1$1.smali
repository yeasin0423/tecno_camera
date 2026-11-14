.class Lcom/transsion/camera/app/ui/AbstractHintUI$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AbstractHintUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/AbstractHintUI$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/app/ui/AbstractHintUI$1;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractHintUI$1;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$1$1;->this$1:Lcom/transsion/camera/app/ui/AbstractHintUI$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 195
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$1$1;->this$1:Lcom/transsion/camera/app/ui/AbstractHintUI$1;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/AbstractHintUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    const-string v0, "com.transsion.camera.feature.mode.supernight.SuperNightModeEntry"

    invoke-static {p1, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->access$800(Lcom/transsion/camera/app/ui/AbstractHintUI;Ljava/lang/String;)V

    .line 196
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$1$1;->this$1:Lcom/transsion/camera/app/ui/AbstractHintUI$1;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->access$600(Lcom/transsion/camera/app/ui/AbstractHintUI;)Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
