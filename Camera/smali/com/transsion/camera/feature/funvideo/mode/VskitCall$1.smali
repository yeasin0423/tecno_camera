.class Lcom/transsion/camera/feature/funvideo/mode/VskitCall$1;
.super Ljava/lang/Object;
.source "VskitCall.java"

# interfaces
.implements Lcom/transnet/filter/listener/OnHandleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/funvideo/mode/VskitCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/funvideo/mode/VskitCall;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/funvideo/mode/VskitCall;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/VskitCall$1;->this$0:Lcom/transsion/camera/feature/funvideo/mode/VskitCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin()V
    .locals 0

    return-void
.end method

.method public onEnd(ILjava/lang/String;)V
    .locals 4

    .line 57
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/VskitCall$1;->this$0:Lcom/transsion/camera/feature/funvideo/mode/VskitCall;

    invoke-static {p1}, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->access$000(Lcom/transsion/camera/feature/funvideo/mode/VskitCall;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 58
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/VskitCall$1;->this$0:Lcom/transsion/camera/feature/funvideo/mode/VskitCall;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->access$002(Lcom/transsion/camera/feature/funvideo/mode/VskitCall;Z)Z

    .line 59
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/VskitCall$1;->this$0:Lcom/transsion/camera/feature/funvideo/mode/VskitCall;

    invoke-static {p1}, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->access$100(Lcom/transsion/camera/feature/funvideo/mode/VskitCall;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->access$200(Lcom/transsion/camera/feature/funvideo/mode/VskitCall;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 63
    :cond_0
    iget-object p2, p0, Lcom/transsion/camera/feature/funvideo/mode/VskitCall$1;->this$0:Lcom/transsion/camera/feature/funvideo/mode/VskitCall;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".tmp.Second.mp4"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->access$302(Lcom/transsion/camera/feature/funvideo/mode/VskitCall;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/VskitCall$1;->this$0:Lcom/transsion/camera/feature/funvideo/mode/VskitCall;

    invoke-static {p1}, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->access$100(Lcom/transsion/camera/feature/funvideo/mode/VskitCall;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/feature/funvideo/mode/VskitCall$1;->this$0:Lcom/transsion/camera/feature/funvideo/mode/VskitCall;

    invoke-static {p2}, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->access$400(Lcom/transsion/camera/feature/funvideo/mode/VskitCall;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/mode/VskitCall$1;->this$0:Lcom/transsion/camera/feature/funvideo/mode/VskitCall;

    invoke-static {v1}, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->access$300(Lcom/transsion/camera/feature/funvideo/mode/VskitCall;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v0, v1, p0}, Lcom/transnet/filter/TransCoder;->addBGMusic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lcom/transnet/filter/listener/OnHandleListener;)V

    return-void

    .line 67
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/VskitCall$1;->this$0:Lcom/transsion/camera/feature/funvideo/mode/VskitCall;

    invoke-static {p1}, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->access$500(Lcom/transsion/camera/feature/funvideo/mode/VskitCall;)Lcom/transsion/camera/feature/funvideo/mode/VskitCall$ResultCallback;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 68
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "time = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p2, p0, Lcom/transsion/camera/feature/funvideo/mode/VskitCall$1;->this$0:Lcom/transsion/camera/feature/funvideo/mode/VskitCall;

    invoke-static {p2}, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->access$600(Lcom/transsion/camera/feature/funvideo/mode/VskitCall;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "tsj_time"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/VskitCall$1;->this$0:Lcom/transsion/camera/feature/funvideo/mode/VskitCall;

    invoke-static {p1}, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->access$500(Lcom/transsion/camera/feature/funvideo/mode/VskitCall;)Lcom/transsion/camera/feature/funvideo/mode/VskitCall$ResultCallback;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/feature/funvideo/mode/VskitCall$1;->this$0:Lcom/transsion/camera/feature/funvideo/mode/VskitCall;

    invoke-static {p2}, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->access$300(Lcom/transsion/camera/feature/funvideo/mode/VskitCall;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/transsion/camera/feature/funvideo/mode/VskitCall$1;->this$0:Lcom/transsion/camera/feature/funvideo/mode/VskitCall;

    invoke-static {p2}, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->access$300(Lcom/transsion/camera/feature/funvideo/mode/VskitCall;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/transsion/camera/feature/funvideo/mode/VskitCall$1;->this$0:Lcom/transsion/camera/feature/funvideo/mode/VskitCall;

    invoke-static {p2}, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->access$100(Lcom/transsion/camera/feature/funvideo/mode/VskitCall;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-interface {p1, p2}, Lcom/transsion/camera/feature/funvideo/mode/VskitCall$ResultCallback;->onResult(Ljava/lang/String;)V

    .line 71
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/VskitCall$1;->this$0:Lcom/transsion/camera/feature/funvideo/mode/VskitCall;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->access$702(Lcom/transsion/camera/feature/funvideo/mode/VskitCall;F)F

    .line 72
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/VskitCall$1;->this$0:Lcom/transsion/camera/feature/funvideo/mode/VskitCall;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->access$302(Lcom/transsion/camera/feature/funvideo/mode/VskitCall;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->access$102(Lcom/transsion/camera/feature/funvideo/mode/VskitCall;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public onProgress(II)V
    .locals 0

    return-void
.end method
