.class Lcom/transsion/camera/app/CameraActivity$BatteryStatusListener;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/transsion/camera/app/common/battery/IBatteryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatteryStatusListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/CameraActivity;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/CameraActivity;)V
    .locals 0

    .line 1196
    iput-object p1, p0, Lcom/transsion/camera/app/CameraActivity$BatteryStatusListener;->this$0:Lcom/transsion/camera/app/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/CameraActivity;Lcom/transsion/camera/app/CameraActivity$1;)V
    .locals 0

    .line 1196
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/CameraActivity$BatteryStatusListener;-><init>(Lcom/transsion/camera/app/CameraActivity;)V

    return-void
.end method


# virtual methods
.method public onBatteryStatusChanged(ZII)V
    .locals 0

    .line 1199
    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity$BatteryStatusListener;->this$0:Lcom/transsion/camera/app/CameraActivity;

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/camera/app/CameraActivity;->access$2900(Lcom/transsion/camera/app/CameraActivity;ZII)V

    return-void
.end method
