.class public Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "FaceAttribute.java"


# static fields
.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mFaceAttributeCallback:Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;

.field private mFaceAttributeParameterConfigure:Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;

.field private mIsModeSupport:Z

.field private mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->mIsModeSupport:Z

    .line 34
    new-instance v0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute$1;-><init>(Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->mFaceAttributeCallback:Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;

    .line 47
    new-instance v0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute$2;-><init>(Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;)Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->mFaceAttributeParameterConfigure:Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->requestFaceAttribute()V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;)Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->mFaceAttributeCallback:Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;

    return-object p0
.end method

.method private requestFaceAttribute()V
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->mFaceAttributeParameterConfigure:Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;

    if-eqz p0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;->changeCommand()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_gender_attribute_value"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->mFaceAttributeParameterConfigure:Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;-><init>(Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->mFaceAttributeParameterConfigure:Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;

    .line 114
    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;->changeCommand()V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->mFaceAttributeParameterConfigure:Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->mFaceAttributeCallback:Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;->setFaceAttribute(Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;)V

    .line 117
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->mFaceAttributeParameterConfigure:Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 102
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

    .line 131
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 0

    .line 66
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 67
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    const-string p2, "1"

    .line 68
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p2, "2"

    .line 69
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

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

    .line 87
    sget-object v0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initializeValue], platformSupportedValues: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " default value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 91
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 92
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 93
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 94
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 95
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 97
    sget-object p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[initializeValue], mDataStore: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public isModeSupport()Z
    .locals 0

    .line 146
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->mIsModeSupport:Z

    return p0
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 81
    :try_start_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 82
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->mIsModeSupport:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .locals 0

    .line 75
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->mIsModeSupport:Z

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 4

    .line 122
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 124
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->mFaceAttributeParameterConfigure:Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;

    if-eqz p0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;->sendSettingChangeRequest()V

    :cond_0
    return-void
.end method
