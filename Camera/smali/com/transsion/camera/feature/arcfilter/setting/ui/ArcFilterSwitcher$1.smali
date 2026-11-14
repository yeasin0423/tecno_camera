.class Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher$1;
.super Ljava/lang/Object;
.source "ArcFilterSwitcher.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher$1;->this$0:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 38
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 39
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher$1;->this$0:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->access$000(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;)Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 40
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher$1;->this$0:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->access$100(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;)F

    move-result v0

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/arcfilter/setting/utils/ArcFilterUtils;->isFloatEqual(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher$1;->this$0:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->access$200(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;)Ljava/util/List;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitchHelper;->updateCenterXForViews(FLjava/util/List;)V

    :cond_0
    return-void
.end method
