.class public final Lcom/transsion/camera/app/common/provider/ProcessMediaManager;
.super Ljava/lang/Object;
.source "ProcessMediaManager.java"


# static fields
.field private static volatile instance:Lcom/transsion/camera/app/common/provider/ProcessMediaManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mProcessMediaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/provider/ProcessMediaItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mProcessMediaList:Ljava/util/List;

    .line 36
    iput-object p1, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static createInstance(Landroid/content/Context;)V
    .locals 1

    .line 26
    sget-object v0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->instance:Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->instance:Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/transsion/camera/app/common/provider/ProcessMediaManager;
    .locals 1

    .line 32
    sget-object v0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->instance:Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    return-object v0
.end method

.method private notifyProcessingUri(J)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/transsion/camera/app/common/provider/PhotoOemApi;->getQueryProcessingUri(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object p1

    .line 83
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized add(Lcom/transsion/camera/app/common/provider/ProcessMediaItem;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "ProcessingManager"

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->getMediaStoreId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mProcessMediaList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->getMediaStoreId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->notifyProcessingUri(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getFirstAndPreRemove()Lcom/transsion/camera/app/common/provider/ProcessMediaItem;
    .locals 3

    monitor-enter p0

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mProcessMediaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mProcessMediaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;

    .line 66
    iget-boolean v2, v1, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mIsPreProcessed:Z

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, v1, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mIsPreProcessed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    .line 72
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProcessingMedia()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/provider/ProcessMediaItem;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 43
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mProcessMediaList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Lcom/transsion/camera/app/common/provider/ProcessMediaItem;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "ProcessingManager"

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->getMediaStoreId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mProcessMediaList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 78
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->getMediaStoreId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->notifyProcessingUri(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
