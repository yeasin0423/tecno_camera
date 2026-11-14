.class public final synthetic Lcom/transsion/camera/app/ui/view/-$$Lambda$SwitchAnimView$gFtaYsM8YYWH7C6U9xqferBZh_s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/ui/view/SwitchAnimView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/ui/view/SwitchAnimView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/-$$Lambda$SwitchAnimView$gFtaYsM8YYWH7C6U9xqferBZh_s;->f$0:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/-$$Lambda$SwitchAnimView$gFtaYsM8YYWH7C6U9xqferBZh_s;->f$0:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->lambda$updateTargetRect$0$SwitchAnimView(Landroid/animation/ValueAnimator;)V

    return-void
.end method
