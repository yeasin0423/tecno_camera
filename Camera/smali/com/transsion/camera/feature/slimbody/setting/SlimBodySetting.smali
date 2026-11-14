.class public Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SlimBodySetting.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCheckedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultCloseSB:Z

.field private mDefaultOption:I

.field private mIsFaceBeautySlimbodySupport:Z

.field private mIsModeSupport:Z

.field private mSlimBodyParamConfig:Lcom/transsion/camera/feature/slimbody/setting/SlimBodyParamConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->mIsModeSupport:Z

    .line 25
    iput-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->mIsFaceBeautySlimbodySupport:Z

    const/4 v0, 0x1

    .line 27
    iput v0, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->mDefaultOption:I

    return-void
.end method

.method private defaultSlimbodyValue()Ljava/lang/String;
    .locals 4

    .line 87
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p0

    const/4 v0, 0x2

    .line 89
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_slimbody_latested_featureid"

    .line 88
    invoke-virtual {p0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "{\"bodySlim\":100,\"buttPlump\":100,\"chestPlump\":100,\"waistUpper\":100,\"headShrink\":100,\"legLengthen\":100,\"legSlim\":100,\"bellySlim\":100,\"armSlim\":100,\"presetMode\":0,\"shoulderSlim\":100,\"waistSlim\":100}"

    return-object p0

    :cond_0
    if-ne p0, v0, :cond_1

    const-string p0, "{\"bodySlim\":100,\"buttPlump\":100,\"chestPlump\":100, \"waistUpper\":100,\"headShrink\":100,\"legLengthen\":100,\"legSlim\":100,\"bellySlim\":100,\"armSlim\":100,\"presetMode\":1,\"shoulderSlim\":100,\"waistSlim\":100}"

    return-object p0

    :cond_1
    const-string p0, "{\"bodySlim\":60,\"buttPlump\":60,\"chestPlump\":0,\"waistUpper\":0,\"headShrink\":60,\"legLengthen\":0,\"legSlim\":0,\"bellySlim\":100,\"armSlim\":0,\"presetMode\":5,\"shoulderSlim\":10,\"waistSlim\":50}"

    return-object p0
.end method


# virtual methods
.method public getDefaultOption()Ljava/lang/String;
    .locals 0

    .line 55
    iget p0, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->mDefaultOption:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFaceBeautySlimbodySupport()Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->mIsFaceBeautySlimbodySupport:Z

    return p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_slimbody_info"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->mSlimBodyParamConfig:Lcom/transsion/camera/feature/slimbody/setting/SlimBodyParamConfig;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyParamConfig;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyParamConfig;-><init>(Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->mSlimBodyParamConfig:Lcom/transsion/camera/feature/slimbody/setting/SlimBodyParamConfig;

    .line 134
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->mSlimBodyParamConfig:Lcom/transsion/camera/feature/slimbody/setting/SlimBodyParamConfig;

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 101
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public getSupport()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 139
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 0

    .line 31
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 32
    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/setting/CustomConfigUtil;->getInstance(Landroid/content/Context;)Lcom/transsion/camera/feature/slimbody/setting/CustomConfigUtil;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/feature/slimbody/setting/CustomConfigUtil;->getBothSupport()Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->mIsFaceBeautySlimbodySupport:Z

    .line 33
    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/setting/CustomConfigUtil;->getInstance(Landroid/content/Context;)Lcom/transsion/camera/feature/slimbody/setting/CustomConfigUtil;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/feature/slimbody/setting/CustomConfigUtil;->getCloseDefaultSB()Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->mDefaultCloseSB:Z

    .line 34
    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/setting/CustomConfigUtil;->getInstance(Landroid/content/Context;)Lcom/transsion/camera/feature/slimbody/setting/CustomConfigUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/feature/slimbody/setting/CustomConfigUtil;->getDefaultOption()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->mDefaultOption:I

    .line 35
    sget-object p1, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SlimBodyConfig mIsFaceBeautySlimbodySupport = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->mIsFaceBeautySlimbodySupport:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ",mDefaultCloseSB = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->mDefaultCloseSB:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ",mDefaultOption = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->mDefaultOption:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 64
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-gtz p2, :cond_0

    goto :goto_1

    .line 67
    :cond_0
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->mCheckedList:Ljava/util/List;

    .line 68
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 69
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->mCheckedList:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 70
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->mCheckedList:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 71
    iget-boolean p1, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->mIsFaceBeautySlimbodySupport:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->mDefaultCloseSB:Z

    if-eqz p1, :cond_1

    const-string p1, "{\"bodySlim\":100,\"buttPlump\":100,\"chestPlump\":100,\"waistUpper\":100,\"headShrink\":100,\"legLengthen\":100,\"legSlim\":100,\"bellySlim\":100,\"armSlim\":100,\"presetMode\":0,\"shoulderSlim\":100,\"waistSlim\":100}"

    goto :goto_0

    .line 74
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->defaultSlimbodyValue()Ljava/lang/String;

    move-result-object p1

    .line 76
    :goto_0
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 77
    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, p1, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 78
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    const-string p1, "key_slimbody_facebeauty_switch"

    .line 79
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 80
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 81
    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget v0, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->mDefaultOption:I

    .line 82
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 81
    invoke-virtual {p2, p1, v0, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public isModeSupport()Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->mIsModeSupport:Z

    return p0
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 50
    :try_start_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->mIsModeSupport:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->mIsModeSupport:Z

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 4

    .line 117
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 120
    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->toObject(Ljava/lang/String;)Lcom/transsion/camera/feature/slimbody/data/SBItemData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    iget v0, v0, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->presetMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_slimbody_custom"

    invoke-virtual {v0, v2, p1, v1, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 124
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->mSlimBodyParamConfig:Lcom/transsion/camera/feature/slimbody/setting/SlimBodyParamConfig;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyParamConfig;->sendSettingChangeRequest()V

    :cond_1
    return-void
.end method

.method public queryValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const-string v1, "{\"bodySlim\":60,\"buttPlump\":60,\"chestPlump\":0,\"waistUpper\":0,\"headShrink\":60,\"legLengthen\":0,\"legSlim\":0,\"bellySlim\":100,\"armSlim\":0,\"presetMode\":5,\"shoulderSlim\":10,\"waistSlim\":50}"

    invoke-virtual {v0, p1, v1, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
