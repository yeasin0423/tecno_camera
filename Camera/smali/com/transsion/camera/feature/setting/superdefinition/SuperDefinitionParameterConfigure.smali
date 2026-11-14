.class public Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;
.super Ljava/lang/Object;
.source "SuperDefinitionParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final OFF:I

.field private static final ON:I

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field mSuperDefinition:Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;

.field private mSuperDefinitionSupport:Z

.field private mSupportedSuperResolution:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "0"

    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->OFF:I

    const-string v0, "1"

    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->ON:I

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->mSuperDefinitionSupport:Z

    .line 39
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->mSupportedSuperResolution:Z

    .line 43
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->mSuperDefinition:Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 5

    .line 79
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->mSuperDefinitionSupport:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 80
    sget-object p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "super definition is not supported"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->mSuperDefinition:Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->isModeSupport()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->mSuperDefinition:Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;

    .line 84
    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getPreviousState()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->mSuperDefinition:Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->mSuperDefinition:Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v2, "on"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v3, "0"

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->mSuperDefinition:Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;

    .line 88
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v4, "billion"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->mSuperDefinition:Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;

    const-string v4, "key_algorithm_migrate"

    .line 89
    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->mSuperDefinition:Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->isClosebyBv()Z

    move-result v0

    if-nez v0, :cond_4

    .line 91
    sget v0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->ON:I

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperDefinitionMode(I)V

    .line 92
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->mSupportedSuperResolution:Z

    if-eqz p0, :cond_3

    sget p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->ON:I

    goto :goto_0

    :cond_3
    sget p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->OFF:I

    :goto_0
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperResolutionMode(I)V

    .line 93
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    const-string p1, "1"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setHdValue(Ljava/lang/String;)V

    goto :goto_1

    .line 95
    :cond_4
    sget p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->OFF:I

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperDefinitionMode(I)V

    .line 96
    sget p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->OFF:I

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperResolutionMode(I)V

    .line 97
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setHdValue(Ljava/lang/String;)V

    goto :goto_1

    .line 100
    :cond_5
    sget p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->OFF:I

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperDefinitionMode(I)V

    .line 101
    sget p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->OFF:I

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperResolutionMode(I)V

    .line 102
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setHdValue(Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public sendSettingChangeRequest()V
    .locals 0

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 6

    .line 52
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSupportedSuperDefinition()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->mSuperDefinitionSupport:Z

    .line 53
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSupportedSuperResolution()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->mSupportedSuperResolution:Z

    .line 54
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->mSuperDefinition:Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;

    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSatModeSupport()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->setSatSupport(Z)V

    .line 55
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->mSuperDefinition:Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->isBillionPixelSupport()Z

    move-result p1

    .line 56
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->mSuperDefinition:Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->isHighDefinitionMode()Z

    move-result v0

    .line 57
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->mSuperDefinition:Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->isCameraFacingBack()Z

    move-result v1

    .line 59
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 60
    iget-boolean v3, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->mSuperDefinitionSupport:Z

    const-string v4, "off"

    const-string v5, "on"

    if-eqz v3, :cond_1

    .line 61
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_1

    .line 63
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->mSuperDefinition:Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->isModeSupport()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 64
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 65
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    const-string v1, "billion"

    .line 67
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object v4, v5

    .line 72
    :cond_1
    sget-object v1, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSuperDefinitionSupport:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->mSuperDefinitionSupport:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " billionPixelSupport:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " isHighDefinitionMode:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "support:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " defaultValue:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 74
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->mSuperDefinition:Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;

    invoke-virtual {p0, v2, v4}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
