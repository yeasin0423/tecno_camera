.class Lcom/transsion/camera/app/ui/mode/armode/FileUtils$1;
.super Landroid/os/Handler;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/mode/armode/FileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/mode/armode/FileUtils;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/mode/armode/FileUtils;Landroid/os/Looper;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/armode/FileUtils$1;->this$0:Lcom/transsion/camera/app/ui/mode/armode/FileUtils;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 42
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 43
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/FileUtils$1;->this$0:Lcom/transsion/camera/app/ui/mode/armode/FileUtils;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/armode/FileUtils;->access$000(Lcom/transsion/camera/app/ui/mode/armode/FileUtils;)Lcom/transsion/camera/app/ui/mode/armode/FileUtils$FileOperateCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 44
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/FileUtils$1;->this$0:Lcom/transsion/camera/app/ui/mode/armode/FileUtils;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/armode/FileUtils;->access$000(Lcom/transsion/camera/app/ui/mode/armode/FileUtils;)Lcom/transsion/camera/app/ui/mode/armode/FileUtils$FileOperateCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/armode/FileUtils$1;->this$0:Lcom/transsion/camera/app/ui/mode/armode/FileUtils;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/mode/armode/FileUtils;->access$100(Lcom/transsion/camera/app/ui/mode/armode/FileUtils;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/ui/mode/armode/FileUtils$FileOperateCallback;->onSuccess(Ljava/util/ArrayList;)V

    .line 47
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/FileUtils$1;->this$0:Lcom/transsion/camera/app/ui/mode/armode/FileUtils;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/armode/FileUtils;->access$000(Lcom/transsion/camera/app/ui/mode/armode/FileUtils;)Lcom/transsion/camera/app/ui/mode/armode/FileUtils$FileOperateCallback;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/ui/mode/armode/FileUtils$FileOperateCallback;->onFailed(Ljava/lang/String;)V

    .line 51
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/armode/FileUtils$1;->this$0:Lcom/transsion/camera/app/ui/mode/armode/FileUtils;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/armode/FileUtils;->access$100(Lcom/transsion/camera/app/ui/mode/armode/FileUtils;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
