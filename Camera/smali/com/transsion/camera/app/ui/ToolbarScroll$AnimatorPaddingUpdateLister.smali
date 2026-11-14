.class Lcom/transsion/camera/app/ui/ToolbarScroll$AnimatorPaddingUpdateLister;
.super Ljava/lang/Object;
.source "ToolbarScroll.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/ToolbarScroll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatorPaddingUpdateLister"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/ToolbarScroll;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/ToolbarScroll;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ToolbarScroll$AnimatorPaddingUpdateLister;->this$0:Lcom/transsion/camera/app/ui/ToolbarScroll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/ToolbarScroll;Lcom/transsion/camera/app/ui/ToolbarScroll$1;)V
    .locals 0

    .line 372
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ToolbarScroll$AnimatorPaddingUpdateLister;-><init>(Lcom/transsion/camera/app/ui/ToolbarScroll;)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll$AnimatorPaddingUpdateLister;->this$0:Lcom/transsion/camera/app/ui/ToolbarScroll;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/transsion/camera/app/ui/ToolbarScroll;->access$2002(Lcom/transsion/camera/app/ui/ToolbarScroll;I)I

    .line 376
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ToolbarScroll$AnimatorPaddingUpdateLister;->this$0:Lcom/transsion/camera/app/ui/ToolbarScroll;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ToolbarScroll;->access$1200(Lcom/transsion/camera/app/ui/ToolbarScroll;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/ToolbarScroll;->access$2100(Lcom/transsion/camera/app/ui/ToolbarScroll;I)V

    return-void
.end method
