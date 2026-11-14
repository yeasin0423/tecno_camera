.class Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure$HdrParameterValues;
.super Ljava/lang/Object;
.source "HdrParameterConfigure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HdrParameterValues"
.end annotation


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure$1;)V
    .locals 0

    .line 155
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure$HdrParameterValues;-><init>(Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;)V

    return-void
.end method


# virtual methods
.method public setOriginalHdrValue(Lcom/transsion/camera/adapter/CameraParameters;)V
    .locals 0

    .line 159
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoHDRMode()Ljava/lang/String;

    return-void
.end method
