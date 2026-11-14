.class Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer$1;
.super Ljava/lang/Object;
.source "Accelerometer.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer$1;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    .line 65
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 66
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget v0, p1, v0

    .line 67
    aget p1, p1, v1

    .line 68
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40400000    # 3.0f

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 69
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    if-lez v1, :cond_2

    cmpl-float p1, v0, v2

    if-lez p1, :cond_1

    .line 71
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer$1;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;

    sget-object p1, Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer$CLOCKWISE_ANGLE;->Deg0:Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer$CLOCKWISE_ANGLE;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;->access$002(Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer$CLOCKWISE_ANGLE;)Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer$CLOCKWISE_ANGLE;

    goto :goto_0

    .line 73
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer$1;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;

    sget-object p1, Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer$CLOCKWISE_ANGLE;->Deg180:Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer$CLOCKWISE_ANGLE;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;->access$002(Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer$CLOCKWISE_ANGLE;)Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer$CLOCKWISE_ANGLE;

    goto :goto_0

    :cond_2
    cmpl-float p1, p1, v2

    if-lez p1, :cond_3

    .line 77
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer$1;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;

    sget-object p1, Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer$CLOCKWISE_ANGLE;->Deg90:Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer$CLOCKWISE_ANGLE;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;->access$002(Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer$CLOCKWISE_ANGLE;)Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer$CLOCKWISE_ANGLE;

    goto :goto_0

    .line 79
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer$1;->this$0:Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;

    sget-object p1, Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer$CLOCKWISE_ANGLE;->Deg270:Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer$CLOCKWISE_ANGLE;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;->access$002(Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer;Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer$CLOCKWISE_ANGLE;)Lcom/transsion/camera/feature/setting/smiledetection/Accelerometer$CLOCKWISE_ANGLE;

    :cond_4
    :goto_0
    return-void
.end method
