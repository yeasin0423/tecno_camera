.class Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$SingleClick;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "HorizontalRecycleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SingleClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$SingleClick;->this$0:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$1;)V
    .locals 0

    .line 337
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$SingleClick;-><init>(Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;)V

    return-void
.end method


# virtual methods
.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 340
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$SingleClick;->this$0:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$SingleClick;->this$0:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$SingleClick;->this$0:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {v0, p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 344
    invoke-static {}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->access$600()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onSingleTapConfirmed view is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 348
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$SingleClick;->this$0:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    const/4 v0, -0x1

    if-ne v0, p1, :cond_1

    .line 350
    invoke-static {}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;->access$600()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSingleTapConfirmed position: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 354
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$SingleClick;->this$0:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    const/4 p0, 0x1

    return p0
.end method
