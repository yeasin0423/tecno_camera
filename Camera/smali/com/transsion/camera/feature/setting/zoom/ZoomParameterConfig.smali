.class public Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;
.super Ljava/lang/Object;
.source "ZoomParameterConfig.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mIsZoomSupported:Z

.field private mLastZoomLevel:Ljava/lang/String;

.field private mMaxZoom:Ljava/lang/String;

.field private mSatSupport:Z

.field private mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

.field private mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/zoom/Zoom;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "100"

    .line 24
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mLastZoomLevel:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mMaxZoom:Ljava/lang/String;

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mSatSupport:Z

    .line 33
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    .line 34
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method

.method private isZoomValueValid(Ljava/lang/String;)Z
    .locals 3

    .line 128
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 129
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mSatSupport:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    const-string v0, "100"

    .line 132
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lt p1, v0, :cond_2

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mMaxZoom:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-gt p1, p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method private reset()V
    .locals 2

    .line 136
    sget-object v0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[reset]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "100"

    .line 137
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mLastZoomLevel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "100"

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    move-object v0, v1

    .line 102
    :cond_0
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->isZoomValueValid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 106
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mLastZoomLevel:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 107
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mSatSupport:Z

    invoke-virtual {p1, v0, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setZoomRatio(IZ)V

    .line 108
    iput-object v1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mLastZoomLevel:Ljava/lang/String;

    .line 110
    :cond_2
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setZoomValue(Ljava/lang/String;)V

    .line 111
    sget-object p1, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[configParameters] this: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", currentZoomLevel = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public sendSettingChangeRequest()V
    .locals 2

    .line 121
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mIsZoomSupported:Z

    if-eqz v0, :cond_0

    .line 122
    sget-object v0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[sendSettingChangeRequest]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 123
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    const-string v0, "key_camera_zoom"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 5

    .line 39
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedZoomRatios()Ljava/util/List;

    move-result-object v0

    .line 40
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSatModeSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mSatSupport:Z

    .line 41
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->minimizeZoomStep()Z

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 42
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v2, :cond_1

    .line 44
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr p1, v2

    .line 45
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 46
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_0
    if-ge v3, p1, :cond_0

    .line 48
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 50
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 55
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->isMaxValueLimited()Z

    move-result p1

    const/4 v3, -0x1

    if-eqz p1, :cond_2

    const/16 p1, 0x190

    goto :goto_1

    .line 57
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->shouldLimitForVideo()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 58
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getLimitValueForVideo()I

    move-result p1

    goto :goto_1

    .line 59
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->shouldLimitForSlimBody()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 60
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getLimitValueForSlimBody()I

    move-result p1

    goto :goto_1

    :cond_4
    move p1, v3

    .line 62
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq p1, v3, :cond_5

    if-le v4, p1, :cond_5

    .line 64
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr p1, v2

    invoke-interface {v0, v1, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 67
    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    .line 68
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 69
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 71
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_7

    .line 72
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mIsZoomSupported:Z

    const-string v0, "-1"

    .line 73
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mMaxZoom:Ljava/lang/String;

    .line 74
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {v1, p1, v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_4

    .line 76
    :cond_7
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mIsZoomSupported:Z

    .line 77
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    .line 78
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mMaxZoom:Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mSatSupport:Z

    if-eqz v2, :cond_8

    const-string v1, "100"

    goto :goto_3

    :cond_8
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_3
    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    .line 81
    :goto_4
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->reset()V

    return-void
.end method
