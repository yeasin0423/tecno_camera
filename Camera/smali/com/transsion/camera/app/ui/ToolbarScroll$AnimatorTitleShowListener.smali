.class Lcom/transsion/camera/app/ui/ToolbarScroll$AnimatorTitleShowListener;
.super Lcom/transsion/camera/app/ui/ToolbarScroll$SupperAnimatorListener;
.source "ToolbarScroll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/ToolbarScroll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatorTitleShowListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/ToolbarScroll;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/ToolbarScroll;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ToolbarScroll$AnimatorTitleShowListener;->this$0:Lcom/transsion/camera/app/ui/ToolbarScroll;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ToolbarScroll$SupperAnimatorListener;-><init>(Lcom/transsion/camera/app/ui/ToolbarScroll$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/ToolbarScroll;Lcom/transsion/camera/app/ui/ToolbarScroll$1;)V
    .locals 0

    .line 394
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ToolbarScroll$AnimatorTitleShowListener;-><init>(Lcom/transsion/camera/app/ui/ToolbarScroll;)V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 397
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ToolbarScroll$AnimatorTitleShowListener;->this$0:Lcom/transsion/camera/app/ui/ToolbarScroll;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ToolbarScroll;->access$1500(Lcom/transsion/camera/app/ui/ToolbarScroll;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll$AnimatorTitleShowListener;->this$0:Lcom/transsion/camera/app/ui/ToolbarScroll;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ToolbarScroll;->access$2300(Lcom/transsion/camera/app/ui/ToolbarScroll;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 398
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ToolbarScroll$AnimatorTitleShowListener;->this$0:Lcom/transsion/camera/app/ui/ToolbarScroll;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ToolbarScroll;->access$1500(Lcom/transsion/camera/app/ui/ToolbarScroll;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 399
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll$AnimatorTitleShowListener;->this$0:Lcom/transsion/camera/app/ui/ToolbarScroll;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ToolbarScroll;->access$1700(Lcom/transsion/camera/app/ui/ToolbarScroll;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
