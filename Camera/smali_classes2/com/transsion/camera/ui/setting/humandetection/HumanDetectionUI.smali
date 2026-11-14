.class public Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "HumanDetectionUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$StatusChangeListener;,
        Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$UIHandler;,
        Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$HumanResultCallbackImpl;
    }
.end annotation


# static fields
.field private static final MSG_UPDATE_HUMAN:I = 0x6e

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mActiveHumanView:Z

.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mHumanFocusView:Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;

.field private volatile mIsCapturing:Z

.field private mPreviewViewRect:Landroid/graphics/Rect;

.field private mStatusChangeListener:Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private final mUIHandler:Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$UIHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    const/4 p1, 0x1

    .line 48
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mActiveHumanView:Z

    .line 52
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    .line 54
    new-instance p1, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$StatusChangeListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$StatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$1;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$StatusChangeListener;

    .line 58
    new-instance p1, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$UIHandler;

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$1;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mUIHandler:Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$UIHandler;

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;)Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$UIHandler;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mUIHandler:Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$UIHandler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mIsCapturing:Z

    return p0
.end method

.method static synthetic access$500()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 44
    sget-object v0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$600(Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;[Lcom/transsion/camera/utils/SettingInfo$CameraFace;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->doUpdateHumanView([Lcom/transsion/camera/utils/SettingInfo$CameraFace;I)V

    return-void
.end method

.method static synthetic access$702(Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mActiveHumanView:Z

    return p1
.end method

.method private doUpdateHumanView([Lcom/transsion/camera/utils/SettingInfo$CameraFace;I)V
    .locals 2

    .line 151
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mActiveHumanView:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 155
    aget-object v1, p1, v0

    if-eqz v1, :cond_1

    .line 156
    aget-object p1, p1, v0

    .line 157
    invoke-virtual {p1}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 156
    invoke-static {p1, v0, v1}, Lcom/transsion/camera/utils/CoordinatesUtil;->referenceToViewSpace(Landroid/graphics/Rect;II)Landroid/graphics/Rect;

    move-result-object p1

    .line 158
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 159
    iget v1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 160
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 161
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mHumanFocusView:Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->show(Landroid/graphics/Rect;I)V

    :cond_1
    return-void

    .line 152
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mHumanFocusView:Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->hide()V

    return-void
.end method

.method private registerKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private unRegisterKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method


# virtual methods
.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c005d

    const/4 v1, 0x0

    .line 63
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09011a

    .line 64
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    .line 65
    new-instance v0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;

    invoke-direct {v0, p2}, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;-><init>(Landroid/widget/FrameLayout;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mHumanFocusView:Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;

    return-object p1
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_human_detection"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 91
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hideEntryView()V
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mHumanFocusView:Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;

    if-eqz p0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->hide()V

    :cond_0
    return-void
.end method

.method public notifyCameraOperateAction(I)V
    .locals 1

    const/16 v0, 0xd

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    .line 116
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mIsCapturing:Z

    goto :goto_0

    :cond_0
    const/16 v0, 0xe

    if-eq v0, p1, :cond_1

    const/16 v0, 0x9

    if-ne v0, p1, :cond_2

    :cond_1
    const/4 p1, 0x0

    .line 119
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mIsCapturing:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 2

    .line 97
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_0

    .line 99
    sget-object p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 102
    :cond_0
    new-instance v0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$HumanResultCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$HumanResultCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$1;)V

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

    .line 107
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_0

    const-string p1, "key_focus_state"

    .line 109
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->registerKeyToMonitor(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 1

    .line 132
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mHumanFocusView:Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->hide()V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_1

    const-string v0, "key_focus_state"

    .line 137
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method
