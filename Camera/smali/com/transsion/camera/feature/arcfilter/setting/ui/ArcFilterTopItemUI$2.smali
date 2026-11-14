.class Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI$2;
.super Landroid/os/Handler;
.source "ArcFilterTopItemUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;
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

    .line 44
    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI$2;->this$0:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 47
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI$2;->this$0:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;->doOnStatusChanged(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
