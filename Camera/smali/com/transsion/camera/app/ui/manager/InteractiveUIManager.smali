.class public Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;
.super Lcom/transsion/camera/app/ui/manager/AbstractViewManager;
.source "InteractiveUIManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$WideCameraListenerImpl;,
        Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$OnLayoutChangeListenerImpl;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCommonInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mOnLayoutChangeListenerImpl:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$OnLayoutChangeListenerImpl;

.field private mPreviewRect:Landroid/graphics/Rect;

.field private mRootView:Landroid/view/ViewGroup;

.field private mSettingProvider:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

.field private mSettingUIList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mSwitchWideCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

.field private mTopOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "InteractiveUIM"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v3, p4

    move-object v4, p3

    move-object v6, p5

    .line 55
    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;-><init>(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 38
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mPreviewRect:Landroid/graphics/Rect;

    .line 56
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mInflater:Landroid/view/LayoutInflater;

    .line 57
    new-instance p1, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$OnLayoutChangeListenerImpl;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$OnLayoutChangeListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$1;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOnLayoutChangeListenerImpl:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$OnLayoutChangeListenerImpl;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;)Ljava/util/List;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mSettingUIList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;)Landroid/graphics/Rect;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mPreviewRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mSwitchWideCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    return-object p0
.end method

.method private handleUninit()V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mSettingUIList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->removeSettingUIs(Ljava/util/List;)V

    .line 172
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 173
    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mSettingUIList:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private loadSettingUIs(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 73
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 74
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v1, :cond_2

    .line 75
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 77
    :cond_2
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mSettingProvider:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    if-eqz v1, :cond_5

    .line 78
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKeys()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_3

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 81
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 84
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 85
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 86
    iget-object v5, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mSettingProvider:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    invoke-interface {v5, v4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v5

    .line 87
    new-instance v6, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;

    invoke-direct {v6, v4, v5}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;-><init>(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 88
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 90
    :cond_4
    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setDeviceSettingData(Ljava/util/List;)V

    .line 91
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mSettingProvider:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v1

    .line 92
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 95
    :cond_5
    iget v1, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mBatteryStatus:I

    iget v2, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mTemperatureStatus:I

    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->setBatteryStatus(II)V

    .line 97
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v1, :cond_6

    .line 98
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setHintControl(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V

    .line 101
    :cond_6
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    if-eqz v1, :cond_7

    .line 102
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setUIStateControl(Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;)V

    .line 105
    :cond_7
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    if-eqz v1, :cond_8

    .line 106
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V

    .line 109
    :cond_8
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v1, :cond_9

    .line 110
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 113
    :cond_9
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    if-eqz v1, :cond_a

    .line 114
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    .line 116
    :cond_a
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    if-eqz v1, :cond_b

    .line 117
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setAppUIRect(Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V

    .line 120
    :cond_b
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wide_camera"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 121
    iget v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mTopOffset:I

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->setTopOffset(I)V

    .line 122
    new-instance v1, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$WideCameraListenerImpl;

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$WideCameraListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$1;)V

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    :cond_c
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v3, "front_wide_camera"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 126
    iget v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mTopOffset:I

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->setTopOffset(I)V

    .line 127
    new-instance v1, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$WideCameraListenerImpl;

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$WideCameraListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$1;)V

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    :cond_d
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRootView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

    invoke-interface {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;

    move-result-object v1

    .line 132
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-gtz v2, :cond_e

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-lez v2, :cond_f

    .line 133
    :cond_e
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->updatePreviewRect(Landroid/graphics/Rect;)V

    :cond_f
    if-nez v1, :cond_10

    .line 137
    sget-object v1, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createEntryView null: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 141
    :cond_10
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->getEntryRootView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 143
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_11
    return-void
.end method

.method private removeSettingUIs(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;",
            ">;)V"
        }
    .end annotation

    .line 202
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->unInitSettingUIs(Ljava/util/List;)V

    if-eqz p1, :cond_2

    .line 203
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_2

    .line 204
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 205
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->getEntryRootView()Landroid/view/ViewGroup;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 213
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private unInitSettingUIs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 194
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    .line 195
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 196
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->unInit()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .line 355
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRootView:Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    .line 356
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public init(Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;Landroid/view/LayoutInflater;)V
    .locals 1

    .line 61
    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

    const p2, 0x7f0c0060

    const/4 v0, 0x1

    .line 62
    invoke-virtual {p3, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09013e

    .line 63
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRootView:Landroid/view/ViewGroup;

    .line 64
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getModeBarRoot()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 65
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getModeBarRoot()Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOnLayoutChangeListenerImpl:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$OnLayoutChangeListenerImpl;

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method

.method public notifyCameraOperateActionToUI(I)V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 251
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mSettingUIList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    if-eqz v0, :cond_1

    .line 253
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->notifyCameraOperateAction(I)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .locals 6

    .line 221
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v0

    .line 222
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    .line 223
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v0

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v1

    iget v5, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v1

    invoke-direct {v2, v3, v4, v5, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 226
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 227
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mSettingUIList:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 228
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 229
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->updatePreviewRect(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    if-eqz v1, :cond_1

    .line 264
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->onBackPressed()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    .line 268
    :cond_2
    invoke-super {p0}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->onBackPressed()Z

    move-result p0

    return p0

    .line 261
    :cond_3
    :goto_0
    invoke-super {p0}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    if-eqz v1, :cond_1

    .line 278
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 281
    :cond_2
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->onDown(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 274
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->onDown(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    if-eqz v1, :cond_1

    .line 304
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0

    .line 307
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0

    .line 300
    :cond_3
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method protected onSetupViews()V
    .locals 0

    return-void
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    if-eqz v1, :cond_1

    .line 291
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 294
    :cond_2
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->onUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 287
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->onUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public pause()V
    .locals 0

    .line 327
    invoke-super {p0}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->pause()V

    .line 328
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->handleUninit()V

    return-void
.end method

.method public restoreInteractiveView()V
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 346
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mSettingUIList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    if-eqz v0, :cond_1

    .line 348
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->restoreInteractiveView()V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public resume()V
    .locals 0

    .line 322
    invoke-super {p0}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->resume()V

    return-void
.end method

.method public setEnable(Z)V
    .locals 1

    .line 236
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->setEnable(Z)V

    .line 237
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 238
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mSettingUIList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    if-eqz v0, :cond_0

    .line 240
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setSettingProvider(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mSettingProvider:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    return-void
.end method

.method public setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-void
.end method

.method public setSettingUIList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;",
            ">;)V"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mSettingUIList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->removeSettingUIs(Ljava/util/List;)V

    .line 165
    :cond_0
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mSettingUIList:Ljava/util/List;

    .line 166
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->loadSettingUIs(Ljava/util/List;)V

    return-void
.end method

.method public setSwitchWideCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mSwitchWideCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    return-void
.end method

.method public setTopOffset(I)V
    .locals 0

    .line 182
    iput p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mTopOffset:I

    return-void
.end method

.method public show()V
    .locals 1

    .line 362
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRootView:Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 363
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getModeBarRoot()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 336
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOnLayoutChangeListenerImpl:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$OnLayoutChangeListenerImpl;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 339
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->handleUninit()V

    return-void
.end method
