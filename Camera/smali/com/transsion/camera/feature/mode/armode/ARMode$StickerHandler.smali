.class Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;
.super Landroid/os/Handler;
.source "ARMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/armode/ARMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StickerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/armode/ARMode;Landroid/os/Looper;)V
    .locals 0

    .line 1351
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    .line 1352
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1357
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1358
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_3

    const/4 p1, 0x4

    if-eq v0, p1, :cond_2

    const/4 p1, 0x5

    if-eq v0, p1, :cond_1

    const/4 p1, 0x6

    if-eq v0, p1, :cond_0

    goto/16 :goto_c

    .line 1485
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$9100(Lcom/transsion/camera/feature/mode/armode/ARMode;)V

    goto/16 :goto_c

    .line 1480
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$5200(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 1481
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$5200(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->stopRecording()V

    goto/16 :goto_c

    .line 1477
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$9000(Lcom/transsion/camera/feature/mode/armode/ARMode;)V

    goto/16 :goto_c

    .line 1472
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$8900(Lcom/transsion/camera/feature/mode/armode/ARMode;)V

    goto/16 :goto_c

    .line 1360
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$7800(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v2, "start load"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1364
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;

    .line 1366
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$600(Lcom/transsion/camera/feature/mode/armode/ARMode;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_8

    .line 1367
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    iget-object v4, p1, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;->bundle:[Ljava/lang/String;

    array-length v4, v4

    if-ne v4, v1, :cond_5

    move v1, v3

    goto :goto_0

    :cond_5
    move v1, v2

    :goto_0
    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$702(Lcom/transsion/camera/feature/mode/armode/ARMode;Z)Z

    .line 1368
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$7900(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mGenderIdentification: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$700(Lcom/transsion/camera/feature/mode/armode/ARMode;)Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1370
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$8000(Lcom/transsion/camera/feature/mode/armode/ARMode;)Z

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$700(Lcom/transsion/camera/feature/mode/armode/ARMode;)Z

    move-result v1

    if-eq v0, v1, :cond_8

    .line 1371
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v0, v3}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$8102(Lcom/transsion/camera/feature/mode/armode/ARMode;Z)Z

    .line 1373
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$700(Lcom/transsion/camera/feature/mode/armode/ARMode;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$8002(Lcom/transsion/camera/feature/mode/armode/ARMode;Z)Z

    .line 1375
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$700(Lcom/transsion/camera/feature/mode/armode/ARMode;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1376
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$2200(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 1377
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$2300(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 1378
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$2400(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 1379
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$2500(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 1381
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$2000(Lcom/transsion/camera/feature/mode/armode/ARMode;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1382
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$2100(Lcom/transsion/camera/feature/mode/armode/ARMode;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1383
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$2100(Lcom/transsion/camera/feature/mode/armode/ARMode;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1385
    :cond_6
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_7
    :goto_1
    move v0, v3

    goto :goto_2

    :cond_8
    move v0, v2

    :goto_2
    if-eqz v0, :cond_9

    .line 1390
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$700(Lcom/transsion/camera/feature/mode/armode/ARMode;)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v3

    goto :goto_3

    :cond_9
    move v0, v2

    :goto_3
    if-nez v0, :cond_a

    .line 1392
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$800(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1393
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$800(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$4602(Lcom/transsion/camera/feature/mode/armode/ARMode;[I)[I

    move v0, v2

    .line 1394
    :goto_4
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$800(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_a

    .line 1395
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$4600(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object v1

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$800(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object v4

    aget v4, v4, v0

    aput v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1399
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    iget-object v1, p1, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;->bundle:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [I

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$802(Lcom/transsion/camera/feature/mode/armode/ARMode;[I)[I

    .line 1401
    :goto_5
    iget-object v0, p1, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;->bundle:[Ljava/lang/String;

    array-length v0, v0

    if-ge v2, v0, :cond_13

    .line 1402
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$600(Lcom/transsion/camera/feature/mode/armode/ARMode;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$700(Lcom/transsion/camera/feature/mode/armode/ARMode;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1403
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mStickerCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "feizhou_nan.bundle"

    .line 1404
    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "feizhou_nv.bundle"

    .line 1405
    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_6

    .line 1408
    :cond_c
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    iget-object v4, v4, Lcom/transsion/camera/feature/mode/armode/ARMode;->mStickerCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 1413
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mStickerCache:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;->bundle:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_11

    const/4 v0, 0x0

    .line 1417
    :try_start_1
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$8200(Lcom/transsion/camera/feature/mode/armode/ARMode;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;->filePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;->bundle:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 1418
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    .line 1419
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 1420
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$8300(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v4

    const-string v5, "end io"

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1421
    invoke-static {v1}, Lcom/faceunity/wrapper/faceunity;->fuCreateItemFromPackage([B)I

    move-result v1

    .line 1422
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$800(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object v4

    aput v1, v4, v2

    .line 1423
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    iget v5, p1, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;->maxFace:I

    invoke-static {v4, v5}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$4102(Lcom/transsion/camera/feature/mode/armode/ARMode;I)I

    .line 1424
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    iget-object v4, v4, Lcom/transsion/camera/feature/mode/armode/ARMode;->mStickerCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_e
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "feizhou_nan.bundle"

    .line 1425
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e

    const-string v6, "feizhou_nv.bundle"

    .line 1426
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_f

    goto :goto_7

    .line 1429
    :cond_f
    iget-object v6, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    iget-object v6, v6, Lcom/transsion/camera/feature/mode/armode/ARMode;->mStickerCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 1432
    :cond_10
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    iget-object v4, v4, Lcom/transsion/camera/feature/mode/armode/ARMode;->mStickerCache:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v5, p1, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;->bundle:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1433
    invoke-static {}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$300()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "effectItem create = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n end createItem"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1437
    invoke-static {}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$300()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create effectItem mEffectItem = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v5}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$800(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", mOldEffectItem = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    .line 1438
    invoke-static {v5}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$4600(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1437
    invoke-static {v1, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1439
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$800(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v5}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$4600(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v4

    goto :goto_8

    :catchall_1
    move-exception p1

    goto :goto_9

    :catch_0
    move-exception v1

    .line 1435
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1437
    invoke-static {}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$300()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create effectItem mEffectItem = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v5}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$800(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", mOldEffectItem = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    .line 1438
    invoke-static {v5}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$4600(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1437
    invoke-static {v1, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1439
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$800(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v5}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$4600(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v4

    :goto_8
    xor-int/2addr v4, v3

    invoke-static {v1, v4}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$4502(Lcom/transsion/camera/feature/mode/armode/ARMode;Z)Z

    .line 1440
    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_a

    .line 1437
    :goto_9
    invoke-static {}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$300()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create effectItem mEffectItem = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$800(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mOldEffectItem = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    .line 1438
    invoke-static {v4}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$4600(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1437
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1439
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$800(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object v2

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$4600(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object p0

    invoke-static {v2, p0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    xor-int/2addr p0, v3

    invoke-static {v1, p0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$4502(Lcom/transsion/camera/feature/mode/armode/ARMode;Z)Z

    .line 1440
    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 1441
    throw p1

    .line 1443
    :cond_11
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$800(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v1, v2

    .line 1444
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$600(Lcom/transsion/camera/feature/mode/armode/ARMode;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$700(Lcom/transsion/camera/feature/mode/armode/ARMode;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1445
    invoke-static {}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$300()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gender exist effectItem mEffectItem = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$800(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mOldEffectItem = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    .line 1446
    invoke-static {v4}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$4600(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1445
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1447
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v0, v3}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$4502(Lcom/transsion/camera/feature/mode/armode/ARMode;Z)Z

    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    .line 1450
    :cond_12
    invoke-static {}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$300()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "normal exist effectItem mEffectItem = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$800(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mOldEffectItem = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    .line 1451
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$4600(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1450
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1457
    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$8402(Lcom/transsion/camera/feature/mode/armode/ARMode;Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;)Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;

    .line 1458
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$800(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$4200(Lcom/transsion/camera/feature/mode/armode/ARMode;[I)V

    .line 1459
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p1, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;->filePath:Ljava/lang/String;

    .line 1460
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v4, "sticker"

    .line 1459
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1461
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$5100(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object v0

    const/16 v1, 0x65

    invoke-interface {v0, v3, v1}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->loadGLResource(ZI)V

    .line 1462
    iget v0, p1, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;->tips:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    .line 1463
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$8500(Lcom/transsion/camera/feature/mode/armode/ARMode;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget p1, p1, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;->tips:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$8600(Lcom/transsion/camera/feature/mode/armode/ARMode;Ljava/lang/String;)V

    goto :goto_b

    .line 1465
    :cond_14
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$8700(Lcom/transsion/camera/feature/mode/armode/ARMode;)V

    .line 1467
    :goto_b
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$8800(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "end load"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_15
    :goto_c
    return-void
.end method
