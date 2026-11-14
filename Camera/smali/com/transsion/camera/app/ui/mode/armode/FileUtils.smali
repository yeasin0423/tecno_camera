.class public Lcom/transsion/camera/app/ui/mode/armode/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/mode/armode/FileUtils$FileOperateCallback;
    }
.end annotation


# instance fields
.field private callback:Lcom/transsion/camera/app/ui/mode/armode/FileUtils$FileOperateCallback;

.field private context:Landroid/content/Context;

.field private errorStr:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private volatile isSuccess:Z

.field private mArrayUri:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field mDateString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 32
    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/FileUtils;->mDateString:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/FileUtils;->mArrayUri:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Lcom/transsion/camera/app/ui/mode/armode/FileUtils$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/mode/armode/FileUtils$1;-><init>(Lcom/transsion/camera/app/ui/mode/armode/FileUtils;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/FileUtils;->handler:Landroid/os/Handler;

    .line 36
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/armode/FileUtils;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/ui/mode/armode/FileUtils;)Lcom/transsion/camera/app/ui/mode/armode/FileUtils$FileOperateCallback;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/armode/FileUtils;->callback:Lcom/transsion/camera/app/ui/mode/armode/FileUtils$FileOperateCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/mode/armode/FileUtils;)Ljava/util/ArrayList;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/armode/FileUtils;->mArrayUri:Ljava/util/ArrayList;

    return-object p0
.end method

.method private copy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 115
    iget-object p2, p0, Lcom/transsion/camera/app/ui/mode/armode/FileUtils;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 116
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 119
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 120
    invoke-virtual {p2, v1, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V

    .line 123
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 124
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    .line 125
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/armode/FileUtils;->updatePhotoMedia(Ljava/io/File;)V

    return-void
.end method

.method private copyAssetsToDst(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    .line 77
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 78
    array-length v2, v1

    if-lez v2, :cond_2

    .line 79
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 81
    :cond_0
    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    const-string v5, ""

    .line 82
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 83
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/transsion/camera/app/ui/mode/armode/FileUtils;->mDateString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v5, v4}, Lcom/transsion/camera/app/ui/mode/armode/FileUtils;->copy(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 85
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/mode/armode/FileUtils;->mDateString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v4, v5}, Lcom/transsion/camera/app/ui/mode/armode/FileUtils;->copyAssetsToDst(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 89
    :cond_2
    invoke-direct {p0, p2, p3}, Lcom/transsion/camera/app/ui/mode/armode/FileUtils;->copy(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 p1, 0x1

    .line 91
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/armode/FileUtils;->isSuccess:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 93
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/armode/FileUtils;->errorStr:Ljava/lang/String;

    .line 95
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/armode/FileUtils;->isSuccess:Z

    :goto_2
    return-void
.end method

.method private synthetic lambda$copyAssetsToSD$0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 58
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 59
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "yyyyMMdd_HHmmss_"

    invoke-direct {v3, v5, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 60
    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/app/ui/mode/armode/FileUtils;->mDateString:Ljava/lang/String;

    .line 61
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/armode/FileUtils;->context:Landroid/content/Context;

    invoke-direct {p0, v2, p1, p2}, Lcom/transsion/camera/app/ui/mode/armode/FileUtils;->copyAssetsToDst(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    .line 63
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/armode/FileUtils;->isSuccess:Z

    if-eqz v0, :cond_0

    .line 64
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/armode/FileUtils;->handler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 66
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/armode/FileUtils;->handler:Landroid/os/Handler;

    const/4 p2, 0x0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/armode/FileUtils;->errorStr:Ljava/lang/String;

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method private updatePhotoMedia(Ljava/io/File;)V
    .locals 3

    .line 106
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 107
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "_data"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "datetaken"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "mime_type"

    const-string v1, "image/gif"

    .line 109
    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/armode/FileUtils;->mArrayUri:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/armode/FileUtils;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public copyAssetsToSD(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/ui/mode/armode/FileUtils;
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/transsion/camera/app/ui/mode/armode/-$$Lambda$FileUtils$WNwUXTvgNv3PdISfmE3q6E27weI;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/armode/-$$Lambda$FileUtils$WNwUXTvgNv3PdISfmE3q6E27weI;-><init>(Lcom/transsion/camera/app/ui/mode/armode/FileUtils;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 67
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-object p0
.end method

.method public synthetic lambda$copyAssetsToSD$0$FileUtils(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/armode/FileUtils;->lambda$copyAssetsToSD$0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFileOperateCallback(Lcom/transsion/camera/app/ui/mode/armode/FileUtils$FileOperateCallback;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/armode/FileUtils;->callback:Lcom/transsion/camera/app/ui/mode/armode/FileUtils$FileOperateCallback;

    return-void
.end method
