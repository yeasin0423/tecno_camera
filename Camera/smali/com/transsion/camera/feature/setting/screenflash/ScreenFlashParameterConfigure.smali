.class public Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;
.super Ljava/lang/Object;
.source "ScreenFlashParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private volatile mCachedFlashRequired:Z

.field private mCaptureState:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mFlashFireCallback:Lcom/transsion/camera/feature/setting/screenflash/IFlashFireCallback;

.field private mFlashRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mFlashStateCallback:Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;

.field private mLedFlashSupported:Z

.field private mScreenFlash:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

.field private mScreenFlashFireSupported:Z

.field private mScreenFlashSupported:Z

.field private mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field private mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;Lcom/transsion/camera/feature/setting/screenflash/IFlashFireCallback;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mCaptureState:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mFlashRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    new-instance v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure$1;-><init>(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mFlashStateCallback:Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;

    .line 74
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mScreenFlash:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    .line 75
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mFlashFireCallback:Lcom/transsion/camera/feature/setting/screenflash/IFlashFireCallback;

    .line 76
    iput-object p3, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 77
    iput-object p4, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method

.method static synthetic access$002(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mCachedFlashRequired:Z

    return p1
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;Z)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->handleFlashRequiredState(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mScreenFlashFireSupported:Z

    return p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;)Lcom/transsion/camera/feature/setting/screenflash/IFlashFireCallback;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mFlashFireCallback:Lcom/transsion/camera/feature/setting/screenflash/IFlashFireCallback;

    return-object p0
.end method

.method private configParametersImpl(Lcom/transsion/camera/adapter/CameraParameters;)V
    .locals 6

    .line 139
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mScreenFlash:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_flash"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 141
    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mLedFlashSupported:Z

    const-string v3, "auto"

    const-string v4, "off"

    const-string v5, "on"

    if-nez v2, :cond_4

    .line 142
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v4

    goto :goto_1

    .line 144
    :cond_0
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 145
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mFlashRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_1

    move-object v0, v5

    goto :goto_0

    :cond_1
    move-object v0, v4

    :goto_0
    move-object v1, v0

    goto :goto_1

    .line 152
    :cond_2
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move-object v0, v5

    .line 155
    :cond_3
    :goto_1
    sget-object p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configParameters ledFlashValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_3

    .line 158
    :cond_4
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 159
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mFlashRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_5

    move-object v0, v5

    goto :goto_2

    :cond_5
    move-object v0, v4

    :goto_2
    move-object v1, v0

    .line 167
    :cond_6
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setFlashMode(Ljava/lang/String;)V

    .line 170
    :goto_3
    sget-object p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configParameters screenFlashValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 171
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setScreenFlashMode(Ljava/lang/String;)V

    return-void
.end method

.method private handleFlashRequiredState(Z)V
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mCaptureState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    sget-object p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "drop the flash state when it is capturing"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_flash"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 194
    sget-object p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "do nothing if it isn\'t auto mode"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mFlashRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eq v0, p1, :cond_2

    .line 199
    sget-object v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flash state is changed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mFlashRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 202
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mScreenFlash:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 4

    .line 176
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_flash"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    sget-object v1, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configCommand ledFlashValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v1, "auto"

    .line 179
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "on"

    .line 180
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 183
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->setFlashStateCallback(Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;)V

    goto :goto_1

    .line 181
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mFlashStateCallback:Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->setFlashStateCallback(Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;)V

    :goto_1
    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 2

    .line 124
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mScreenFlashSupported:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 125
    sget-object p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "screen flash is not support"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mCaptureState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    sget-object p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "don\'t config parameters when it is capturing"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 133
    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->configParametersImpl(Lcom/transsion/camera/adapter/CameraParameters;)V

    const/4 p0, 0x0

    return p0
.end method

.method isFlashRequired()Z
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mFlashRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method isLedFlashSupport()Z
    .locals 0

    .line 211
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mLedFlashSupported:Z

    return p0
.end method

.method isScreenFlashFireSupport()Z
    .locals 0

    .line 233
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mScreenFlashFireSupported:Z

    return p0
.end method

.method isScreenFlashSupport()Z
    .locals 0

    .line 207
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mScreenFlashSupported:Z

    return p0
.end method

.method public sendSettingChangeRequest()V
    .locals 2

    .line 82
    sget-object v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "sendSettingChangeRequest"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mScreenFlash:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 5

    .line 89
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedScreenFlashModes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 90
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mScreenFlashSupported:Z

    .line 91
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mScreenFlash:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    and-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mScreenFlashSupported:Z

    .line 93
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isScreenFlashFireSupport()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mScreenFlashFireSupported:Z

    .line 95
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedFlashModes()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 96
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v2, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mLedFlashSupported:Z

    .line 98
    sget-object p1, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mScreenFlashSupported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mScreenFlashSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenFlashFireSupported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mScreenFlashFireSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mLedFlashSupported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mLedFlashSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 103
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "off"

    .line 104
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mScreenFlashSupported:Z

    const-string v2, "auto"

    if-eqz v1, :cond_3

    .line 107
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mLedFlashSupported:Z

    const-string v3, "on"

    if-eqz v1, :cond_2

    .line 109
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 112
    :cond_2
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v2

    .line 119
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mScreenFlash:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method updateCaptureState(Z)V
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mCaptureState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method updateFlashRequiredState(Z)V
    .locals 0

    .line 219
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mFlashRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method updateFlashState()V
    .locals 3

    .line 227
    sget-object v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateFlashState mCachedFlashRequired: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mCachedFlashRequired:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 229
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mCachedFlashRequired:Z

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->handleFlashRequiredState(Z)V

    return-void
.end method
