.class public Lcom/transsion/camera/ui/setting/level/LevelUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "LevelUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/level/LevelUI$UIHandler;,
        Lcom/transsion/camera/ui/setting/level/LevelUI$SensorEventListenerImpl;
    }
.end annotation


# static fields
.field private static final LEVEL_VIEW_HIDE:I = 0x1

.field private static final LEVEL_VIEW_SHOW:I = 0x3

.field private static final LEVEL_VIEW_UNINIT:I = 0x2

.field private static final MSG_UPDATE_LEVEL_VIEW:I = 0x64

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mEnabled:Z

.field private final mHandler:Lcom/transsion/camera/ui/setting/level/LevelUI$UIHandler;

.field private mIsShown:Z

.field private mLevelView:Lcom/transsion/camera/ui/setting/level/Gradienter;

.field private mPreviewViewRect:Landroid/graphics/Rect;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "LevelUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/level/LevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 49
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mPreviewViewRect:Landroid/graphics/Rect;

    .line 279
    new-instance p1, Lcom/transsion/camera/ui/setting/level/LevelUI$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/level/LevelUI$1;-><init>(Lcom/transsion/camera/ui/setting/level/LevelUI;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 55
    sget-object p1, Lcom/transsion/camera/ui/setting/level/LevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "init"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 56
    new-instance p1, Lcom/transsion/camera/ui/setting/level/LevelUI$UIHandler;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/level/LevelUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/level/LevelUI;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mHandler:Lcom/transsion/camera/ui/setting/level/LevelUI$UIHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/ui/setting/level/LevelUI;)Lcom/transsion/camera/ui/setting/level/Gradienter;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mLevelView:Lcom/transsion/camera/ui/setting/level/Gradienter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/ui/setting/level/LevelUI;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mIsShown:Z

    return p0
.end method

.method static synthetic access$200()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 29
    sget-object v0, Lcom/transsion/camera/ui/setting/level/LevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$300(Lcom/transsion/camera/ui/setting/level/LevelUI;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/level/LevelUI;->doUpdateLevelView(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/ui/setting/level/LevelUI;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/level/LevelUI;->onLevelStatusChanged(Ljava/lang/String;)V

    return-void
.end method

.method private doUpdateLevelView(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/level/LevelUI;->showView()V

    goto :goto_0

    .line 228
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/level/LevelUI;->hideView()V

    :goto_0
    return-void
.end method

.method private hideView()V
    .locals 3

    .line 241
    sget-object v0, Lcom/transsion/camera/ui/setting/level/LevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mLevelView:Lcom/transsion/camera/ui/setting/level/Gradienter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mLevelView:Lcom/transsion/camera/ui/setting/level/Gradienter;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 243
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mIsShown:Z

    const/4 p0, 0x4

    .line 244
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private onLevelStatusChanged(Ljava/lang/String;)V
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mHandler:Lcom/transsion/camera/ui/setting/level/LevelUI$UIHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-string v0, "on"

    .line 291
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 292
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mHandler:Lcom/transsion/camera/ui/setting/level/LevelUI$UIHandler;

    const/4 p1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 294
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mHandler:Lcom/transsion/camera/ui/setting/level/LevelUI$UIHandler;

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method private showView()V
    .locals 3

    .line 249
    sget-object v0, Lcom/transsion/camera/ui/setting/level/LevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mLevelView:Lcom/transsion/camera/ui/setting/level/Gradienter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mLevelView:Lcom/transsion/camera/ui/setting/level/Gradienter;

    if-eqz v0, :cond_0

    .line 251
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/level/LevelUI;->updateRootLayoutRect()V

    const/4 v0, 0x1

    .line 252
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mIsShown:Z

    .line 253
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mLevelView:Lcom/transsion/camera/ui/setting/level/Gradienter;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private updateRootLayoutRect()V
    .locals 5

    .line 261
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    .line 262
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 263
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 264
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 265
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    iput p0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 266
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public disable()V
    .locals 2

    .line 114
    sget-object v0, Lcom/transsion/camera/ui/setting/level/LevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "disable+"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    return-void

    .line 118
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mEnabled:Z

    if-nez v0, :cond_1

    .line 119
    sget-object p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "disabled,so return"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 122
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mEnabled:Z

    .line 123
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 124
    sget-object p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "disable-"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 61
    sget-object v0, Lcom/transsion/camera/ui/setting/level/LevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "doCreateEntryView+"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    .line 63
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    .line 64
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mSensor:Landroid/hardware/Sensor;

    .line 65
    new-instance v0, Lcom/transsion/camera/ui/setting/level/LevelUI$SensorEventListenerImpl;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/level/LevelUI$SensorEventListenerImpl;-><init>(Lcom/transsion/camera/ui/setting/level/LevelUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    const v0, 0x7f0c0065

    const/4 v1, 0x0

    .line 66
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090136

    .line 67
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/ui/setting/level/Gradienter;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mLevelView:Lcom/transsion/camera/ui/setting/level/Gradienter;

    const/4 p0, 0x4

    .line 68
    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    .line 69
    sget-object p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "doCreateEntryView-"

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p1
.end method

.method public enable()V
    .locals 3

    .line 98
    sget-object v0, Lcom/transsion/camera/ui/setting/level/LevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "enable+"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    return-void

    .line 102
    :cond_0
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mEnabled:Z

    if-eqz v1, :cond_1

    .line 103
    sget-object p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "enabled,so return"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 106
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    .line 107
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mEnabled:Z

    .line 108
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 110
    :cond_2
    sget-object p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "enable-"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_level"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 153
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hideEntryView()V
    .locals 1

    .line 82
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/level/LevelUI;->hideView()V

    .line 83
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mHandler:Lcom/transsion/camera/ui/setting/level/LevelUI$UIHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public notifyCameraOperateAction(I)V
    .locals 1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/level/LevelUI;->enable()V

    :goto_0
    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_0

    .line 172
    sget-object p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :cond_0
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/level/LevelUI;->onLevelStatusChanged(Ljava/lang/String;)V

    :goto_0
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
    .locals 1

    .line 180
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-nez p1, :cond_0

    .line 182
    sget-object p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mStatusMonitor is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 185
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v0, "key_level"

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public setupEntryView()V
    .locals 1

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mLevelView:Lcom/transsion/camera/ui/setting/level/Gradienter;

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    .line 76
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 3

    .line 159
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 160
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_0

    .line 161
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_level"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/level/LevelUI;->disable()V

    .line 164
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mHandler:Lcom/transsion/camera/ui/setting/level/LevelUI$UIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 165
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/level/LevelUI;->doUpdateLevelView(I)V

    return-void
.end method

.method public updateCameraState(I)V
    .locals 3

    .line 271
    sget-object v0, Lcom/transsion/camera/ui/setting/level/LevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCameraState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 272
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_1

    .line 273
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "on"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 275
    :goto_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/level/LevelUI;->doUpdateLevelView(I)V

    :cond_1
    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method
