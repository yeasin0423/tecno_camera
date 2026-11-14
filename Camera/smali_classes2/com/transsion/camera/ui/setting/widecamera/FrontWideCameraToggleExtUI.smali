.class public Lcom/transsion/camera/ui/setting/widecamera/FrontWideCameraToggleExtUI;
.super Lcom/transsion/camera/ui/setting/widecamera/FrontWideCameraToggleUI;
.source "FrontWideCameraToggleExtUI.java"


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/widecamera/FrontWideCameraToggleUI;-><init>(Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .locals 0

    .line 24
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/ui/setting/widecamera/FrontWideCameraToggleUI;->createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;

    move-result-object p1

    .line 25
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070370

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->translateYToggleUI(I)V

    return-object p1
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
