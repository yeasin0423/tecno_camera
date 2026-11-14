.class Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark$1;
.super Ljava/lang/Object;
.source "AutoWaterMark.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark$1;->this$1:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureStart()V
    .locals 0

    return-void
.end method

.method public takePictureEnd()V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark$1;->this$1:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->access$100(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;)Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark$1;->this$1:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->access$100(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;)Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;->getWaterMark()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark$1;->this$1:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->access$200(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;)Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->access$102(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;)Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark$1;->this$1:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;

    iget-object v0, v0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->this$0:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->access$300(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark$1;->this$1:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->this$0:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public takePictureStart()V
    .locals 0

    return-void
.end method
