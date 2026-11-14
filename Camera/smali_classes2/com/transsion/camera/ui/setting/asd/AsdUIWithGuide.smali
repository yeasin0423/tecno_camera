.class public Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;
.super Lcom/transsion/camera/ui/setting/asd/AsdUI;
.source "AsdUIWithGuide.java"


# instance fields
.field private final mFrontCameraModeNames:[Ljava/lang/String;

.field private mIsSuperNightGuideSupport:Z


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    .line 31
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/asd/AsdUI;-><init>(Landroid/content/res/Resources;)V

    const v0, 0x7f030015

    .line 32
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mFrontCameraModeNames:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 37
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 38
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "supernight_guide_support"

    .line 37
    invoke-static {p1, v0, p2}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mIsSuperNightGuideSupport:Z

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method protected updateSuperNightGuide(I)V
    .locals 3

    .line 44
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mIsSuperNightGuideSupport:Z

    if-eqz v0, :cond_3

    .line 45
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->isAsdDynamic()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 46
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setTwinkleEnabled(Z)V

    goto :goto_0

    .line 49
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mFrontCameraModeNames:[Ljava/lang/String;

    const-string v2, "com.transsion.camera.feature.mode.supernight.SuperNightModeEntry"

    invoke-static {p1, v2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setTwinkleEnabled(Z)V

    goto :goto_0

    .line 52
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setTwinkleEnabled(Z)V

    goto :goto_0

    .line 56
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setTwinkleEnabled(Z)V

    :cond_3
    :goto_0
    return-void
.end method
