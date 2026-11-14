.class Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;
.super Ljava/lang/Object;
.source "FaceDetection.java"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaceDetected([Lcom/transsion/camera/utils/SettingInfo$CameraFace;[I)V
    .locals 12

    .line 70
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    .line 73
    array-length v4, p1

    if-lez v4, :cond_2

    .line 75
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v4

    array-length v5, p1

    invoke-virtual {v4, v5}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->updateFaceCount(I)V

    .line 76
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v4}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$000(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 77
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v4}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$000(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->getSensorRect()Landroid/graphics/Rect;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 79
    iget-object v5, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v5, p1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$100(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;[Lcom/transsion/camera/utils/SettingInfo$CameraFace;)Landroid/graphics/Rect;

    move-result-object v5

    .line 80
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v6, v5

    int-to-float v5, v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    mul-int/2addr v6, v4

    int-to-float v4, v6

    div-float/2addr v5, v4

    const v4, 0x3bb43958    # 0.0055f

    cmpl-float v4, v5, v4

    if-lez v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v1

    .line 82
    :goto_0
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->updateMaxFaceRatio(F)V

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    move v5, v3

    goto :goto_2

    :cond_2
    move v4, v1

    move v5, v2

    .line 86
    :goto_2
    iget-object v6, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v6}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$200(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)I

    move-result v6

    if-eq v4, v6, :cond_4

    const-string v6, "key_has_valid_face"

    if-ne v4, v3, :cond_3

    .line 88
    iget-object v7, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v7}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$300(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v7

    const-string v8, "face_valid"

    invoke-virtual {v7, v6, v8}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 90
    :cond_3
    iget-object v7, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v7}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$300(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v7

    const-string v8, "no_valid_face"

    invoke-virtual {v7, v6, v8}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    :goto_3
    iget-object v6, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v6, v4}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$202(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;I)I

    .line 95
    :cond_4
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v4}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$400(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v4

    const-string v6, "key_face_rect"

    invoke-virtual {v4, v6, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v0, :cond_10

    .line 98
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v4}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$500(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_5

    .line 99
    invoke-interface {v0, v6, v2}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    goto/16 :goto_8

    .line 100
    :cond_5
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v7, "on"

    invoke-static {v7, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v8, "1"

    const v9, 0x3d4ccccd    # 0.05f

    const-string v10, "key_eye_detection"

    if-eqz v4, :cond_a

    .line 101
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-virtual {v1, v10}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 102
    invoke-interface {v0, p1, v2}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    goto :goto_4

    .line 104
    :cond_6
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v1, p1, v0, v9}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$600(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;[Lcom/transsion/camera/utils/SettingInfo$CameraFace;Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;F)V

    .line 106
    :goto_4
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->isFaceBeautyMode()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$700(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    if-eqz v5, :cond_9

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$800(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_5

    .line 109
    :cond_7
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->isFaceInfoDetected()Z

    move-result p1

    if-nez p1, :cond_8

    .line 110
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->needFaceInfoDetection()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$900(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 111
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$1000(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 112
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$1000(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 113
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p1, v3}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$902(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;Z)Z

    .line 116
    :cond_8
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$900(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$000(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->getFaceDectionMode()I

    move-result p1

    if-ne p1, v3, :cond_10

    .line 117
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p0, p2}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$1100(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;[I)V

    goto/16 :goto_8

    :cond_9
    :goto_5
    return-void

    .line 119
    :cond_a
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v11, "gender_indentification"

    invoke-static {v11, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 120
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-virtual {v4, v10}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 121
    invoke-interface {v0, p1, v2}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    goto :goto_6

    .line 123
    :cond_b
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v2, p1, v0, v9}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$600(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;[Lcom/transsion/camera/utils/SettingInfo$CameraFace;Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;F)V

    .line 125
    :goto_6
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$000(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->getFaceDectionMode()I

    move-result p1

    if-ne p1, v1, :cond_10

    if-eqz p2, :cond_10

    .line 128
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$1200(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    const-string v0, "key_face_detection"

    invoke-virtual {p1, v0, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->isFaceBeautyMode()Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$1300(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    if-eqz v5, :cond_e

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$800(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_7

    .line 132
    :cond_c
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->isFaceInfoDetected()Z

    move-result p1

    if-nez p1, :cond_d

    .line 133
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->needFaceInfoDetection()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$900(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 134
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p1, v3}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$902(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;Z)Z

    .line 137
    :cond_d
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$900(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$000(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->getFaceDectionMode()I

    move-result p1

    if-ne p1, v1, :cond_10

    .line 138
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p0, p2}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$1100(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;[I)V

    goto :goto_8

    :cond_e
    :goto_7
    return-void

    .line 142
    :cond_f
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    const-string p1, "off"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_10

    .line 143
    invoke-interface {v0, v6, v2}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_10
    :goto_8
    return-void
.end method
