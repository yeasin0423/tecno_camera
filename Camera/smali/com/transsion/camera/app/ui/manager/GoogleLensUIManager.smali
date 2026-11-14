.class public Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;
.super Lcom/transsion/camera/app/ui/manager/AbstractViewManager;
.source "GoogleLensUIManager.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mGoogleLensUI:Lcom/transsion/camera/app/ui/IGoogleLensUI;

.field private mSettingProvide:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "com.transsion.camera.ui.setting.googlelens.GoogleLensUI"

    .line 35
    invoke-static {v1, v0}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/IGoogleLensUI;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->mGoogleLensUI:Lcom/transsion/camera/app/ui/IGoogleLensUI;

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .line 117
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->mGoogleLensUI:Lcom/transsion/camera/app/ui/IGoogleLensUI;

    if-nez p0, :cond_0

    .line 118
    sget-object p0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mGoogleLensUI is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 122
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IGoogleLensUI;->getEntryView()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_1

    .line 124
    sget-object p0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "google lens entry view is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_1
    const/16 v0, 0x8

    .line 127
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->mGoogleLensUI:Lcom/transsion/camera/app/ui/IGoogleLensUI;

    if-eqz v0, :cond_0

    .line 41
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mCameraRootView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-interface {v0, p1, v1, v2}, Lcom/transsion/camera/app/ui/IGoogleLensUI;->createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 43
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public onOrientationChanged(I)V
    .locals 0

    .line 84
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->onOrientationChanged(I)V

    .line 86
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->mGoogleLensUI:Lcom/transsion/camera/app/ui/IGoogleLensUI;

    if-eqz p0, :cond_0

    .line 87
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IGoogleLensUI;->onOrientationChanged(I)V

    :cond_0
    return-void
.end method

.method protected onSetupViews()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->mSettingProvide:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    if-nez v0, :cond_0

    .line 61
    sget-object p0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mSettingProvide is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->mGoogleLensUI:Lcom/transsion/camera/app/ui/IGoogleLensUI;

    if-nez v1, :cond_1

    .line 65
    sget-object p0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mGoogleLensUI is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 69
    :cond_1
    invoke-interface {v1}, Lcom/transsion/camera/app/ui/IGoogleLensUI;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->mGoogleLensUI:Lcom/transsion/camera/app/ui/IGoogleLensUI;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/ui/IGoogleLensUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 71
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->mGoogleLensUI:Lcom/transsion/camera/app/ui/IGoogleLensUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IGoogleLensUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 73
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 138
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->setEnable(Z)V

    .line 140
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->mGoogleLensUI:Lcom/transsion/camera/app/ui/IGoogleLensUI;

    if-eqz p0, :cond_0

    .line 141
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IGoogleLensUI;->setEnable(Z)V

    :cond_0
    return-void
.end method

.method public setGoogleLensSupport(Z)V
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->mGoogleLensUI:Lcom/transsion/camera/app/ui/IGoogleLensUI;

    if-eqz p0, :cond_0

    .line 132
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IGoogleLensUI;->setGoogleLensSupport(Z)V

    :cond_0
    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 2

    .line 51
    sget-object v0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "setSettingMonitor"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->mGoogleLensUI:Lcom/transsion/camera/app/ui/IGoogleLensUI;

    if-eqz p0, :cond_0

    .line 54
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IGoogleLensUI;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    :cond_0
    return-void
.end method

.method public setSettingProvide(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->mSettingProvide:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    return-void
.end method

.method public show()V
    .locals 1

    .line 102
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->mGoogleLensUI:Lcom/transsion/camera/app/ui/IGoogleLensUI;

    if-nez p0, :cond_0

    .line 103
    sget-object p0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mGoogleLensUI is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 107
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IGoogleLensUI;->getEntryView()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_1

    .line 109
    sget-object p0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "google lens entry view is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 112
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public start()V
    .locals 0

    .line 93
    invoke-super {p0}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->start()V

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->mGoogleLensUI:Lcom/transsion/camera/app/ui/IGoogleLensUI;

    if-eqz p0, :cond_0

    .line 96
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IGoogleLensUI;->checkLensStatus()V

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 0

    return-void
.end method
