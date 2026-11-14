.class Lcom/transsion/camera/app/ui/ToolbarScroll$AnimatorTitleHideListener;
.super Lcom/transsion/camera/app/ui/ToolbarScroll$SupperAnimatorListener;
.source "ToolbarScroll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/ToolbarScroll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatorTitleHideListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/ToolbarScroll;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/ToolbarScroll;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ToolbarScroll$AnimatorTitleHideListener;->this$0:Lcom/transsion/camera/app/ui/ToolbarScroll;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ToolbarScroll$SupperAnimatorListener;-><init>(Lcom/transsion/camera/app/ui/ToolbarScroll$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/ToolbarScroll;Lcom/transsion/camera/app/ui/ToolbarScroll$1;)V
    .locals 0

    .line 403
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ToolbarScroll$AnimatorTitleHideListener;-><init>(Lcom/transsion/camera/app/ui/ToolbarScroll;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 406
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll$AnimatorTitleHideListener;->this$0:Lcom/transsion/camera/app/ui/ToolbarScroll;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ToolbarScroll;->access$1500(Lcom/transsion/camera/app/ui/ToolbarScroll;)Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
