.class public Lcom/transsion/camera/ui/setting/autofocusswitch/AutoFocusSwitchSettingUISpec;
.super Lcom/transsion/camera/app/ui/setting/spec/ToggleSettingUISpec;
.source "AutoFocusSwitchSettingUISpec.java"


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    const-string v0, "key_auto_focus_switch"

    .line 24
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/setting/spec/ToggleSettingUISpec;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    return-void
.end method

.method private isAutoFocusSwitchSupported(Landroid/content/res/Resources;)Z
    .locals 0

    const p0, 0x7f05000c

    .line 60
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected initEntryDrawables(Landroid/content/res/Resources;)Landroid/content/res/TypedArray;
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/autofocusswitch/AutoFocusSwitchSettingUISpec;->isAutoFocusSwitchSupported(Landroid/content/res/Resources;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f030011

    .line 53
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0

    :cond_0
    const p0, 0x7f030029

    .line 55
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method

.method protected initIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 38
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/autofocusswitch/AutoFocusSwitchSettingUISpec;->isAutoFocusSwitchSupported(Landroid/content/res/Resources;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const p0, 0x7f080463

    .line 39
    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    const p0, 0x7f080375

    .line 41
    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected initSummary(Landroid/content/res/Resources;)[Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method protected initTitle(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/autofocusswitch/AutoFocusSwitchSettingUISpec;->isAutoFocusSwitchSupported(Landroid/content/res/Resources;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0f0060

    .line 30
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const p0, 0x7f0f00bc

    .line 32
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
