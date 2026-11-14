.class Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$OnLayoutChangeListenerImpl;
.super Ljava/lang/Object;
.source "InteractiveUIManager.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnLayoutChangeListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$OnLayoutChangeListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$1;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$OnLayoutChangeListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;)V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 45
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$OnLayoutChangeListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->access$000(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 46
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$OnLayoutChangeListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->access$000(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 47
    iget-object p3, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$OnLayoutChangeListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-static {p3}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->access$100(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;)Landroid/graphics/Rect;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->updatePreviewRect(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    return-void
.end method
