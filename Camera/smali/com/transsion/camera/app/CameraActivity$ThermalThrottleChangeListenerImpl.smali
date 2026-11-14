.class Lcom/transsion/camera/app/CameraActivity$ThermalThrottleChangeListenerImpl;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThermalThrottleChangeListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/CameraActivity;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/CameraActivity;)V
    .locals 0

    .line 796
    iput-object p1, p0, Lcom/transsion/camera/app/CameraActivity$ThermalThrottleChangeListenerImpl;->this$0:Lcom/transsion/camera/app/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/CameraActivity;Lcom/transsion/camera/app/CameraActivity$1;)V
    .locals 0

    .line 796
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/CameraActivity$ThermalThrottleChangeListenerImpl;-><init>(Lcom/transsion/camera/app/CameraActivity;)V

    return-void
.end method


# virtual methods
.method public onThermalThrottleChanged(I)V
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 801
    iget-object p1, p0, Lcom/transsion/camera/app/CameraActivity$ThermalThrottleChangeListenerImpl;->this$0:Lcom/transsion/camera/app/CameraActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 802
    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity$ThermalThrottleChangeListenerImpl;->this$0:Lcom/transsion/camera/app/CameraActivity;

    invoke-static {p0}, Lcom/transsion/camera/app/CameraActivity;->access$1400(Lcom/transsion/camera/app/CameraActivity;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void

    .line 808
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity$ThermalThrottleChangeListenerImpl;->this$0:Lcom/transsion/camera/app/CameraActivity;

    invoke-static {v0}, Lcom/transsion/camera/app/CameraActivity;->access$1500(Lcom/transsion/camera/app/CameraActivity;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 809
    :try_start_0
    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity$ThermalThrottleChangeListenerImpl;->this$0:Lcom/transsion/camera/app/CameraActivity;

    invoke-static {p0}, Lcom/transsion/camera/app/CameraActivity;->access$1500(Lcom/transsion/camera/app/CameraActivity;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;

    .line 810
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;->onThermalThrottleChanged(I)V

    goto :goto_0

    .line 812
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
