.class public Lcom/transsion/camera/app/ui/FullZoomUI;
.super Lcom/transsion/camera/app/ui/AbstractWideCameraUI;
.source "FullZoomUI.java"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/ui/MainScreenOriginPosition;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;-><init>(Lcom/transsion/camera/app/ui/MainScreenOriginPosition;)V

    return-void
.end method


# virtual methods
.method protected loadWideCameraUI(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected setSettingUIList()V
    .locals 0

    return-void
.end method

.method protected showWhenCamSwitchEnd()V
    .locals 0

    return-void
.end method
