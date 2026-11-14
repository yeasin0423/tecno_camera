.class public Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;
.super Ljava/lang/Object;
.source "Accelerometer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer$CLOCKWISE_ANGLE;
    }
.end annotation


# instance fields
.field private accListener:Landroid/hardware/SensorEventListener;

.field private hasStarted:Z

.field private rotation:Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer$CLOCKWISE_ANGLE;

.field private sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;->hasStarted:Z

    .line 57
    new-instance v0, Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer$1;-><init>(Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;->accListener:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method static synthetic access$002(Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer$CLOCKWISE_ANGLE;)Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer$CLOCKWISE_ANGLE;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;->rotation:Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer$CLOCKWISE_ANGLE;

    return-object p1
.end method


# virtual methods
.method public getDirection()I
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;->rotation:Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer$CLOCKWISE_ANGLE;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer$CLOCKWISE_ANGLE;->getValue()I

    move-result p0

    return p0
.end method

.method public start(Landroid/content/Context;)V
    .locals 2

    .line 34
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;->hasStarted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;->hasStarted:Z

    .line 36
    sget-object v1, Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer$CLOCKWISE_ANGLE;->Deg0:Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer$CLOCKWISE_ANGLE;

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;->rotation:Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer$CLOCKWISE_ANGLE;

    .line 37
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v1, :cond_1

    const-string v1, "sensor"

    .line 39
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;->sensorManager:Landroid/hardware/SensorManager;

    .line 41
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;->sensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;->accListener:Landroid/hardware/SensorEventListener;

    .line 42
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    const/4 v1, 0x3

    .line 41
    invoke-virtual {p1, p0, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method public stop()V
    .locals 2

    .line 47
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;->hasStarted:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;->hasStarted:Z

    .line 49
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;->accListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;->sensorManager:Landroid/hardware/SensorManager;

    return-void
.end method
