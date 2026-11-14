.class public Lcom/transsion/camera/feature/setting/multifacebeauty/MultiFaceBeautyParameterConfigure;
.super Ljava/lang/Object;
.source "MultiFaceBeautyParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sFeatureDefaultValue:I


# instance fields
.field private mFeatureKeys:[Ljava/lang/String;

.field private mMultiFaceBeauty:Lcom/transsion/camera/feature/setting/multifacebeauty/MultiFaceBeauty;

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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/multifacebeauty/MultiFaceBeautyParameterConfigure;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/multifacebeauty/MultiFaceBeautyParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/16 v0, 0x32

    .line 34
    sput v0, Lcom/transsion/camera/feature/setting/multifacebeauty/MultiFaceBeautyParameterConfigure;->sFeatureDefaultValue:I

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/multifacebeauty/MultiFaceBeauty;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 4

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/multifacebeauty/MultiFaceBeautyParameterConfigure;->mSupportModes:Ljava/util/List;

    const-string v0, "soften"

    const-string v1, "eye"

    const-string v2, "face"

    const-string v3, "whiten"

    .line 37
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/multifacebeauty/MultiFaceBeautyParameterConfigure;->mFeatureKeys:[Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/multifacebeauty/MultiFaceBeautyParameterConfigure;->mMultiFaceBeauty:Lcom/transsion/camera/feature/setting/multifacebeauty/MultiFaceBeauty;

    .line 57
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/multifacebeauty/MultiFaceBeautyParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method

.method private getCustomValues()[I
    .locals 4

    .line 154
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/multifacebeauty/MultiFaceBeautyParameterConfigure;->mFeatureKeys:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 155
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/multifacebeauty/MultiFaceBeautyParameterConfigure;->mFeatureKeys:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 156
    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/setting/multifacebeauty/MultiFaceBeautyParameterConfigure;->getValueByKey(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getValueByKey(Ljava/lang/String;)I
    .locals 3

    .line 162
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/multifacebeauty/MultiFaceBeautyParameterConfigure;->mMultiFaceBeauty:Lcom/transsion/camera/feature/setting/multifacebeauty/MultiFaceBeauty;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p0

    .line 163
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "threedimensional"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_1
    const-string v0, "video_eye"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "nose"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_3
    const-string v0, "hair"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_4
    const-string v0, "face"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_5
    const-string v0, "cuttingface"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_6
    const-string v0, "whiten"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_7
    const-string v0, "soften"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_8
    const-string v0, "makeup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/16 v2, 0x14

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 189
    :pswitch_0
    sput v2, Lcom/transsion/camera/feature/setting/multifacebeauty/MultiFaceBeautyParameterConfigure;->sFeatureDefaultValue:I

    goto :goto_2

    .line 186
    :pswitch_1
    sput v1, Lcom/transsion/camera/feature/setting/multifacebeauty/MultiFaceBeautyParameterConfigure;->sFeatureDefaultValue:I

    goto :goto_2

    :pswitch_2
    const/16 v0, 0x19

    .line 183
    sput v0, Lcom/transsion/camera/feature/setting/multifacebeauty/MultiFaceBeautyParameterConfigure;->sFeatureDefaultValue:I

    goto :goto_2

    :pswitch_3
    const/16 v0, 0x55

    .line 180
    sput v0, Lcom/transsion/camera/feature/setting/multifacebeauty/MultiFaceBeautyParameterConfigure;->sFeatureDefaultValue:I

    goto :goto_2

    :pswitch_4
    const/16 v0, 0xa

    .line 177
    sput v0, Lcom/transsion/camera/feature/setting/multifacebeauty/MultiFaceBeautyParameterConfigure;->sFeatureDefaultValue:I

    goto :goto_2

    :pswitch_5
    const/16 v0, 0x1e

    .line 174
    sput v0, Lcom/transsion/camera/feature/setting/multifacebeauty/MultiFaceBeautyParameterConfigure;->sFeatureDefaultValue:I

    goto :goto_2

    :pswitch_6
    const/16 v0, 0x41

    .line 171
    sput v0, Lcom/transsion/camera/feature/setting/multifacebeauty/MultiFaceBeautyParameterConfigure;->sFeatureDefaultValue:I

    goto :goto_2

    .line 168
    :pswitch_7
    sput v2, Lcom/transsion/camera/feature/setting/multifacebeauty/MultiFaceBeautyParameterConfigure;->sFeatureDefaultValue:I

    goto :goto_2

    :pswitch_8
    const/16 v0, 0x3c

    .line 165
    sput v0, Lcom/transsion/camera/feature/setting/multifacebeauty/MultiFaceBeautyParameterConfigure;->sFeatureDefaultValue:I

    .line 194
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/transsion/camera/feature/setting/multifacebeauty/MultiFaceBeautyParameterConfigure;->sFeatureDefaultValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    .line 194
    invoke-virtual {p0, p1, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 196
    sget p1, Lcom/transsion/camera/feature/setting/multifacebeauty/MultiFaceBeautyParameterConfigure;->sFeatureDefaultValue:I

    .line 198
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 200
    :catch_0
    sget-object p0, Lcom/transsion/camera/feature/setting/multifacebeauty/MultiFaceBeautyParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "Warning: getValueByKey NumberFormatException !!!"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_3
    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4076aef7 -> :sswitch_8
        -0x357661ad -> :sswitch_7
        -0x2f04469b -> :sswitch_6
        -0x10f4dd73 -> :sswitch_5
        0x2fd65d -> :sswitch_4
        0x30bfe2 -> :sswitch_3
        0x33afd3 -> :sswitch_2
        0x4f78186d -> :sswitch_1
        0x6c5d03b3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 11

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/multifacebeauty/MultiFaceBeautyParameterConfigure;->mMultiFaceBeauty:Lcom/transsion/camera/feature/setting/multifacebeauty/MultiFaceBeauty;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/multifacebeauty/MultiFaceBeautyParameterConfigure;->mMultiFaceBeauty:Lcom/transsion/camera/feature/setting/multifacebeauty/MultiFaceBeauty;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/multifacebeauty/MultiFaceBeauty;->ismIsModeSupport()Z

    move-result v1

    .line 86
    sget-object v2, Lcom/transsion/camera/feature/setting/multifacebeauty/MultiFaceBeautyParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MultiFaceBeauty configParameters value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", support = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 87
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "aiv2"

    if-eqz v2, :cond_0

    move-object v0, v3

    :cond_0
    const/4 v2, 0x0

    if-eqz v1, :cond_8

    const/4 v1, -0x1

    .line 91
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const-string v7, "off"

    const-string v8, "custom"

    const-string v9, "contrast_on"

    const/4 v10, 0x1

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v10

    goto :goto_0

    :sswitch_1
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    goto :goto_0

    :sswitch_2
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v6

    goto :goto_0

    :sswitch_3
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v5

    :cond_1
    :goto_0
    if-eqz v1, :cond_6

    if-eq v1, v10, :cond_5

    if-eq v1, v6, :cond_3

    if-eq v1, v5, :cond_2

    goto :goto_1

    .line 137
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/multifacebeauty/MultiFaceBeautyParameterConfigure;->mSupportModes:Ljava/util/List;

    invoke-interface {p0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 138
    invoke-virtual {p1, v9}, Lcom/transsion/camera/adapter/CameraParameters;->setMultiFaceBeautyMode(Ljava/lang/String;)V

    goto :goto_1

    .line 129
    :cond_3
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/multifacebeauty/MultiFaceBeautyParameterConfigure;->getCustomValues()[I

    move-result-object v1

    .line 130
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/multifacebeauty/MultiFaceBeautyParameterConfigure;->mSupportModes:Ljava/util/List;

    invoke-interface {p0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 131
    invoke-virtual {p1, v8}, Lcom/transsion/camera/adapter/CameraParameters;->setMultiFaceBeautyMode(Ljava/lang/String;)V

    .line 133
    :cond_4
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setFaceBeautyFeaturesLevel([I)V

    .line 134
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setMultiBeautyValue([I)V

    goto :goto_1

    .line 108
    :cond_5
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/multifacebeauty/MultiFaceBeautyParameterConfigure;->mSupportModes:Ljava/util/List;

    invoke-interface {p0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 109
    invoke-virtual {p1, v3}, Lcom/transsion/camera/adapter/CameraParameters;->setMultiFaceBeautyMode(Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    new-array p1, v10, [I

    aput v10, p1, v2

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setMultiBeautyValue([I)V

    goto :goto_1

    .line 93
    :cond_6
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/multifacebeauty/MultiFaceBeautyParameterConfigure;->mSupportModes:Ljava/util/List;

    invoke-interface {p0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 94
    invoke-virtual {p1, v7}, Lcom/transsion/camera/adapter/CameraParameters;->setMultiFaceBeautyMode(Ljava/lang/String;)V

    .line 143
    :cond_7
    :goto_1
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setMultiFBMode(Ljava/lang/String;)V

    :cond_8
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x7daf97c4 -> :sswitch_3
        -0x5069748f -> :sswitch_2
        0x1ad6f -> :sswitch_1
        0x2db0a4 -> :sswitch_0
    .end sparse-switch
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/multifacebeauty/MultiFaceBeautyParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/multifacebeauty/MultiFaceBeautyParameterConfigure;->mMultiFaceBeauty:Lcom/transsion/camera/feature/setting/multifacebeauty/MultiFaceBeauty;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/multifacebeauty/MultiFaceBeauty;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 3

    .line 67
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedFaceBeautyModes()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/multifacebeauty/MultiFaceBeautyParameterConfigure;->mSupportModes:Ljava/util/List;

    .line 68
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedFaceBeautyFeaturesLevelScope()Ljava/util/List;

    move-result-object p1

    .line 70
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

    sput p1, Lcom/transsion/camera/feature/setting/multifacebeauty/MultiFaceBeautyParameterConfigure;->sFeatureDefaultValue:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    sget-object p1, Lcom/transsion/camera/feature/setting/multifacebeauty/MultiFaceBeautyParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "Multi face beauty feature scope has something wrong"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    .line 75
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/multifacebeauty/MultiFaceBeautyParameterConfigure;->mSupportModes:Ljava/util/List;

    const-string v1, "aiv2"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p1, v1

    .line 78
    :cond_0
    sget-object v0, Lcom/transsion/camera/feature/setting/multifacebeauty/MultiFaceBeautyParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "defaultValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/multifacebeauty/MultiFaceBeautyParameterConfigure;->mMultiFaceBeauty:Lcom/transsion/camera/feature/setting/multifacebeauty/MultiFaceBeauty;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/multifacebeauty/MultiFaceBeautyParameterConfigure;->mSupportModes:Ljava/util/List;

    invoke-virtual {v0, p0, p1}, Lcom/transsion/camera/feature/setting/multifacebeauty/MultiFaceBeauty;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
