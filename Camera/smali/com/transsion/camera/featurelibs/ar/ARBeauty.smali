.class public Lcom/transsion/camera/featurelibs/ar/ARBeauty;
.super Ljava/lang/Object;
.source "ARBeauty.java"


# direct methods
.method public static buildARBeauty(I)V
    .locals 7

    const-string v0, "filter_name"

    const-string v1, "bailiang2"

    .line 58
    invoke-static {p0, v0, v1}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;Ljava/lang/String;)I

    const-string v0, "filter_level"

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 60
    invoke-static {p0, v0, v1, v2}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    const-string v0, "skin_detect"

    .line 63
    invoke-static {p0, v0, v1, v2}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    const-string v0, "heavy_blur"

    const-wide/16 v3, 0x0

    .line 65
    invoke-static {p0, v0, v3, v4}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    const-string v0, "blur_level"

    const-wide/high16 v5, 0x4014000000000000L    # 5.0

    .line 67
    invoke-static {p0, v0, v5, v6}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    const-string v0, "color_level"

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    .line 69
    invoke-static {p0, v0, v5, v6}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    const-string v0, "red_level"

    .line 71
    invoke-static {p0, v0, v5, v6}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    const-string v0, "eye_bright"

    .line 73
    invoke-static {p0, v0, v3, v4}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    const-string v0, "tooth_whiten"

    .line 75
    invoke-static {p0, v0, v3, v4}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    const-string v0, "face_shape_level"

    .line 78
    invoke-static {p0, v0, v1, v2}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    const-string v0, "face_shape"

    const-wide/high16 v1, 0x4008000000000000L    # 3.0

    .line 80
    invoke-static {p0, v0, v1, v2}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    const-string v0, "eye_enlarging"

    .line 82
    invoke-static {p0, v0, v3, v4}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    const-string v0, "cheek_thinning"

    .line 84
    invoke-static {p0, v0, v3, v4}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    const-string v0, "cheek_narrow"

    .line 86
    invoke-static {p0, v0, v3, v4}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    const-string v0, "cheek_small"

    .line 88
    invoke-static {p0, v0, v3, v4}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    const-string v0, "cheek_v"

    .line 90
    invoke-static {p0, v0, v3, v4}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    const-string v0, "intensity_nose"

    .line 92
    invoke-static {p0, v0, v3, v4}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    const-string v0, "intensity_chin"

    .line 94
    invoke-static {p0, v0, v5, v6}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    const-string v0, "intensity_forehead"

    .line 96
    invoke-static {p0, v0, v5, v6}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    const-string v0, "intensity_mouth"

    .line 98
    invoke-static {p0, v0, v5, v6}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    const-string v0, "change_frame"

    .line 100
    invoke-static {p0, v0, v3, v4}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    return-void
.end method
