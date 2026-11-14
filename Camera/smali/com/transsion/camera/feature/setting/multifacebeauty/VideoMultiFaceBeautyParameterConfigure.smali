.class public Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeautyParameterConfigure;
.super Ljava/lang/Object;
.source "VideoMultiFaceBeautyParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sFeatureDefaultValue:I


# instance fields
.field private mFeatureKeys:[Ljava/lang/String;

.field private mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

.field private mSupportModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoMultiFaceBeauty:Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeauty;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeautyParameterConfigure;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeautyParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/16 v0, 0x32

    .line 28
    sput v0, Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeautyParameterConfigure;->sFeatureDefaultValue:I

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeauty;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 4

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeautyParameterConfigure;->mSupportModes:Ljava/util/List;

    const-string v0, "video_soften"

    const-string v1, "video_eye"

    const-string v2, "video_face"

    const-string v3, "video_whiten"

    .line 31
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeautyParameterConfigure;->mFeatureKeys:[Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeautyParameterConfigure;->mVideoMultiFaceBeauty:Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeauty;

    .line 40
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeautyParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method

.method private getCustomValues()[I
    .locals 4

    .line 123
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeautyParameterConfigure;->mFeatureKeys:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 124
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeautyParameterConfigure;->mFeatureKeys:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 125
    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeautyParameterConfigure;->getValueByKey(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getValueByKey(Ljava/lang/String;)I
    .locals 2

    .line 131
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeautyParameterConfigure;->mVideoMultiFaceBeauty:Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeauty;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p0

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeautyParameterConfigure;->sFeatureDefaultValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-virtual {p0, p1, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 134
    sget p1, Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeautyParameterConfigure;->sFeatureDefaultValue:I

    .line 136
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    :catch_0
    sget-object p0, Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeautyParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "Warning: getValueByKey NumberFormatException !!!"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return p1
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 67
    iget-object v2, v0, Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeautyParameterConfigure;->mVideoMultiFaceBeauty:Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeauty;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 68
    sget-object v3, Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeautyParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[configParameters], value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", isVideoFaceBeauty = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeautyParameterConfigure;->mVideoMultiFaceBeauty:Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeauty;

    invoke-virtual {v5}, Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeauty;->isVideoFaceBeauty()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isSwitchOn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeautyParameterConfigure;->mVideoMultiFaceBeauty:Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeauty;

    .line 69
    invoke-virtual {v5}, Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeauty;->isSwitchOn()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 68
    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v3, 0x0

    if-eqz v2, :cond_a

    .line 71
    iget-object v4, v0, Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeautyParameterConfigure;->mVideoMultiFaceBeauty:Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeauty;

    invoke-virtual {v4}, Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeauty;->ismIsModeSupport()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 72
    iget-object v4, v0, Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeautyParameterConfigure;->mVideoMultiFaceBeauty:Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeauty;

    invoke-virtual {v4}, Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeauty;->isVideoFaceBeauty()Z

    move-result v4

    const-string v5, "off"

    if-eqz v4, :cond_0

    .line 73
    iget-object v4, v0, Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeautyParameterConfigure;->mVideoMultiFaceBeauty:Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeauty;

    invoke-virtual {v4}, Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeauty;->isSwitchOn()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v2, v5

    .line 78
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    const-string v12, "pre3"

    const-string v13, "pre2"

    const-string v14, "pre1"

    const-string v15, "aiv2"

    const-string v4, "custom"

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v8

    goto :goto_1

    :sswitch_1
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v9

    goto :goto_1

    :sswitch_2
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v10

    goto :goto_1

    :sswitch_3
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v11

    goto :goto_1

    :sswitch_4
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v3

    goto :goto_1

    :sswitch_5
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v7

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v6, -0x1

    :goto_1
    if-eqz v6, :cond_8

    if-eq v6, v11, :cond_7

    if-eq v6, v10, :cond_6

    if-eq v6, v9, :cond_5

    if-eq v6, v8, :cond_4

    if-eq v6, v7, :cond_2

    goto :goto_2

    .line 105
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeautyParameterConfigure;->getCustomValues()[I

    move-result-object v5

    .line 106
    iget-object v0, v0, Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeautyParameterConfigure;->mSupportModes:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 107
    invoke-virtual {v1, v4}, Lcom/transsion/camera/adapter/CameraParameters;->setMultiFaceBeautyMode(Ljava/lang/String;)V

    .line 109
    :cond_3
    invoke-virtual {v1, v5}, Lcom/transsion/camera/adapter/CameraParameters;->setFaceBeautyFeaturesLevel([I)V

    goto :goto_2

    .line 100
    :cond_4
    iget-object v0, v0, Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeautyParameterConfigure;->mSupportModes:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 101
    invoke-virtual {v1, v12}, Lcom/transsion/camera/adapter/CameraParameters;->setMultiFaceBeautyMode(Ljava/lang/String;)V

    goto :goto_2

    .line 95
    :cond_5
    iget-object v0, v0, Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeautyParameterConfigure;->mSupportModes:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 96
    invoke-virtual {v1, v13}, Lcom/transsion/camera/adapter/CameraParameters;->setMultiFaceBeautyMode(Ljava/lang/String;)V

    goto :goto_2

    .line 90
    :cond_6
    iget-object v0, v0, Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeautyParameterConfigure;->mSupportModes:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 91
    invoke-virtual {v1, v14}, Lcom/transsion/camera/adapter/CameraParameters;->setMultiFaceBeautyMode(Ljava/lang/String;)V

    goto :goto_2

    .line 85
    :cond_7
    iget-object v0, v0, Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeautyParameterConfigure;->mSupportModes:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 86
    invoke-virtual {v1, v15}, Lcom/transsion/camera/adapter/CameraParameters;->setMultiFaceBeautyMode(Ljava/lang/String;)V

    goto :goto_2

    .line 80
    :cond_8
    iget-object v0, v0, Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeautyParameterConfigure;->mSupportModes:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 81
    invoke-virtual {v1, v5}, Lcom/transsion/camera/adapter/CameraParameters;->setMultiFaceBeautyMode(Ljava/lang/String;)V

    .line 112
    :cond_9
    :goto_2
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setVideoBeautyValue(Ljava/lang/String;)V

    :cond_a
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5069748f -> :sswitch_5
        0x1ad6f -> :sswitch_4
        0x2db0a4 -> :sswitch_3
        0x34a1ee -> :sswitch_2
        0x34a1ef -> :sswitch_1
        0x34a1f0 -> :sswitch_0
    .end sparse-switch
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeautyParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeautyParameterConfigure;->mVideoMultiFaceBeauty:Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeauty;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeauty;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 3

    .line 50
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedFaceBeautyModes()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeautyParameterConfigure;->mSupportModes:Ljava/util/List;

    .line 51
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedFaceBeautyFeaturesLevelScope()Ljava/util/List;

    move-result-object p1

    .line 53
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    sput p1, Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeautyParameterConfigure;->sFeatureDefaultValue:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    :catch_0
    sget-object p1, Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeautyParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "Multi face beauty feature scope has something wrong"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    .line 58
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeautyParameterConfigure;->mSupportModes:Ljava/util/List;

    const-string v1, "aiv2"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p1, v1

    .line 61
    :cond_0
    sget-object v0, Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeautyParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "defaultValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeautyParameterConfigure;->mVideoMultiFaceBeauty:Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeauty;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeautyParameterConfigure;->mSupportModes:Ljava/util/List;

    invoke-virtual {v0, p0, p1}, Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeauty;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
