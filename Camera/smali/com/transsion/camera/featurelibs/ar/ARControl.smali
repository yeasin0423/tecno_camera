.class public Lcom/transsion/camera/featurelibs/ar/ARControl;
.super Ljava/lang/Object;
.source "ARControl.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static volatile sChecked:Z

.field private static volatile sInited:I

.field private static final sLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/transsion/camera/featurelibs/ar/ARControl;->sLock:Ljava/lang/Object;

    .line 18
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ARControl"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/ar/ARControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public static fuIsSetup()I
    .locals 1

    .line 63
    sget v0, Lcom/transsion/camera/featurelibs/ar/ARControl;->sInited:I

    return v0
.end method

.method public static initResource(Landroid/content/Context;)V
    .locals 2

    .line 33
    sget v0, Lcom/transsion/camera/featurelibs/ar/ARControl;->sInited:I

    if-eqz v0, :cond_0

    return-void

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/transsion/camera/featurelibs/ar/-$$Lambda$ARControl$ztTn95bAm9Yt3Q88nI-qqiavnE0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/featurelibs/ar/-$$Lambda$ARControl$ztTn95bAm9Yt3Q88nI-qqiavnE0;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 53
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static isAuthChecked()Z
    .locals 3

    .line 21
    sget-boolean v0, Lcom/transsion/camera/featurelibs/ar/ARControl;->sChecked:Z

    if-nez v0, :cond_1

    .line 22
    sget-object v0, Lcom/transsion/camera/featurelibs/ar/ARControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "version = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/faceunity/wrapper/faceunity;->fuGetVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 24
    sget-object v2, Lcom/transsion/camera/featurelibs/ar/Authpack;->AUTH_SECRET_KEY:[B

    invoke-static {v1, v2}, Lcom/faceunity/wrapper/faceunity;->fuSetup([B[B)I

    move-result v1

    const/4 v2, 0x1

    .line 26
    invoke-static {v2}, Lcom/faceunity/wrapper/faceunity;->fuSetLogLevel(I)I

    if-lez v1, :cond_0

    move v0, v2

    .line 27
    :cond_0
    sput-boolean v0, Lcom/transsion/camera/featurelibs/ar/ARControl;->sChecked:Z

    .line 29
    :cond_1
    sget-boolean v0, Lcom/transsion/camera/featurelibs/ar/ARControl;->sChecked:Z

    return v0
.end method

.method static synthetic lambda$initResource$0(Landroid/content/Context;)V
    .locals 8

    .line 37
    sget-object v0, Lcom/transsion/camera/featurelibs/ar/ARControl;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Lcom/transsion/camera/featurelibs/ar/ARControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initResource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/transsion/camera/featurelibs/ar/ARControl;->sInited:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lcom/transsion/camera/featurelibs/ar/ARControl;->isAuthChecked()Z

    move-result v1

    .line 40
    sget v2, Lcom/transsion/camera/featurelibs/ar/ARControl;->sInited:I

    if-eqz v2, :cond_0

    .line 41
    monitor-exit v0

    return-void

    .line 43
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "AI_model/ai_face_processor.bundle"

    const/16 v5, 0x400

    .line 44
    invoke-static {p0, v4, v5}, Lcom/transsion/camera/featurelibs/ar/ARControl;->loadAiModel(Landroid/content/Context;Ljava/lang/String;I)V

    .line 45
    sget-object v4, Lcom/transsion/camera/featurelibs/ar/ARControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fuSetup load AiModel spend "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "tongue.bundle"

    .line 47
    invoke-static {p0, v4}, Lcom/transsion/camera/featurelibs/ar/ARControl;->loadTongueModel(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    sget-object p0, Lcom/transsion/camera/featurelibs/ar/ARControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fuSetup loadTongueModel spend "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 49
    :goto_0
    sput p0, Lcom/transsion/camera/featurelibs/ar/ARControl;->sInited:I

    .line 50
    sget-object p0, Lcom/transsion/camera/featurelibs/ar/ARControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initResource done: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/transsion/camera/featurelibs/ar/ARControl;->sInited:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 51
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static loadAiModel(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 74
    invoke-static {p0, p1}, Lcom/transsion/camera/featurelibs/ar/ARControl;->readFile(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_0

    .line 76
    invoke-static {p0, p2}, Lcom/faceunity/wrapper/faceunity;->fuLoadAIModelFromPackage([BI)I

    :cond_0
    return-void
.end method

.method private static loadTongueModel(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 67
    invoke-static {p0, p1}, Lcom/transsion/camera/featurelibs/ar/ARControl;->readFile(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_0

    .line 69
    invoke-static {p0}, Lcom/faceunity/wrapper/faceunity;->fuLoadTongueModel([B)I

    :cond_0
    return-void
.end method

.method private static readFile(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 1

    const/4 v0, 0x0

    .line 83
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    :catch_0
    :try_start_1
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_0

    .line 93
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p1

    new-array p1, p1, [B

    .line 94
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    .line 95
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p1

    :catch_2
    :cond_0
    return-object v0
.end method
