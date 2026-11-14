.class public Lcom/transsion/camera/adapter/CameraAgentFactory;
.super Ljava/lang/Object;
.source "CameraAgentFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/adapter/CameraAgentFactory$CameraApi;
    }
.end annotation


# static fields
.field private static sCameraAgent:Lcom/transsion/camera/adapter/CameraAgent;

.field private static sCameraAgentClientCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CameraAgentFactory"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized createCameraAgent(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/transsion/camera/adapter/CameraAgentFactory;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/transsion/camera/adapter/CameraAgentFactory$CameraApi;->API_2:Lcom/transsion/camera/adapter/CameraAgentFactory$CameraApi;

    invoke-static {p0, v1}, Lcom/transsion/camera/adapter/CameraAgentFactory;->createCameraAgent(Landroid/content/Context;Lcom/transsion/camera/adapter/CameraAgentFactory$CameraApi;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized createCameraAgent(Landroid/content/Context;Lcom/transsion/camera/adapter/CameraAgentFactory$CameraApi;)V
    .locals 3

    const-class v0, Lcom/transsion/camera/adapter/CameraAgentFactory;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/transsion/camera/adapter/CameraAgentFactory;->sCameraAgent:Lcom/transsion/camera/adapter/CameraAgent;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 27
    sget-object v1, Lcom/transsion/camera/adapter/CameraAgentFactory$CameraApi;->API_1:Lcom/transsion/camera/adapter/CameraAgentFactory$CameraApi;

    if-ne p1, v1, :cond_0

    .line 28
    new-instance p0, Lcom/transsion/camera/adapter/CameraAgentImpl;

    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraAgentImpl;-><init>()V

    sput-object p0, Lcom/transsion/camera/adapter/CameraAgentFactory;->sCameraAgent:Lcom/transsion/camera/adapter/CameraAgent;

    goto :goto_0

    .line 30
    :cond_0
    new-instance p1, Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-direct {p1, p0}, Lcom/transsion/camera/adapter/CameraAgent2Impl;-><init>(Landroid/content/Context;)V

    sput-object p1, Lcom/transsion/camera/adapter/CameraAgentFactory;->sCameraAgent:Lcom/transsion/camera/adapter/CameraAgent;

    .line 32
    :goto_0
    sput v2, Lcom/transsion/camera/adapter/CameraAgentFactory;->sCameraAgentClientCount:I

    goto :goto_1

    .line 34
    :cond_1
    sget p0, Lcom/transsion/camera/adapter/CameraAgentFactory;->sCameraAgentClientCount:I

    add-int/2addr p0, v2

    sput p0, Lcom/transsion/camera/adapter/CameraAgentFactory;->sCameraAgentClientCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;
    .locals 2

    const-class v0, Lcom/transsion/camera/adapter/CameraAgentFactory;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Lcom/transsion/camera/adapter/CameraAgentFactory;->sCameraAgent:Lcom/transsion/camera/adapter/CameraAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
