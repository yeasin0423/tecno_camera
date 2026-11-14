.class public Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SuperDefinition.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBillionPixelSupport:Z

.field private mCloseByBv:Z

.field private mHighDefinitionMode:Z

.field private mIsModeSupport:Z

.field mParameterConfigure:Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;

.field private mPreviousState:Ljava/lang/String;

.field private mSatSuppot:Z

.field mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const-string v0, "off"

    .line 32
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mPreviousState:Ljava/lang/String;

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mIsModeSupport:Z

    .line 34
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mBillionPixelSupport:Z

    .line 35
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mHighDefinitionMode:Z

    .line 36
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mSatSuppot:Z

    .line 37
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mCloseByBv:Z

    return-void
.end method

.method private handleRestriction(Z)V
    .locals 2

    .line 171
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mHighDefinitionMode:Z

    if-eqz v0, :cond_0

    return-void

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionRestriction;->getSuperDefinitionRestriction(Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v1

    .line 176
    invoke-virtual {v1, v0, p1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 180
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_super_definition"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mParameterConfigure:Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;-><init>(Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mParameterConfigure:Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;

    .line 54
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mParameterConfigure:Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;

    return-object p0
.end method

.method public getPreviousState()Ljava/lang/String;
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mPreviousState:Ljava/lang/String;

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 100
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public getStoreScope()Ljava/lang/String;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

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

    .line 185
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 1

    .line 40
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    const-string v0, "billion_pixel_support"

    invoke-static {p1, v0, p3}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mBillionPixelSupport:Z

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    const-string v0, "high_definition_mode"

    invoke-static {p1, v0, p3}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mHighDefinitionMode:Z

    .line 43
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz p1, :cond_0

    const-string p1, "on"

    .line 45
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mPreviousState:Ljava/lang/String;

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

    .line 64
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 65
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 66
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 68
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getStoreScope()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_super_definition"

    invoke-virtual {p1, v1, p2, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 69
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 70
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mHighDefinitionMode:Z

    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "off"

    .line 73
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public isBillionPixelSupport()Z
    .locals 0

    .line 193
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mBillionPixelSupport:Z

    return p0
.end method

.method public isCameraFacingBack()Z
    .locals 0

    .line 201
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    .line 202
    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isClosebyBv()Z
    .locals 0

    .line 210
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mCloseByBv:Z

    return p0
.end method

.method public isHighDefinitionMode()Z
    .locals 0

    .line 197
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mHighDefinitionMode:Z

    return p0
.end method

.method public isModeSupport()Z
    .locals 0

    .line 189
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mIsModeSupport:Z

    return p0
.end method

.method public onModeClosed(Ljava/lang/String;)V
    .locals 6

    .line 85
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    .line 86
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mIsModeSupport:Z

    if-eqz p1, :cond_1

    .line 87
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mHighDefinitionMode:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mSatSuppot:Z

    if-nez p1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v1, "key_super_definition"

    const-string v2, "off"

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string p1, "off"

    .line 89
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValueOnly(Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_0
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mHighDefinitionMode:Z

    if-eqz p1, :cond_1

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v1, "key_super_definition"

    const-string v2, "on"

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string p1, "on"

    .line 92
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValueOnly(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 95
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mIsModeSupport:Z

    return-void
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .locals 0

    .line 80
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mIsModeSupport:Z

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 7

    .line 141
    sget-object v0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onSuperDefinitionValueChanged] value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mPreviousState:Ljava/lang/String;

    .line 143
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    const-string v2, "key_super_definition"

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 144
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 146
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->handleRestriction(Z)V

    .line 147
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_super_definition"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    :cond_0
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

    const-string v0, "key_portraitmode_enhance"

    .line 111
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "off"

    if-eqz v0, :cond_0

    .line 112
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 113
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->onValueChanged(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "com.transsion.camera.feature.mode.highdefinition.HighDefinitionModeEntry"

    .line 115
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mCloseByBv:Z

    .line 117
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .locals 0

    return-void
.end method

.method public restoreToSupportedPlatformValue()V
    .locals 8

    .line 154
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mHighDefinitionMode:Z

    const-string v1, "on"

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 156
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getStoreScope()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v3, "key_super_definition"

    const-string v4, "on"

    invoke-virtual/range {v2 .. v7}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 158
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mIsModeSupport:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    :cond_1
    const-string v0, "off"

    .line 161
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v2, "key_super_definition"

    const-string v3, "off"

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    :goto_0
    return-void
.end method

.method public setSatSupport(Z)V
    .locals 0

    .line 206
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mSatSuppot:Z

    return-void
.end method

.method public unInit()V
    .locals 1

    .line 59
    sget-object p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "unInit"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
