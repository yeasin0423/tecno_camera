.class Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection$2;
.super Ljava/lang/Object;
.source "EyeDetection.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection$2;->this$0:Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .locals 2

    .line 191
    sget-object v0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onPreviewStarted"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection$2;->this$0:Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->access$100(Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;)Lcom/transsion/camera/feature/setting/eyedetection/EyeDetectionParameterConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection$2;->this$0:Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->access$100(Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;)Lcom/transsion/camera/feature/setting/eyedetection/EyeDetectionParameterConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection$2;->this$0:Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->access$300(Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;)Lcom/transsion/camera/adapter/CameraProxy$CameraEyeDetectionCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetectionParameterConfig;->setEyeDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraEyeDetectionCallback;)V

    .line 194
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection$2;->this$0:Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->access$100(Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;)Lcom/transsion/camera/feature/setting/eyedetection/EyeDetectionParameterConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetectionParameterConfig;->sendSettingChangeRequest()V

    .line 196
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection$2;->this$0:Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    const/16 v1, 0x65

    .line 198
    invoke-interface {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_1
    return-void
.end method

.method public onPreviewStopped()V
    .locals 2

    .line 180
    sget-object v0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onPreviewStopped"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection$2;->this$0:Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->access$100(Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;)Lcom/transsion/camera/feature/setting/eyedetection/EyeDetectionParameterConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetectionParameterConfig;->setEyeDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraEyeDetectionCallback;)V

    .line 183
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection$2;->this$0:Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v0, 0x66

    .line 185
    invoke-interface {p0, v1, v0}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method
