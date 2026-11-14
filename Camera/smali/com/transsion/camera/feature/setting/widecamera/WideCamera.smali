.class public Lcom/transsion/camera/feature/setting/widecamera/WideCamera;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "WideCamera.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mIsMacroSupportZoom:Z

.field private mIsWideCamUISupport:Z

.field private mIsWideCamera:Z

.field private mIsWideSupportZoom:Z

.field private mNeedShow:Z

.field private mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private mWideCameraParameterConfigure:Lcom/transsion/camera/feature/setting/widecamera/WideCameraParametersConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mNeedShow:Z

    .line 40
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mIsWideCamera:Z

    .line 45
    new-instance v0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/widecamera/WideCamera$1;-><init>(Lcom/transsion/camera/feature/setting/widecamera/WideCamera;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 33
    sget-object v0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/widecamera/WideCamera;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mNeedShow:Z

    return p0
.end method

.method static synthetic access$102(Lcom/transsion/camera/feature/setting/widecamera/WideCamera;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mNeedShow:Z

    return p1
.end method

.method private addZoomRangeRelation(Lcom/transsion/camera/app/common/relation/Relation;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 176
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mIsWideCamUISupport:Z

    const-string v1, "value_zoom_support_wide_active"

    const-string v2, "key_camera_zoom"

    if-eqz v0, :cond_0

    .line 177
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mIsWideSupportZoom:Z

    if-nez p0, :cond_1

    const-string p0, "150,250"

    .line 178
    invoke-virtual {p1, v2, v1, p0}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "100,200"

    .line 181
    invoke-virtual {p1, v2, v1, p0}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private handleRestriction(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p1

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mIsWideSupportZoom:Z

    invoke-static {p1, v0, v1}, Lcom/transsion/camera/feature/setting/widecamera/WideCameraRestriction;->getWideCameraRelation(Ljava/lang/String;ZZ)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    .line 163
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mIsMacroSupportZoom:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->addZoomRangeRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    goto :goto_0

    .line 167
    :cond_0
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mIsWideSupportZoom:Z

    const-string v1, "reset"

    invoke-static {v1, v0, p1}, Lcom/transsion/camera/feature/setting/widecamera/WideCameraRestriction;->getWideCameraRelation(Ljava/lang/String;ZZ)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 170
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    :cond_2
    return-void
.end method

.method private isMacroSupportZoom(Landroid/content/Context;)Z
    .locals 1

    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "is_macro_support_zoom"

    .line 192
    invoke-static {p1, v0, p0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isWideCamUISupport(Landroid/content/Context;)Z
    .locals 1

    .line 188
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "is_widecam_item_ui_support_in_widecam"

    .line 187
    invoke-static {p1, v0, p0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isWideSupportZoom(Landroid/content/Context;)Z
    .locals 0

    const-string p0, "zoom_style_type"

    .line 197
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "wide_camera"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mWideCameraParameterConfigure:Lcom/transsion/camera/feature/setting/widecamera/WideCameraParametersConfig;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lcom/transsion/camera/feature/setting/widecamera/WideCameraParametersConfig;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/widecamera/WideCameraParametersConfig;-><init>(Lcom/transsion/camera/feature/setting/widecamera/WideCamera;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mWideCameraParameterConfigure:Lcom/transsion/camera/feature/setting/widecamera/WideCameraParametersConfig;

    .line 118
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mWideCameraParameterConfigure:Lcom/transsion/camera/feature/setting/widecamera/WideCameraParametersConfig;

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 105
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

    .line 151
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 0

    .line 72
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 73
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->isWideCamUISupport(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mIsWideCamUISupport:Z

    .line 74
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->isMacroSupportZoom(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mIsMacroSupportZoom:Z

    .line 75
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->isWideSupportZoom(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mIsWideSupportZoom:Z

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

    .line 80
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getWideCameraId()Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mIsWideCamera:Z

    .line 82
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-interface {p1}, Ljava/util/List;->clear()V

    const-string p2, "off"

    .line 86
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 87
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 88
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 89
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 90
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public onModeClosed(Ljava/lang/String;)V
    .locals 0

    .line 100
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    return-void
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 7

    .line 140
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    sget-object v0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onWideCameraValueChanged] value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    const-string v0, "on"

    .line 143
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mIsWideCamera:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mNeedShow:Z

    .line 144
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v2, "wide_camera"

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 145
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mIsWideCamera:Z

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->handleRestriction(Z)V

    :cond_1
    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
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

    .line 124
    sget-object v0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[overrideValues] headerKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,currentValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p2, :cond_0

    return-void

    .line 129
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    const-string p1, "on"

    .line 130
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mNeedShow:Z

    .line 131
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v1, "wide_camera"

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mIsWideCamera:Z

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->handleRestriction(Z)V

    return-void
.end method
