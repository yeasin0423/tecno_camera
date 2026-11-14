.class public Lcom/transsion/camera/feature/slimbody/mode/SlimBodyModeEntry;
.super Lcom/transsion/camera/app/common/provider/FeatureEntryBase;
.source "SlimBodyModeEntry.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SlimBodyModeEntry"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/slimbody/mode/SlimBodyModeEntry;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 30
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/mode/SlimBodyModeEntry;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/transsion/camera/feature/slimbody/mode/SlimBodyModeEntry;->mResources:Landroid/content/res/Resources;

    .line 32
    sget-object p0, Lcom/transsion/camera/feature/slimbody/mode/SlimBodyModeEntry;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "SlimBodyModeEntry"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private getBeautyModeVersion()I
    .locals 1

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/mode/SlimBodyModeEntry;->mContext:Landroid/content/Context;

    const-string v0, "beauty_mode_version"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public createFeature()Ljava/lang/Object;
    .locals 5

    .line 41
    new-instance v0, Lcom/transsion/camera/feature/slimbody/mode/SlimBodyMode;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/mode/SlimBodyModeEntry;->getFeatureName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/slimbody/mode/SlimBodyMode;-><init>(Ljava/lang/String;)V

    .line 42
    new-instance v1, Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/mode/SlimBodyModeEntry;->getFeatureName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;-><init>(Ljava/lang/String;)V

    .line 43
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/mode/SlimBodyModeEntry;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/feature/slimbody/R$array;->sb_mode_interactive_setting_ui_entries:I

    .line 44
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 43
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setModeInteractiveSettingUIEntries([Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/mode/SlimBodyModeEntry;->getBeautyModeVersion()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 46
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/mode/SlimBodyModeEntry;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/feature/slimbody/R$array;->advanced_sb_mode_setting_ui_entries:I

    .line 47
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setModeSettingUIEntries([Ljava/lang/String;)V

    .line 48
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/mode/SlimBodyModeEntry;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/feature/slimbody/R$array;->advanced_sb_mode_top_bar_setting_ui_entries:I

    .line 49
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setTopBarSettingUIEntries([Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_0
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/mode/SlimBodyModeEntry;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/feature/slimbody/R$array;->sb_mode_setting_ui_entries:I

    .line 52
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setModeSettingUIEntries([Ljava/lang/String;)V

    .line 53
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/mode/SlimBodyModeEntry;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/feature/slimbody/R$array;->sb_mode_top_bar_setting_ui_entries:I

    .line 54
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setTopBarSettingUIEntries([Ljava/lang/String;)V

    .line 56
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/mode/SlimBodyModeEntry;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/feature/slimbody/R$array;->sb_mode_preference_setting_ui_entries:I

    .line 57
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setPreferenceSettingUIEntries([Ljava/lang/String;)V

    .line 58
    sget v2, Lcom/transsion/camera/feature/slimbody/R$array;->slimbody_mode_guide_layouts:I

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setModeGuideLayoutsArrayId(I)V

    .line 61
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/mode/SlimBodyModeEntry;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/feature/slimbody/R$bool;->slimbody_mode_support_wide_camera:I

    .line 62
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 63
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setSupportWideCamera(Z)V

    .line 65
    iget-object v3, p0, Lcom/transsion/camera/feature/slimbody/mode/SlimBodyModeEntry;->mContext:Landroid/content/Context;

    const-string v4, "zoom_style_type"

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/mode/SlimBodyModeEntry;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/feature/slimbody/R$array;->slimbody_mode_zoom_ui_entries:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 71
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/mode/SlimBodyModeEntry;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/feature/slimbody/R$array;->slimbody_mode_side_bar_setting_ui_entries:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    :goto_1
    const-string v3, "com.transsion.camera.ui.setting.zoom.TeleZoomSettingUIEntry"

    .line 75
    invoke-static {p0, v3}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 76
    invoke-virtual {v1, v3}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setSupportTeleCamera(Z)V

    if-nez v2, :cond_2

    if-eqz v3, :cond_3

    .line 78
    :cond_2
    invoke-virtual {v1, p0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setWideCameraSettingUIEntries([Ljava/lang/String;)V

    .line 81
    :cond_3
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraMode;->setModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;)V

    return-object v0
.end method

.method public createFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;
    .locals 3

    .line 98
    new-instance v0, Lcom/transsion/camera/app/common/FeatureResource;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/FeatureResource;-><init>()V

    .line 99
    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/mode/SlimBodyModeEntry;->getFeatureName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/mode/SlimBodyModeEntry;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/feature/slimbody/R$string;->face_beauty_mode_title:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    .line 101
    sget p0, Lcom/transsion/camera/feature/slimbody/R$drawable;->ic_beauty:I

    iput p0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mUnSelectedIconId:I

    .line 102
    sget-object p0, Lcom/transsion/camera/feature/slimbody/mode/SlimBodyModeEntry;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createFeatureResource tile = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 0

    .line 93
    const-class p0, Lcom/transsion/camera/feature/slimbody/mode/SlimBodyModeEntry;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .locals 0

    .line 88
    const-class p0, Lcom/transsion/camera/app/common/mode/ICameraMode;

    return-object p0
.end method
