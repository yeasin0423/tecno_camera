.class Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$4;
.super Landroid/os/Handler;
.source "SlimBodyRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$4;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 307
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 308
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 319
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$4;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    invoke-static {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->access$1000(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;)V

    goto :goto_0

    .line 316
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$4;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    invoke-static {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->access$900(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;)V

    goto :goto_0

    .line 313
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$4;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    invoke-static {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->access$800(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;)V

    goto :goto_0

    .line 310
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$4;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    invoke-static {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->access$700(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;)V

    :goto_0
    return-void
.end method
