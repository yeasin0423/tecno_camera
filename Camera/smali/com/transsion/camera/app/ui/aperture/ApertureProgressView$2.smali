.class Lcom/transsion/camera/app/ui/aperture/ApertureProgressView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ApertureProgressView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;->startDrawAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView$2;->this$0:Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 0

    .line 111
    iget-object p1, p0, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView$2;->this$0:Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;->access$202(Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;Z)Z

    .line 112
    iget-object p0, p0, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView$2;->this$0:Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView$2;->this$0:Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;->access$202(Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;Z)Z

    return-void
.end method
