.class public abstract Lcom/transsion/camera/thermal/PlatformThermal;
.super Ljava/lang/Object;
.source "PlatformThermal.java"

# interfaces
.implements Lcom/transsion/camera/thermal/IPlatformThermal;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTemperStatus(I)I
    .locals 4

    const-string v0, "/proc/driver/cl_cam_status"

    .line 16
    invoke-interface {p0, v0}, Lcom/transsion/camera/thermal/IPlatformThermal;->getTemper(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    const-string p1, "/sys/devices/platform/odm/odm:tran_battery/tran_cam"

    .line 20
    invoke-interface {p0, p1}, Lcom/transsion/camera/thermal/IPlatformThermal;->getTemper(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    const-string p1, "/sys/devices/platform/tran_battery/tran_cam"

    .line 22
    invoke-interface {p0, p1}, Lcom/transsion/camera/thermal/IPlatformThermal;->getTemper(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_1
    move p0, v2

    :goto_0
    if-nez v0, :cond_2

    if-ne p0, v3, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    if-ne v0, v3, :cond_3

    if-ne p0, v3, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method
