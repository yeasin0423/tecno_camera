.class Lcom/transsion/camera/app/ui/ApertureUI$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ApertureUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/ApertureUI;->startSwitchCameraAnim(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/ApertureUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/ApertureUI;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ApertureUI$1;->this$0:Lcom/transsion/camera/app/ui/ApertureUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ApertureUI$1;->this$0:Lcom/transsion/camera/app/ui/ApertureUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ApertureUI;->access$000(Lcom/transsion/camera/app/ui/ApertureUI;)Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;->startDrawAnim()V

    return-void
.end method
