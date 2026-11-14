.class public Lcom/transsion/camera/app/common/setting/SettingManager;
.super Ljava/lang/Object;
.source "SettingManager.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ISettingManager;
.implements Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
.implements Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;
.implements Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;
.implements Lcom/transsion/camera/app/common/battery/IBatteryListener;


# instance fields
.field private mBatteryStatus:I

.field private mBindModeEventLock:Ljava/lang/Object;

.field private mCameraId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mDisPatchListener:Lcom/transsion/camera/app/common/setting/ISettingManager$DispatchListener;

.field private mFeatureProvider:Lcom/transsion/camera/app/common/provider/FeatureProvider;

.field private mInitialized:Z

.field private mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

.field private mModeKey:Ljava/lang/String;

.field private mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

.field private mPendingBindModeEvents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList;",
            ">;"
        }
    .end annotation
.end field

.field private final mRestrictionDispatcher:Lcom/transsion/camera/app/common/relation/RestrictionDispatcher;

.field private mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

.field private mSettingDeviceRequesterProxy:Lcom/transsion/camera/app/common/setting/SettingDeviceRequesterProxy;

.field private final mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

.field private final mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private mTemperatureStatus:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/transsion/camera/app/common/setting/SettingTable;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/setting/SettingTable;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    .line 39
    new-instance v0, Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 40
    new-instance v0, Lcom/transsion/camera/app/common/relation/RestrictionDispatcher;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/relation/RestrictionDispatcher;-><init>(Lcom/transsion/camera/app/common/setting/SettingTable;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mRestrictionDispatcher:Lcom/transsion/camera/app/common/relation/RestrictionDispatcher;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mPendingBindModeEvents:Ljava/util/HashMap;

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mBindModeEventLock:Ljava/lang/Object;

    .line 52
    new-instance v0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    const/4 v1, -0x1

    .line 56
    iput v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mBatteryStatus:I

    .line 57
    iput v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTemperatureStatus:I

    return-void
.end method

.method private getSettingByModeType(Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/setting/ICameraSetting;",
            ">;"
        }
    .end annotation

    .line 666
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 667
    sget-object v1, Lcom/transsion/camera/app/common/setting/SettingManager$1;->$SwitchMap$com$transsion$camera$app$common$mode$ICameraMode$ModeType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 673
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    sget-object p1, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingTable;->getSettingListByType(Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 669
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    sget-object p1, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingTable;->getSettingListByType(Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private isDifferentMode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mModeKey:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCameraId:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

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
.method public bindMode(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .line 229
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[bindMode] modeKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", modeType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", cameraId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 230
    iput-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    .line 231
    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mModeKey:Ljava/lang/String;

    .line 232
    iput-object p3, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCameraId:Ljava/lang/String;

    .line 233
    iget-object p3, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    invoke-virtual {p3}, Lcom/transsion/camera/app/common/setting/SettingTable;->getAllSettings()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 234
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 243
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    .line 244
    invoke-interface {p3, p1, p2, p4}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void

    .line 235
    :cond_2
    :goto_1
    iget-object p3, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mBindModeEventLock:Ljava/lang/Object;

    monitor-enter p3

    .line 236
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 237
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mPendingBindModeEvents:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    monitor-exit p3

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public configCommand(Ljava/lang/String;Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 3

    .line 653
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[configCommand] key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 654
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingTable;->get(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ICameraSetting;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 656
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;->configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V

    :cond_0
    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 9

    .line 592
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[configParameters]+, mInitialized:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 593
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configParameters"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;

    move-result-object v0

    .line 599
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->activeAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 603
    :cond_1
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    invoke-direct {p0, v2}, Lcom/transsion/camera/app/common/setting/SettingManager;->getSettingByModeType(Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;)Ljava/util/List;

    move-result-object v2

    .line 604
    iget-object v3, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/setting/SettingTable;->getAllConfigParametersSettings()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    const/4 v3, 0x0

    .line 606
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    .line 607
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_2

    .line 611
    :cond_3
    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 613
    invoke-interface {v5, p1}, Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;->configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I

    move-result v5

    goto :goto_1

    :cond_4
    move v5, v1

    :goto_1
    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 616
    iget-object v6, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[configParameters], need restartpreview:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", key:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    or-int/2addr v3, v5

    goto :goto_0

    .line 620
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->recycleAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)V

    .line 621
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[configParameters]-"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v3
.end method

.method public configParametersByKey(Lcom/transsion/camera/adapter/CameraParameters;Ljava/lang/String;)I
    .locals 4

    .line 627
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[configParametersByKey]+, mInitialized:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 628
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configParameters"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;

    move-result-object v0

    .line 634
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->activeAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 639
    :cond_1
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    invoke-virtual {v2, p2}, Lcom/transsion/camera/app/common/setting/SettingTable;->get(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ICameraSetting;

    move-result-object p2

    .line 641
    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 643
    invoke-interface {v2, p1}, Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;->configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I

    move-result v1

    .line 645
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[configParametersByKey], need restartpreview:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 646
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->recycleAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)V

    .line 647
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[configParameters]-"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method public createAllSettings()V
    .locals 9

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[createAllSettings]+, mInitialized:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 79
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mFeatureProvider:Lcom/transsion/camera/app/common/provider/FeatureProvider;

    const-class v1, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCameraId:Ljava/lang/String;

    .line 83
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/provider/FeatureProvider;->createFeatures(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 84
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[createAllSettings], there is no setting created, so return"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/setting/SettingTable;->getAllSettings()Ljava/util/List;

    move-result-object v1

    .line 90
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_4

    move v2, v3

    .line 91
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    move v4, v3

    .line 92
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 93
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    invoke-interface {v5}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 94
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    invoke-interface {v6}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 95
    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_5

    .line 103
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[createAllSettings], setting has created, so return"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 110
    :cond_5
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mBindModeEventLock:Ljava/lang/Object;

    monitor-enter v1

    .line 111
    :try_start_0
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mPendingBindModeEvents:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    const/4 v4, 0x0

    if-lez v2, :cond_7

    .line 112
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mPendingBindModeEvents:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 113
    iget-object v5, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mPendingBindModeEvents:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 114
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    .line 115
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    const/4 v3, 0x1

    .line 116
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v8, v4

    move-object v4, v2

    move-object v2, v8

    goto :goto_3

    :cond_6
    move-object v3, v4

    move-object v4, v2

    move-object v2, v3

    goto :goto_3

    :cond_7
    move-object v2, v4

    move-object v3, v2

    .line 119
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createAllSettings"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;

    move-result-object v1

    .line 123
    iget-object v5, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v5, v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->activeAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)Z

    move-result v5

    .line 124
    iget-object v6, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v7, "[createAllSettings] after activeAccess"

    invoke-static {v6, v7}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v5, :cond_8

    .line 126
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[createAllSettings], access active failed, return"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 129
    :cond_8
    iget-boolean v5, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    if-nez v5, :cond_9

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[createAllSettings], setting is uninitialized, return"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 131
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->recycleAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)V

    return-void

    .line 134
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    .line 135
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v6

    if-nez v6, :cond_b

    goto :goto_5

    .line 138
    :cond_b
    iget-object v6, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-interface {v5, v6, p0, v7}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 139
    iget-object v6, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    invoke-virtual {v6, v5}, Lcom/transsion/camera/app/common/setting/SettingTable;->add(Lcom/transsion/camera/app/common/setting/ICameraSetting;)V

    .line 140
    iget-object v6, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingDeviceRequesterProxy:Lcom/transsion/camera/app/common/setting/SettingDeviceRequesterProxy;

    invoke-interface {v5, v6}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->setSettingDeviceRequester(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    if-eqz v4, :cond_a

    if-eqz v2, :cond_a

    .line 142
    invoke-interface {v5, v4, v2, v3}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    goto :goto_4

    .line 145
    :cond_c
    :goto_5
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[createAllSettings] after init and onModeOpened"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 146
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 147
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingTable;->classify()V

    .line 149
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->recycleAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)V

    .line 150
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[createAllSettings]-"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 119
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;
    .locals 0

    .line 684
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingTable;->get(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ICameraSetting;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 686
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getISetting()Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCameraId()Ljava/lang/String;
    .locals 0

    .line 265
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCameraId:Ljava/lang/String;

    return-object p0
.end method

.method public getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;
    .locals 0

    .line 369
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method public getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    if-nez v0, :cond_0

    .line 352
    new-instance v0, Lcom/transsion/camera/app/common/location/LocationManager;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/location/LocationManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    .line 354
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    return-object p0
.end method

.method public getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .locals 0

    return-object p0
.end method

.method public getSettingDeviceConfigurator()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;
    .locals 0

    return-object p0
.end method

.method public getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;
    .locals 0

    return-object p0
.end method

.method public getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;
    .locals 0

    .line 332
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-object p0
.end method

.method public init(Ljava/lang/String;Landroid/content/Context;Lcom/transsion/camera/app/common/provider/FeatureProvider;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 3

    .line 61
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[init]+"

    .line 62
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 63
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "main"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "[init], this method should be invoked in main thread"

    invoke-static {v0, v2, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    :cond_0
    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCameraId:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    .line 69
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    .line 70
    iput-object p3, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mFeatureProvider:Lcom/transsion/camera/app/common/provider/FeatureProvider;

    .line 71
    iput-object p4, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 72
    new-instance p1, Lcom/transsion/camera/app/common/setting/SettingDeviceRequesterProxy;

    invoke-direct {p1}, Lcom/transsion/camera/app/common/setting/SettingDeviceRequesterProxy;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingDeviceRequesterProxy:Lcom/transsion/camera/app/common/setting/SettingDeviceRequesterProxy;

    .line 73
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[init]-"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onBatteryStatusChanged(ZII)V
    .locals 0

    .line 693
    iput p2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mBatteryStatus:I

    .line 694
    iput p3, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTemperatureStatus:I

    return-void
.end method

.method public onCaptureStarted()V
    .locals 5

    .line 487
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onCaptureStarted"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/profiler/PerformanceTracker;->create(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->start()Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;

    .line 492
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;

    move-result-object v1

    .line 494
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->activeAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 496
    invoke-interface {v0}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->stop()V

    return-void

    .line 500
    :cond_1
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    invoke-direct {p0, v2}, Lcom/transsion/camera/app/common/setting/SettingManager;->getSettingByModeType(Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;)Ljava/util/List;

    move-result-object v2

    .line 501
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    .line 502
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 505
    :cond_3
    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getDevicePictureStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 506
    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getDevicePictureStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;->onCaptureStart()V

    goto :goto_0

    .line 509
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->recycleAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)V

    .line 511
    invoke-interface {v0}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->stop()V

    return-void
.end method

.method public onPreviewStarted()V
    .locals 5

    .line 399
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onPreviewStarted], mInitialized:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 400
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onPreviewStarted"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/profiler/PerformanceTracker;->create(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->start()Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;

    .line 405
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;

    move-result-object v1

    .line 407
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->activeAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 412
    :cond_1
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    invoke-direct {p0, v2}, Lcom/transsion/camera/app/common/setting/SettingManager;->getSettingByModeType(Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;)Ljava/util/List;

    move-result-object v2

    .line 413
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    .line 414
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 417
    :cond_3
    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 418
    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;->onPreviewStarted()V

    goto :goto_0

    .line 421
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->recycleAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)V

    .line 423
    invoke-interface {v0}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->stop()V

    return-void
.end method

.method public onPreviewStopped()V
    .locals 4

    .line 374
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onPreviewStopped], mInitialized:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 375
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewStopped"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;

    move-result-object v0

    .line 381
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->activeAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 385
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/setting/SettingManager;->getSettingByModeType(Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;)Ljava/util/List;

    move-result-object v1

    .line 386
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    .line 387
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 390
    :cond_3
    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 391
    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;->onPreviewStopped()V

    goto :goto_0

    .line 394
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->recycleAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)V

    return-void
.end method

.method public onTakePictureEnded()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 429
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onTakePictureEnded"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/profiler/PerformanceTracker;->create(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->start()Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;

    .line 434
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;

    move-result-object v1

    .line 436
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->activeAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 438
    invoke-interface {v0}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->stop()V

    return-void

    .line 442
    :cond_1
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    invoke-direct {p0, v2}, Lcom/transsion/camera/app/common/setting/SettingManager;->getSettingByModeType(Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;)Ljava/util/List;

    move-result-object v2

    .line 443
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    .line 444
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 447
    :cond_3
    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getDevicePictureStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 448
    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getDevicePictureStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;->takePictureEnd()V

    goto :goto_0

    .line 451
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->recycleAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)V

    .line 453
    invoke-interface {v0}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->stop()V

    return-void
.end method

.method public onTakePictureStarted()V
    .locals 5

    .line 458
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "takePictureStart"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/profiler/PerformanceTracker;->create(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->start()Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;

    .line 463
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;

    move-result-object v1

    .line 465
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->activeAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 467
    invoke-interface {v0}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->stop()V

    return-void

    .line 471
    :cond_1
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    invoke-direct {p0, v2}, Lcom/transsion/camera/app/common/setting/SettingManager;->getSettingByModeType(Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;)Ljava/util/List;

    move-result-object v2

    .line 472
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    .line 473
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 476
    :cond_3
    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getDevicePictureStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 477
    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getDevicePictureStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;->takePictureStart()V

    goto :goto_0

    .line 480
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->recycleAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)V

    .line 482
    invoke-interface {v0}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->stop()V

    return-void
.end method

.method public pause()V
    .locals 4

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->activeAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/setting/SettingManager;->getSettingByModeType(Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;)Ljava/util/List;

    move-result-object v1

    .line 182
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    .line 183
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 186
    :cond_1
    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->pause()V

    goto :goto_0

    .line 188
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->recycleAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)V

    .line 189
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[pause]-"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public postDefaultRestriction(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 317
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postRestriction"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;

    move-result-object v0

    .line 322
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->activeAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 326
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mRestrictionDispatcher:Lcom/transsion/camera/app/common/relation/RestrictionDispatcher;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/common/relation/RestrictionDispatcher;->dispatchRestoreDefault(Ljava/util/List;)V

    .line 327
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->recycleAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)V

    return-void
.end method

.method public postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V
    .locals 3

    .line 297
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[postRestriction], "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/relation/Relation;->getHeaderKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/relation/Relation;->getHeaderValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " post relation. mInitialized:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 297
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 299
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postRestriction"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;

    move-result-object v0

    .line 304
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->activeAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 308
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mRestrictionDispatcher:Lcom/transsion/camera/app/common/relation/RestrictionDispatcher;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/common/relation/RestrictionDispatcher;->dispatch(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 309
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mDisPatchListener:Lcom/transsion/camera/app/common/setting/ISettingManager$DispatchListener;

    if-eqz p1, :cond_2

    .line 310
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$DispatchListener;->dispatchDone()V

    .line 312
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->recycleAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)V

    return-void
.end method

.method public queryEntryValues(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 279
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingTable;->get(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ICameraSetting;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 281
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public queryExtStatus(Ljava/lang/String;)I
    .locals 1

    const-string v0, "Battery"

    .line 359
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    iget p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mBatteryStatus:I

    return p0

    :cond_0
    const-string v0, "Temperature"

    .line 361
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 362
    iget p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTemperatureStatus:I

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public querySupportedPlatformValues(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 288
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingTable;->get(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ICameraSetting;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 290
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getSupportedPlatformValues()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public queryValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingTable;->get(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ICameraSetting;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 272
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public resume()V
    .locals 4

    .line 193
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resume"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->activeAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 200
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/setting/SettingManager;->getSettingByModeType(Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;)Ljava/util/List;

    move-result-object v1

    .line 201
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    .line 202
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 205
    :cond_1
    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->resume()V

    goto :goto_0

    .line 207
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->recycleAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)V

    .line 208
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[resume]-"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 5

    .line 553
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setCameraCapabilities]+, mInitialized:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 554
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraCapabilities"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;

    move-result-object v0

    .line 559
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->activeAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 563
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/setting/SettingManager;->getSettingByModeType(Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;)Ljava/util/List;

    move-result-object v1

    .line 564
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/setting/SettingTable;->getAllConfigParametersSettings()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 565
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    .line 566
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 569
    :cond_2
    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;->setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V

    goto :goto_0

    .line 571
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCameraId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getSettingsKeepSavingTime(I)Ljava/util/List;

    move-result-object p1

    const/4 v2, 0x0

    .line 572
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 573
    iget-object v3, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/common/setting/SettingTable;->get(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ICameraSetting;

    move-result-object v3

    .line 574
    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 576
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 579
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    .line 580
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_4

    .line 583
    :cond_6
    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->postRestrictionAfterInitialized()V

    goto :goto_3

    .line 585
    :cond_7
    :goto_4
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->recycleAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)V

    .line 586
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[setCameraCapabilities]-"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setDispatchListener(Lcom/transsion/camera/app/common/setting/ISettingManager$DispatchListener;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mDisPatchListener:Lcom/transsion/camera/app/common/setting/ISettingManager$DispatchListener;

    return-void
.end method

.method public unInit()V
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[unInit]+, mInitialized:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 155
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "main"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "[unInit], this method should be invoked in main thread"

    invoke-static {v0, v2, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    .line 159
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    .line 160
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingDeviceRequesterProxy:Lcom/transsion/camera/app/common/setting/SettingDeviceRequesterProxy;

    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingDeviceRequesterProxy;->unInit()V

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->startControl()V

    .line 164
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingTable;->getAllSettings()Ljava/util/List;

    move-result-object v0

    .line 165
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    .line 166
    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->unInit()V

    goto :goto_0

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingTable;->removeAll()V

    .line 169
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->stopControl()V

    .line 170
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[unInit]-"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public unbindMode(Ljava/lang/String;)V
    .locals 3

    .line 249
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[unbindMode] modeKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingTable;->getAllSettings()Ljava/util/List;

    move-result-object v0

    .line 251
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    .line 252
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->onModeClosed(Ljava/lang/String;)V

    goto :goto_0

    .line 254
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mBindModeEventLock:Ljava/lang/Object;

    monitor-enter p1

    .line 255
    :try_start_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mPendingBindModeEvents:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 256
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateMode(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .locals 4

    .line 214
    invoke-interface {p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/common/setting/SettingManager;->isDifferentMode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mModeKey:Ljava/lang/String;

    .line 217
    invoke-interface {p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeType()Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    move-result-object v2

    .line 218
    iget-object v3, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mContext:Landroid/content/Context;

    invoke-interface {p2, v3}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p2

    .line 219
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/SettingManager;->unbindMode(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0, v0, v2, p1, p2}, Lcom/transsion/camera/app/common/setting/SettingManager;->bindMode(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateModeDeviceRequester(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 0

    .line 516
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingDeviceRequesterProxy:Lcom/transsion/camera/app/common/setting/SettingDeviceRequesterProxy;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingDeviceRequesterProxy;->updateModeDeviceRequester(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    return-void
.end method
