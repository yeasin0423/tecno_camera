.class Lcom/transsion/camera/app/ui/ToolbarScroll$AnimatorTotalListener;
.super Lcom/transsion/camera/app/ui/ToolbarScroll$SupperAnimatorListener;
.source "ToolbarScroll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/ToolbarScroll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimatorTotalListener"
.end annotation


# instance fields
.field private final mListener:Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;)V
    .locals 3

    const/4 v0, 0x0

    .line 382
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ToolbarScroll$SupperAnimatorListener;-><init>(Lcom/transsion/camera/app/ui/ToolbarScroll$1;)V

    .line 383
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ToolbarScroll$AnimatorTotalListener;->mListener:Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;

    .line 384
    invoke-static {}, Lcom/transsion/camera/app/ui/ToolbarScroll;->access$700()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnimatorTotalListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " listener:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 389
    invoke-static {}, Lcom/transsion/camera/app/ui/ToolbarScroll;->access$700()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAnimationEnd "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " listener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ToolbarScroll$AnimatorTotalListener;->mListener:Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 390
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll$AnimatorTotalListener;->mListener:Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;->onAnimationEnd()V

    return-void
.end method
