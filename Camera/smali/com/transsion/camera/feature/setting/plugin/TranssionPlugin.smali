.class public Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "TranssionPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin$StatusChangeListener;
    }
.end annotation


# static fields
.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAntiVideoPlugInValue:I

.field private mIsModeSupport:Z

.field private mParameterConfigure:Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;

.field private mStatusChangeListener:Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin$StatusChangeListener;

.field private mVideoQualityPlugInValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mIsModeSupport:Z

    const/4 v0, -0x1

    .line 35
    iput v0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mAntiVideoPlugInValue:I

    .line 36
    iput v0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mVideoQualityPlugInValue:I

    .line 37
    new-instance v0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin$StatusChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin$StatusChangeListener;-><init>(Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin$1;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin$StatusChangeListener;

    return-void
.end method

.method static synthetic access$102(Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mAntiVideoPlugInValue:I

    return p1
.end method

.method static synthetic access$202(Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mVideoQualityPlugInValue:I

    return p1
.end method

.method private registerKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private unRegisterKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_tran_plugin"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mParameterConfigure:Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;

    return-object p0
.end method

.method public getPlugInValue()I
    .locals 2

    .line 184
    iget v0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mAntiVideoPlugInValue:I

    if-eqz v0, :cond_3

    iget p0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mVideoQualityPlugInValue:I

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0

    :cond_2
    :goto_0
    return v1

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 115
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

    .line 147
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 0

    .line 78
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 79
    new-instance p1, Lcom/transsion/camera/feature/setting/plugin/TranssionPluginParameterConfig;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/setting/plugin/TranssionPluginParameterConfig;-><init>(Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mParameterConfigure:Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;

    .line 80
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_0

    const-string p1, "key_anti_video"

    .line 81
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->registerKeyToMonitor(Ljava/lang/String;)V

    const-string p1, "key_video_quality"

    .line 82
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->registerKeyToMonitor(Ljava/lang/String;)V

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

    .line 97
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 98
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 99
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 100
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 101
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    const-string p1, "key_anti_video"

    .line 103
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "on"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 104
    iput p2, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mAntiVideoPlugInValue:I

    :cond_0
    const-string p1, "key_video_quality"

    .line 106
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "6_60"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 109
    :cond_1
    iput p2, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mVideoQualityPlugInValue:I

    :cond_2
    return-void
.end method

.method public isModeSupport()Z
    .locals 0

    .line 180
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mIsModeSupport:Z

    return p0
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 173
    :try_start_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 174
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mIsModeSupport:Z

    const/4 p1, -0x1

    .line 175
    iput p1, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mAntiVideoPlugInValue:I

    .line 176
    iput p1, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mVideoQualityPlugInValue:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .locals 2

    .line 152
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mIsModeSupport:Z

    const-string p1, "key_tran_plugin_mode_can_support"

    .line 154
    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 155
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p2

    const-string p3, "key_anti_video"

    const-string v0, "off"

    invoke-virtual {p1, p3, v0, p2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "on"

    .line 156
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    .line 157
    iput p2, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mAntiVideoPlugInValue:I

    goto :goto_0

    .line 159
    :cond_0
    iput p3, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mAntiVideoPlugInValue:I

    :goto_0
    const-string p1, "key_video_quality"

    .line 161
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 162
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 163
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "6_60"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 166
    :cond_1
    iput p2, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mVideoQualityPlugInValue:I

    goto :goto_2

    .line 164
    :cond_2
    :goto_1
    iput p3, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mVideoQualityPlugInValue:I

    :cond_3
    :goto_2
    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 3

    .line 130
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
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

    .line 139
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    const-string p1, "off"

    .line 140
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string p2, "0"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 141
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->onValueChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 1

    .line 88
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    .line 89
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_0

    const-string v0, "key_anti_video"

    .line 90
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_video_quality"

    .line 91
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
