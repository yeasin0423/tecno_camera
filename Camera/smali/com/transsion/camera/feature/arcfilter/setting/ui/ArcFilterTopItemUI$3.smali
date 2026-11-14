.class Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI$3;
.super Ljava/lang/Object;
.source "ArcFilterTopItemUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;->setupEntryView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI$3;->this$0:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI$3;->this$0:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;->access$100(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI$3;->this$0:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;->access$100(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 119
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI$3;->this$0:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;->access$200(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;)Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 120
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI$3;->this$0:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;->access$200(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;)Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;->onItemSelected()V

    :cond_1
    return-void
.end method
