.class Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection$1;
.super Ljava/lang/Object;
.source "EyeDetection.java"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$CameraEyeDetectionCallback;


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

    .line 35
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection$1;->this$0:Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEyeDetectionCallback([I)V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection$1;->this$0:Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection$1;->this$0:Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->access$000(Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;[I)V

    :cond_0
    return-void
.end method

.method public onFaceDetectionCallback([Lcom/transsion/camera/utils/SettingInfo$CameraFace;)V
    .locals 5

    .line 45
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection$1;->this$0:Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 46
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection$1;->this$0:Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->access$100(Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;)Lcom/transsion/camera/feature/setting/eyedetection/EyeDetectionParameterConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetectionParameterConfig;->getPreviewSize()Landroid/util/Size;

    move-result-object v0

    .line 47
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection$1;->this$0:Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 51
    :cond_0
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection$1;->this$0:Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v3, 0x66

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    array-length v1, p1

    if-lez v1, :cond_2

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection$1;->this$0:Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->access$200(Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;[Lcom/transsion/camera/utils/SettingInfo$CameraFace;)Lcom/transsion/camera/utils/SettingInfo$CameraFace;

    move-result-object p0

    .line 54
    invoke-virtual {p0}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 55
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    .line 54
    invoke-static {p0, p1, v1}, Lcom/transsion/camera/utils/CoordinatesUtil;->referenceToViewSpace(Landroid/graphics/Rect;II)Landroid/graphics/Rect;

    move-result-object p0

    .line 56
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    mul-int/2addr p1, p0

    int-to-float p0, p1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    mul-int/2addr p1, v0

    int-to-float p1, p1

    div-float/2addr p0, p1

    const p1, 0x3d4ccccd    # 0.05f

    cmpl-float p0, p0, p1

    if-lez p0, :cond_1

    const/16 v3, 0x65

    .line 57
    :cond_1
    invoke-interface {v2, v4, v3}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    goto :goto_0

    .line 59
    :cond_2
    invoke-interface {v2, v4, v3}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_3
    :goto_0
    return-void
.end method
