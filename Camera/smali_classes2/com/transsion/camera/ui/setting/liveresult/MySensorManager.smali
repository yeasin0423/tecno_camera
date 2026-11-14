.class public Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;
.super Ljava/lang/Object;
.source "MySensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/liveresult/MySensorManager$SensorEventCallback;
    }
.end annotation


# instance fields
.field private mAccelerometerValues:[F

.field private mContext:Landroid/content/Context;

.field private mGyroValues:[F

.field private mIsSensorListenerRegistered:Z

.field private final mLock:Ljava/lang/Object;

.field private mSensorEventCallback:Lcom/transsion/camera/ui/setting/liveresult/MySensorManager$SensorEventCallback;

.field private final mSensorEventListener:Landroid/hardware/SensorEventListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 120
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mIsSensorListenerRegistered:Z

    .line 121
    new-instance v0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager$1;-><init>(Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;)Ljava/lang/Object;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$102(Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;[F)[F
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mAccelerometerValues:[F

    return-object p1
.end method

.method static synthetic access$202(Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;[F)[F
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mGyroValues:[F

    return-object p1
.end method

.method static synthetic access$300(Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;)Lcom/transsion/camera/ui/setting/liveresult/MySensorManager$SensorEventCallback;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mSensorEventCallback:Lcom/transsion/camera/ui/setting/liveresult/MySensorManager$SensorEventCallback;

    return-object p0
.end method

.method private format(F)Ljava/lang/String;
    .locals 1

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    .line 117
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p0, v0

    const-string p1, "%+.4f"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public printResult()Ljava/lang/CharSequence;
    .locals 12

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mGyroValues:[F

    .line 81
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mAccelerometerValues:[F

    .line 83
    new-instance v2, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    invoke-direct {v2}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;-><init>()V

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "\tZ: "

    const-string v7, "\tY: "

    const-string v8, "\tX: "

    const-string v9, "   NA "

    if-eqz v1, :cond_0

    const-string v10, " Acce: \t\t\t\t"

    .line 85
    invoke-virtual {v2, v10}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v10

    .line 86
    invoke-virtual {v10, v8}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v10

    aget v11, v1, v5

    invoke-direct {p0, v11}, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->format(F)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v10

    .line 87
    invoke-virtual {v10, v7}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v10

    aget v11, v1, v4

    invoke-direct {p0, v11}, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->format(F)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v10

    .line 88
    invoke-virtual {v10, v6}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v10

    aget v1, v1, v3

    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->format(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, " Accelerometer: "

    .line 90
    invoke-virtual {v2, v1}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v1

    .line 91
    invoke-virtual {v1, v8}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v1

    .line 92
    invoke-virtual {v1, v7}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v1

    .line 93
    invoke-virtual {v1, v6}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    :goto_0
    const-string v1, " Gyro: \t\t\t\t"

    const-string v10, "\n"

    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {v2, v10}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v1

    .line 97
    invoke-virtual {v1, v8}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v1

    aget v8, v0, v5

    invoke-direct {p0, v8}, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->format(F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v1

    .line 98
    invoke-virtual {v1, v7}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v1

    aget v4, v0, v4

    invoke-direct {p0, v4}, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->format(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v1

    .line 99
    invoke-virtual {v1, v6}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v1

    aget v0, v0, v3

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->format(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    goto :goto_1

    .line 101
    :cond_1
    invoke-virtual {v2, v10}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object p0

    .line 102
    invoke-virtual {p0, v8}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object p0

    invoke-virtual {p0, v9}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object p0

    .line 103
    invoke-virtual {p0, v7}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object p0

    invoke-virtual {p0, v9}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object p0

    .line 104
    invoke-virtual {p0, v6}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object p0

    invoke-virtual {p0, v9}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    .line 107
    :goto_1
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p0

    const/high16 v0, -0x10000

    .line 108
    invoke-static {v2, v0, v5, p0}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->setForegroundColor(Landroid/text/SpannableStringBuilder;III)V

    return-object v2
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public unInit()V
    .locals 0

    .line 113
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->unRegisterSensorListeners()V

    return-void
.end method

.method public declared-synchronized unRegisterSensorListeners()V
    .locals 2

    monitor-enter p0

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 51
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mIsSensorListenerRegistered:Z

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    .line 53
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 55
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mIsSensorListenerRegistered:Z

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .line 62
    :try_start_1
    iput-object v1, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mAccelerometerValues:[F

    .line 63
    iput-object v1, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->mGyroValues:[F

    .line 64
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 64
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
