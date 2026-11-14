.class Lcom/transsion/camera/app/common/storage/MediaSaver$SaveTask;
.super Landroid/os/AsyncTask;
.source "MediaSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/storage/MediaSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/storage/MediaSaver;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/common/storage/MediaSaver;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/MediaSaver$SaveTask;->this$0:Lcom/transsion/camera/app/common/storage/MediaSaver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/common/storage/MediaSaver;Lcom/transsion/camera/app/common/storage/MediaSaver$1;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/storage/MediaSaver$SaveTask;-><init>(Lcom/transsion/camera/app/common/storage/MediaSaver;)V

    return-void
.end method

.method private hasRequestInQueue()Z
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/MediaSaver$SaveTask;->this$0:Lcom/transsion/camera/app/common/storage/MediaSaver;

    invoke-static {v0}, Lcom/transsion/camera/app/common/storage/MediaSaver;->access$100(Lcom/transsion/camera/app/common/storage/MediaSaver;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/MediaSaver$SaveTask;->this$0:Lcom/transsion/camera/app/common/storage/MediaSaver;

    invoke-static {v1}, Lcom/transsion/camera/app/common/storage/MediaSaver;->access$100(Lcom/transsion/camera/app/common/storage/MediaSaver;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/MediaSaver$SaveTask;->this$0:Lcom/transsion/camera/app/common/storage/MediaSaver;

    invoke-static {p0}, Lcom/transsion/camera/app/common/storage/MediaSaver;->access$210(Lcom/transsion/camera/app/common/storage/MediaSaver;)I

    const/4 p0, 0x0

    .line 49
    monitor-exit v0

    return p0

    :cond_0
    const/4 p0, 0x1

    .line 51
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 53
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/storage/MediaSaver$SaveTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .line 58
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/MediaSaver$SaveTask;->this$0:Lcom/transsion/camera/app/common/storage/MediaSaver;

    iget-object p1, p1, Lcom/transsion/camera/app/common/storage/MediaSaver;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " [doInBackground] begin queue size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/MediaSaver$SaveTask;->this$0:Lcom/transsion/camera/app/common/storage/MediaSaver;

    invoke-static {v1}, Lcom/transsion/camera/app/common/storage/MediaSaver;->access$100(Lcom/transsion/camera/app/common/storage/MediaSaver;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 59
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/MediaSaver$SaveTask;->hasRequestInQueue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 61
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/MediaSaver$SaveTask;->this$0:Lcom/transsion/camera/app/common/storage/MediaSaver;

    invoke-static {p1}, Lcom/transsion/camera/app/common/storage/MediaSaver;->access$100(Lcom/transsion/camera/app/common/storage/MediaSaver;)Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/MediaSaver$SaveTask;->this$0:Lcom/transsion/camera/app/common/storage/MediaSaver;

    invoke-static {v0}, Lcom/transsion/camera/app/common/storage/MediaSaver;->access$100(Lcom/transsion/camera/app/common/storage/MediaSaver;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/MediaSaver$SaveTask;->this$0:Lcom/transsion/camera/app/common/storage/MediaSaver;

    invoke-static {v0}, Lcom/transsion/camera/app/common/storage/MediaSaver;->access$100(Lcom/transsion/camera/app/common/storage/MediaSaver;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/storage/SaveRequest;

    .line 64
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/MediaSaver$SaveTask;->this$0:Lcom/transsion/camera/app/common/storage/MediaSaver;

    invoke-static {v2}, Lcom/transsion/camera/app/common/storage/MediaSaver;->access$100(Lcom/transsion/camera/app/common/storage/MediaSaver;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 70
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/SaveRequest;->process()V

    .line 72
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/MediaSaver$SaveTask;->this$0:Lcom/transsion/camera/app/common/storage/MediaSaver;

    iget-object p1, p1, Lcom/transsion/camera/app/common/storage/MediaSaver;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [doInBackground] update: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 73
    iget-object p1, v0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mMediaSaverListener:Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;

    if-eqz p1, :cond_0

    .line 74
    iget-object v0, v0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;->onFileSaved(Landroid/net/Uri;)V

    goto :goto_0

    .line 68
    :cond_1
    :try_start_1
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 70
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 78
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/MediaSaver$SaveTask;->this$0:Lcom/transsion/camera/app/common/storage/MediaSaver;

    iget-object p1, p1, Lcom/transsion/camera/app/common/storage/MediaSaver;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " [doInBackground] end queue size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/MediaSaver$SaveTask;->this$0:Lcom/transsion/camera/app/common/storage/MediaSaver;

    invoke-static {p0}, Lcom/transsion/camera/app/common/storage/MediaSaver;->access$100(Lcom/transsion/camera/app/common/storage/MediaSaver;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
