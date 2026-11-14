.class public Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "ScreenFlashUI.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashUI$MainHandler;,
        Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashUI$SettingDataCallbackImpl;
    }
.end annotation


# static fields
.field private static final DEFAULT_VALUE:Ljava/lang/String; = "off"

.field private static final KEY:Ljava/lang/String; = "key_screen_flash"

.field private static final MSG_HIDE_SCREEN_FLASH:I = 0x2

.field private static final MSG_SHOW_SCREEN_FLASH:I = 0x1

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mMainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 49
    new-instance v0, Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashUI$MainHandler;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashUI$MainHandler;-><init>(Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashUI;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 34
    sget-object v0, Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$200(Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashUI;)Landroid/os/Handler;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashUI;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashUI;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashUI;->showScreenFlashView()V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashUI;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashUI;->hideScreenFlashView()V

    return-void
.end method

.method private hideScreenFlashView()V
    .locals 2

    .line 113
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    .line 115
    sget-object p0, Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "entry view is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 118
    :cond_0
    sget-object v0, Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideScreenFlashView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 119
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private showScreenFlashView()V
    .locals 3

    .line 102
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 104
    sget-object p0, Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "entry view is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 107
    :cond_0
    sget-object v1, Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "showScreenFlashView"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 108
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 109
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const p0, 0x7f0c00d4

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p1, p0, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getEntryRootView()Landroid/view/ViewGroup;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mCameraRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_screen_flash"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_0

    .line 80
    sget-object p0, Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "deviceSetting is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string p0, "off"

    return-object p0

    .line 83
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 125
    sget-object p0, Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "intercept all touch event when screen flash view is visible"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 2

    .line 88
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_0

    .line 90
    sget-object p0, Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "deviceSetting is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 93
    :cond_0
    new-instance v0, Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashUI$SettingDataCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashUI$SettingDataCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashUI;Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashUI$1;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 0

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method
