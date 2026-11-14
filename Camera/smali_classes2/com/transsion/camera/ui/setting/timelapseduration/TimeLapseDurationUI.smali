.class public Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "TimeLapseDurationUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI$MyStatusChangeListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION_240:I = 0xf0

.field private static final PATH_INTERPOLATOR_X:F = 0.25f

.field private static final PATH_INTERPOLATOR_Y1:F = 0.1f

.field private static final PATH_INTERPOLATOR_Y2:F = 1.0f

.field private static final SETTING_KEY:Ljava/lang/String; = "key_time_lapse_duration"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final ZERO_OFFSET:I


# instance fields
.field private mCurrentEntryValue:Ljava/lang/String;

.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mResources:Landroid/content/res/Resources;

.field private mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mSupportedEntries:[Ljava/lang/String;

.field private mSupportedEntryValues:[Ljava/lang/String;

.field private mTopOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 3

    .line 47
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 39
    new-instance v1, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI$MyStatusChangeListener;

    invoke-direct {v1, v0}, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI$MyStatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI$1;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 48
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mResources:Landroid/content/res/Resources;

    .line 49
    new-instance v0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationSettingUISpec;

    invoke-direct {v0, p1}, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 50
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 v0, 0x3e800000    # 0.25f

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1, v0, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 25
    sget-object v0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method private onValueChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 168
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 169
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_0

    .line 170
    invoke-interface {p0, p2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

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

    const-string p0, "key_time_lapse_duration"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 119
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hideEntryView()V
    .locals 1

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 79
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    :cond_0
    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 2

    .line 125
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_0

    .line 127
    sget-object p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 130
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_1

    .line 131
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "wide_camera"

    invoke-virtual {p1, v1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 132
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "key_wide_camera_item_seleccted"

    invoke-virtual {p1, v1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 134
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 137
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_2

    .line 139
    sget-object p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting\'s support is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->createSupportedEntries(Ljava/util/List;)V

    .line 144
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mSupportedEntryValues:[Ljava/lang/String;

    .line 145
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntries()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mSupportedEntries:[Ljava/lang/String;

    .line 147
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mSupportedEntryValues:[Ljava/lang/String;

    array-length p1, p1

    if-nez p1, :cond_3

    .line 148
    sget-object p1, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "support value is null! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 153
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    .line 155
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mSupportedEntryValues:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 156
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_4

    .line 157
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_4
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

    .line 164
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setTopOffset(I)V
    .locals 0

    .line 176
    iput p1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mTopOffset:I

    return-void
.end method

.method public setupEntryView()V
    .locals 0

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 86
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 88
    :cond_0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method
