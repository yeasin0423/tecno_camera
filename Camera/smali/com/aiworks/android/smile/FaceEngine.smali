.class public Lcom/aiworks/android/smile/FaceEngine;
.super Ljava/lang/Object;
.source "FaceEngine.java"


# static fields
.field private static isInit:Z

.field private static mSmartEngine:Lcom/aiworks/android/smile/FaceEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "ANN"

    .line 22
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "aw_jni_smile"

    .line 23
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native FaceInit(Ljava/lang/String;)I
.end method

.method private native FaceLandmardDetect([BIIIIIFI)[I
.end method

.method private native FaceUninit()V
.end method

.method private getInfo([I)[Lcom/aiworks/android/smile/AWSmileInfo;
    .locals 13

    const/4 p0, 0x0

    .line 58
    aget v0, p1, p0

    if-lez v0, :cond_2

    .line 60
    new-array v1, v0, [Lcom/aiworks/android/smile/AWSmileInfo;

    const/4 v2, 0x5

    const/16 v3, 0xbe

    mul-int/2addr v3, v0

    const/4 v4, 0x1

    add-int/2addr v3, v4

    move v5, p0

    :goto_0
    if-ge v5, v0, :cond_1

    .line 68
    new-instance v6, Lcom/aiworks/android/smile/AWSmileInfo;

    invoke-direct {v6}, Lcom/aiworks/android/smile/AWSmileInfo;-><init>()V

    aput-object v6, v1, v5

    add-int/lit8 v6, v3, 0x0

    mul-int v7, v2, v5

    add-int/2addr v6, v7

    .line 69
    aget v6, p1, v6

    add-int/lit8 v8, v3, 0x1

    add-int/2addr v8, v7

    .line 70
    aget v8, p1, v8

    add-int/lit8 v9, v3, 0x2

    add-int/2addr v9, v7

    .line 71
    aget v9, p1, v9

    add-int/2addr v9, v6

    add-int/lit8 v10, v3, 0x3

    add-int/2addr v10, v7

    .line 72
    aget v10, p1, v10

    add-int/2addr v10, v8

    add-int/lit8 v11, v3, 0x4

    add-int/2addr v11, v7

    .line 73
    aget v7, p1, v11

    .line 75
    aget-object v11, v1, v5

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12, v6, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v12, v11, Lcom/aiworks/android/smile/AWSmileInfo;->faceRect:Landroid/graphics/Rect;

    .line 76
    aget-object v6, v1, v5

    if-lez v7, :cond_0

    move v7, v4

    goto :goto_1

    :cond_0
    move v7, p0

    :goto_1
    iput-boolean v7, v6, Lcom/aiworks/android/smile/AWSmileInfo;->smile:Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance()Lcom/aiworks/android/smile/FaceEngine;
    .locals 2

    .line 32
    sget-object v0, Lcom/aiworks/android/smile/FaceEngine;->mSmartEngine:Lcom/aiworks/android/smile/FaceEngine;

    if-nez v0, :cond_1

    .line 33
    const-class v0, Lcom/aiworks/android/smile/FaceEngine;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/aiworks/android/smile/FaceEngine;->mSmartEngine:Lcom/aiworks/android/smile/FaceEngine;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lcom/aiworks/android/smile/FaceEngine;

    invoke-direct {v1}, Lcom/aiworks/android/smile/FaceEngine;-><init>()V

    sput-object v1, Lcom/aiworks/android/smile/FaceEngine;->mSmartEngine:Lcom/aiworks/android/smile/FaceEngine;

    .line 37
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 39
    :cond_1
    :goto_0
    sget-object v0, Lcom/aiworks/android/smile/FaceEngine;->mSmartEngine:Lcom/aiworks/android/smile/FaceEngine;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized SmileDetect([BIIIII)[Lcom/aiworks/android/smile/AWSmileInfo;
    .locals 11

    move-object v10, p0

    monitor-enter p0

    .line 85
    :try_start_0
    sget-boolean v0, Lcom/aiworks/android/smile/FaceEngine;->isInit:Z

    if-eqz v0, :cond_0

    const v8, 0x3ecccccd    # 0.4f

    const/4 v9, 0x6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    .line 87
    invoke-direct/range {v1 .. v9}, Lcom/aiworks/android/smile/FaceEngine;->FaceLandmardDetect([BIIIIIFI)[I

    move-result-object v0

    .line 89
    invoke-direct {p0, v0}, Lcom/aiworks/android/smile/FaceEngine;->getInfo([I)[Lcom/aiworks/android/smile/AWSmileInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 91
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init(Ljava/lang/String;)I
    .locals 1

    monitor-enter p0

    .line 44
    :try_start_0
    invoke-direct {p0, p1}, Lcom/aiworks/android/smile/FaceEngine;->FaceInit(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    .line 45
    sput-boolean v0, Lcom/aiworks/android/smile/FaceEngine;->isInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized uninit()Z
    .locals 1

    monitor-enter p0

    .line 51
    :try_start_0
    sget-boolean v0, Lcom/aiworks/android/smile/FaceEngine;->isInit:Z

    if-eqz v0, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/aiworks/android/smile/FaceEngine;->FaceUninit()V

    :cond_0
    const/4 v0, 0x0

    .line 53
    sput-boolean v0, Lcom/aiworks/android/smile/FaceEngine;->isInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 54
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
