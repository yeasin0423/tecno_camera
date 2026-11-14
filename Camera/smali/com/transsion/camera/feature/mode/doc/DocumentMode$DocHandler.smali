.class Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;
.super Landroid/os/Handler;
.source "DocumentMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/doc/DocumentMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DocHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Landroid/os/Looper;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    .line 383
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 388
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 389
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 391
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/Uri;

    .line 393
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$1100(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$1200(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Landroid/graphics/Bitmap;)Landroid/app/Dialog;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$1002(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Landroid/app/Dialog;)Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 395
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$302(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Z)Z

    .line 396
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$102(Lcom/transsion/camera/feature/mode/doc/DocumentMode;I)I

    .line 397
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$700(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)V

    .line 398
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
