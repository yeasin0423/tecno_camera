.class public Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "NightHawk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$StatusChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field mCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraNighthawkCallback;

.field private mFlagTime:J

.field private mIgnoreFrame:I

.field private mIsModeFeatureSupport:Z

.field private mIsSettingSupport:Z

.field private mIsVideoType:Z

.field private mParameterConfigure:Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;

.field private mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private mStatusChangeListener:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$StatusChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    .line 41
    new-instance v0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$StatusChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$StatusChangeListener;-><init>(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$1;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$StatusChangeListener;

    .line 93
    new-instance v0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$1;-><init>(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraNighthawkCallback;

    .line 211
    new-instance v0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$2;-><init>(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-void
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 30
    sget-object v0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mIsModeFeatureSupport:Z

    return p0
.end method

.method static synthetic access$302(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mIsSettingSupport:Z

    return p1
.end method

.method static synthetic access$402(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mIgnoreFrame:I

    return p1
.end method

.method static synthetic access$404(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;)I
    .locals 1

    .line 30
    iget v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mIgnoreFrame:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mIgnoreFrame:I

    return v0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;)J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mFlagTime:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;J)J
    .locals 0

    .line 30
    iput-wide p1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mFlagTime:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;)Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mParameterConfigure:Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;

    return-object p0
.end method

.method private registerKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private unRegisterKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_night_hawk"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mParameterConfigure:Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;-><init>(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mParameterConfigure:Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;

    .line 180
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mParameterConfigure:Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 167
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

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

    .line 199
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 0

    .line 46
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 47
    sget-object p1, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "init"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 48
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_0

    const-string p1, "key_video_quality"

    .line 49
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->registerKeyToMonitor(Ljava/lang/String;)V

    :cond_0
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

    .line 115
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 116
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 117
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 118
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 119
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 120
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method protected isSupport()Z
    .locals 1

    .line 203
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mIsModeFeatureSupport:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mIsSettingSupport:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 159
    :try_start_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 160
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mIsModeFeatureSupport:Z

    .line 161
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mIsSettingSupport:Z

    const-string p1, "off"

    .line 162
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->onValueChanged(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .locals 3

    .line 125
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mIsModeFeatureSupport:Z

    const-string p1, "key_anti_video"

    .line 127
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "on"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "key_video_quality"

    .line 128
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "8"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "11"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "6_60"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    move p1, p3

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mIsSettingSupport:Z

    .line 131
    sget-object p1, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->VIDEO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    if-ne p2, p1, :cond_1

    goto :goto_1

    :cond_1
    move p3, v0

    :goto_1
    iput-boolean p3, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mIsVideoType:Z

    .line 132
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mParameterConfigure:Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;

    if-eqz p0, :cond_2

    .line 133
    invoke-virtual {p0, p3}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->setIsVideoType(Z)V

    :cond_2
    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 4

    .line 185
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    sget-object v0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onValueChanged], value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 189
    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mIsVideoType:Z

    if-eqz v2, :cond_0

    .line 190
    invoke-interface {v0, p1, v1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, p1, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 193
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
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

    .line 139
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 140
    sget-object p3, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "headerKey ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " currentValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string p3, "key_anti_video"

    .line 141
    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    const-string p3, "key_video_facebeauty"

    .line 142
    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    const-string p3, "key_video_portrait"

    .line 143
    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_0
    const-string p1, "off"

    .line 144
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 145
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mIsSettingSupport:Z

    .line 146
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 148
    invoke-interface {p3, p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 151
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mIsSettingSupport:Z

    .line 153
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->getKey()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p3, p2, p0, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    return-void
.end method

.method public unInit()V
    .locals 1

    .line 55
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    .line 56
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_0

    const-string v0, "key_video_quality"

    .line 57
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
