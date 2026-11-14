.class public Lcom/transsion/camera/feature/setting/asd/Asd;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "Asd.java"


# static fields
.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private isSurpportMode:Z

.field private mASDEnhanceSupport:Z

.field private mAsdParameterConfig:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

.field private mContext:Landroid/content/Context;

.field private mFakeCameraStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

.field private mFakeCameraSupport:Z

.field private mFilterValue:Ljava/lang/String;

.field private mFlashValue:Ljava/lang/String;

.field private mHighDefinitionMode:Z

.field private mHighResolutionSupport:Z

.field private mIsArcFilterSupport:Z

.field private mIsHdrAsdBothSupport:Z

.field private mPortraitEnhanceSupport:Z

.field private mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private mSkipMiddleNightSetting:Z

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mSuperResolutionSupport:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/asd/Asd;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->isSurpportMode:Z

    .line 42
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mFakeCameraSupport:Z

    .line 44
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mSkipMiddleNightSetting:Z

    .line 45
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mSuperResolutionSupport:Z

    .line 46
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsArcFilterSupport:Z

    .line 48
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mHighResolutionSupport:Z

    .line 49
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mHighDefinitionMode:Z

    .line 50
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mASDEnhanceSupport:Z

    .line 51
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mPortraitEnhanceSupport:Z

    .line 189
    new-instance v0, Lcom/transsion/camera/feature/setting/asd/Asd$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/asd/Asd$1;-><init>(Lcom/transsion/camera/feature/setting/asd/Asd;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 259
    new-instance v0, Lcom/transsion/camera/feature/setting/asd/Asd$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/asd/Asd$2;-><init>(Lcom/transsion/camera/feature/setting/asd/Asd;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdParameterConfig:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    return-object p0
.end method

.method static synthetic access$102(Lcom/transsion/camera/feature/setting/asd/Asd;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mFlashValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/setting/asd/Asd;)Z
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->isNightShotSupport()Z

    move-result p0

    return p0
.end method

.method static synthetic access$302(Lcom/transsion/camera/feature/setting/asd/Asd;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mFilterValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/setting/asd/Asd;)Z
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->isAsdSupport()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/setting/asd/Asd;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mSuperResolutionSupport:Z

    return p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/setting/asd/Asd;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mHighDefinitionMode:Z

    return p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method private isAsdSupport()Z
    .locals 3

    .line 54
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->isSurpportMode:Z

    .line 55
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsArcFilterSupport:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mFilterValue:Ljava/lang/String;

    const-string v2, "0"

    .line 56
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mFilterValue:Ljava/lang/String;

    const-string v1, "-1"

    .line 57
    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private isNightShotSupport()Z
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mFlashValue:Ljava/lang/String;

    const-string v1, "off"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mFlashValue:Ljava/lang/String;

    const-string v0, "torch"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public getFakeCameraSupport()Z
    .locals 0

    .line 276
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mFakeCameraSupport:Z

    return p0
.end method

.method public getHdrAsdBothSupport()Z
    .locals 0

    .line 288
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsHdrAsdBothSupport:Z

    return p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_asd"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 4

    .line 118
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdParameterConfig:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-direct {v0, p0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;-><init>(Lcom/transsion/camera/feature/setting/asd/Asd;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdParameterConfig:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    .line 120
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_flash"

    const-string v3, "auto"

    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mFlashValue:Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_filter"

    const-string v3, "-1"

    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mFilterValue:Ljava/lang/String;

    .line 126
    sget-object v0, Lcom/transsion/camera/feature/setting/asd/Asd;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getParametersConfigure mFlashValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mFlashValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mFilterValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mFilterValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdParameterConfig:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->isAsdSupport()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshAsdStateImmediately(I)V

    .line 133
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdParameterConfig:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 108
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

    .line 186
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 0

    .line 66
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 67
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mContext:Landroid/content/Context;

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "hdr_asd_both_support"

    invoke-static {p1, p3, p2}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsHdrAsdBothSupport:Z

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "high_definition_mode"

    invoke-static {p1, p3, p2}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mHighDefinitionMode:Z

    .line 70
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string p3, "key_flash"

    invoke-virtual {p1, p3, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 71
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string p3, "key_filter"

    invoke-virtual {p1, p3, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 72
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string p3, "wide_camera"

    invoke-virtual {p1, p3, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 73
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string p3, "key_super_definition"

    invoke-virtual {p1, p3, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 74
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_fake_asd_camera_status"

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mFakeCameraStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
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

    .line 88
    sget-object v0, Lcom/transsion/camera/feature/setting/asd/Asd;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initializeValue], platformSupportedValues:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "default value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 90
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v0, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdParameterConfig:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshAsdStateImmediately(I)V

    .line 95
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 96
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 97
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 98
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 100
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 101
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 103
    sget-object p0, Lcom/transsion/camera/feature/setting/asd/Asd;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[initializeValue], mDataStore:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 91
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdParameterConfig:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshAsdStateImmediately(I)V

    return-void
.end method

.method public isASDEnhanceSupport()Z
    .locals 0

    .line 304
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mASDEnhanceSupport:Z

    return p0
.end method

.method public isHighDefinitionMode()Z
    .locals 0

    .line 300
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mHighDefinitionMode:Z

    return p0
.end method

.method public isHighResolutionSupport()Z
    .locals 0

    .line 292
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mHighResolutionSupport:Z

    return p0
.end method

.method public isPortraitEnhanceSupport()Z
    .locals 0

    .line 308
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mPortraitEnhanceSupport:Z

    return p0
.end method

.method public isSuperResolutionSupport()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public needSkipMiddleNightSetting()Z
    .locals 0

    .line 284
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mSkipMiddleNightSetting:Z

    return p0
.end method

.method public onFakeCameraStatusChanged(Ljava/lang/String;)V
    .locals 1

    .line 280
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mFakeCameraStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    const-string v0, "key_fake_asd_camera_status"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 162
    :try_start_0
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->isSurpportMode:Z

    .line 163
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mFakeCameraSupport:Z

    .line 164
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mPortraitEnhanceSupport:Z

    .line 165
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    .line 166
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdParameterConfig:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    if-eqz p1, :cond_0

    .line 167
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdParameterConfig:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshAsdStateImmediately(I)V

    .line 169
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/asd/Asd;->onFakeCameraStatusChanged(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .locals 2

    .line 142
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mContext:Landroid/content/Context;

    const-string v0, "beauty_mode_version"

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    const-string v0, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    .line 143
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "com.transsion.camera.feature.mode.facebeauty.FaceBeautyModeEntry"

    .line 144
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "com.transsion.camera.feature.mode.facebeauty.MultiFaceBeautyModeEntry"

    .line 145
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "com.transsion.camera.feature.slimbody.mode.SlimBodyModeEntry"

    .line 146
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->isSurpportMode:Z

    goto :goto_2

    .line 148
    :cond_2
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->isSurpportMode:Z

    :goto_2
    const-string p1, "key_asd_enhance"

    .line 150
    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mASDEnhanceSupport:Z

    const-string p1, "key_fake_asd_camera"

    .line 151
    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mFakeCameraSupport:Z

    const-string p1, "key_setting_smart_denoise"

    .line 153
    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mSkipMiddleNightSetting:Z

    const-string p1, "key_super_resolution"

    .line 154
    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mSuperResolutionSupport:Z

    const-string p1, "key_filter"

    .line 155
    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsArcFilterSupport:Z

    const-string p1, "key_high_resolution"

    .line 156
    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mHighResolutionSupport:Z

    const-string p1, "key_portraitmode_enhance"

    .line 157
    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mPortraitEnhanceSupport:Z

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 0

    .line 180
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 181
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdParameterConfig:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->sendSettingChangeRequest()V

    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 175
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V
    .locals 0

    .line 248
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 249
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdParameterConfig:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    if-eqz p0, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshToUI()V

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 3

    .line 79
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_flash"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 81
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_filter"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 82
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "wide_camera"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "key_super_definition"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method
