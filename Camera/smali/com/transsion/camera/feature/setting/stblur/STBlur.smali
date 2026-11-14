.class public Lcom/transsion/camera/feature/setting/stblur/STBlur;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "STBlur.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBWConvertValue:Ljava/lang/String;

.field private mIsBWLensSupport:Z

.field private mIsFakeDualLensSupport:Z

.field private mIsSTBlurModeSupport:Z

.field private mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private mSTBlurParameterConfigure:Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;

.field private mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/stblur/STBlur;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/stblur/STBlur;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const-string v0, "on"

    .line 29
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur;->mBWConvertValue:Ljava/lang/String;

    .line 120
    new-instance v0, Lcom/transsion/camera/feature/setting/stblur/STBlur$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/stblur/STBlur$1;-><init>(Lcom/transsion/camera/feature/setting/stblur/STBlur;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/stblur/STBlur;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method


# virtual methods
.method protected getBWConvertValue()Ljava/lang/String;
    .locals 1

    .line 109
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur;->mIsBWLensSupport:Z

    if-eqz v0, :cond_0

    .line 110
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur;->mBWConvertValue:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, "off"

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_st_blur"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur;->mSTBlurParameterConfigure:Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;-><init>(Lcom/transsion/camera/feature/setting/stblur/STBlur;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur;->mSTBlurParameterConfigure:Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur;->mSTBlurParameterConfigure:Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    return-object v0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-object p0
.end method

.method public getSTBlurModeSupport()Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur;->mIsSTBlurModeSupport:Z

    return p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 56
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

    .line 75
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 0

    .line 33
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
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

    .line 38
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 39
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 40
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 41
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method protected isFakeDualLensSupport()Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur;->mIsFakeDualLensSupport:Z

    return p0
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 88
    :try_start_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 89
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur;->mIsSTBlurModeSupport:Z

    .line 90
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur;->mIsFakeDualLensSupport:Z

    .line 91
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur;->mIsBWLensSupport:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .locals 0

    .line 80
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/stblur/STBlur;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur;->mIsSTBlurModeSupport:Z

    const-string p1, "key_is_stblur_fake"

    .line 82
    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur;->mIsFakeDualLensSupport:Z

    const-string p1, "key_bw_convert"

    .line 83
    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur;->mIsBWLensSupport:Z

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 3

    .line 66
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    sget-object v0, Lcom/transsion/camera/feature/setting/stblur/STBlur;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onValueChanged], value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 69
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    :cond_0
    return-void
.end method

.method protected setBWConvertValue(I)V
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur;->mIsBWLensSupport:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "off"

    goto :goto_0

    :cond_0
    const-string p1, "on"

    .line 104
    :goto_0
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur;->mBWConvertValue:Ljava/lang/String;

    :cond_1
    return-void
.end method
