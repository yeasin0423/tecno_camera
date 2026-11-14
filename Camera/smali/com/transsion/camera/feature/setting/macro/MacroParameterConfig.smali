.class public Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;
.super Ljava/lang/Object;
.source "MacroParameterConfig.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCount:I

.field private mIsMacroActive:Z

.field private mIsMacroTorchSupport:Z

.field private mMacro:Lcom/transsion/camera/feature/setting/macro/Macro;

.field private mMacroData:[F

.field private mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

.field mSupportedValues:Ljava/util/List;
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

    .line 23
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/macro/Macro;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->mSupportedValues:Ljava/util/List;

    const/16 v0, 0xa

    new-array v0, v0, [F

    .line 29
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->mMacroData:[F

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->mCount:I

    .line 31
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->mIsMacroActive:Z

    .line 36
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->mIsMacroTorchSupport:Z

    .line 83
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->mMacro:Lcom/transsion/camera/feature/setting/macro/Macro;

    .line 84
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public isMacroTorchSupport()Z
    .locals 0

    .line 143
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->mIsMacroTorchSupport:Z

    return p0
.end method

.method protected refreshToUI(ZZ)V
    .locals 1

    .line 123
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->mMacro:Lcom/transsion/camera/feature/setting/macro/Macro;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 127
    invoke-interface {p0, v0, p2}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 129
    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->mMacro:Lcom/transsion/camera/feature/setting/macro/Macro;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/macro/Macro;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 2

    .line 94
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isWideCameraSupport()Z

    .line 95
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isMacroTorchSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->mIsMacroTorchSupport:Z

    .line 97
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->mSupportedValues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 98
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->mSupportedValues:Ljava/util/List;

    const-string v0, "off"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->mSupportedValues:Ljava/util/List;

    const-string v1, "on"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->mMacro:Lcom/transsion/camera/feature/setting/macro/Macro;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->mSupportedValues:Ljava/util/List;

    invoke-virtual {p1, p0, v0}, Lcom/transsion/camera/feature/setting/macro/Macro;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method protected setPreviewed(Z)V
    .locals 0

    return-void
.end method
