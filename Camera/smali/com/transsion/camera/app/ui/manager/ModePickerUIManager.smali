.class public Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;
.super Lcom/transsion/camera/app/ui/manager/AbstractViewManager;
.source "ModePickerUIManager.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IModeRegionControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;,
        Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$UIHandler;,
        Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$PanelModeChangedListenerImpl;,
        Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;,
        Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ZoomStatusChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBackCameraModeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;"
        }
    .end annotation
.end field

.field private mBackDefaultMode:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentModeName:Ljava/lang/String;

.field private mFrontCameraModeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;"
        }
    .end annotation
.end field

.field private mFrontDefaultMode:Ljava/lang/String;

.field private mIsCameraSwitching:Z

.field private mIsOnCreate:Z

.field private mIsSecureCamera:Z

.field private mIsShowingGuide:Z

.field private mMainControlRoot:Landroid/view/ViewGroup;

.field private mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

.field private mModeEditorAssist:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;

.field private final mModeHorizontalScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;

.field private mModePanelRoot:Landroid/view/ViewGroup;

.field private final mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

.field private mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

.field private final mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

.field private final mModeVerticalScroll:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

.field private mPanelHintView:Landroid/widget/TextView;

.field private mPanelMaskView:Landroid/view/View;

.field private mPreviewRect:Landroid/graphics/Rect;

.field private final mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

.field private mShortcutEntry:Ljava/lang/String;

.field private mSmartBackCameraModeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;"
        }
    .end annotation
.end field

.field private mSmartFrontCameraModeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mUIHandler:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$UIHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 69
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/MainScreenOriginPosition;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;Lcom/transsion/camera/app/ui/ScrollConsumer;Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p3

    move-object v6, p4

    .line 118
    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;-><init>(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 90
    new-instance p3, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ZoomStatusChangeListener;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ZoomStatusChangeListener;-><init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$1;)V

    iput-object p3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 93
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPreviewRect:Landroid/graphics/Rect;

    const/4 p3, 0x0

    .line 101
    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCameraSwitching:Z

    .line 102
    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsSecureCamera:Z

    .line 110
    iput-object p4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCurrentModeName:Ljava/lang/String;

    .line 119
    iput-object p6, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    .line 120
    new-instance v0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    invoke-direct {v0, p1, p2, p5}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/MainScreenOriginPosition;Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeVerticalScroll:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    .line 121
    new-instance p5, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;

    invoke-direct {p5, p1, p2}, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/MainScreenOriginPosition;)V

    iput-object p5, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeHorizontalScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;

    .line 122
    new-instance p5, Lcom/transsion/camera/app/ui/ModePickerUI;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeVerticalScroll:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeHorizontalScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;

    move-object v0, p5

    move-object v3, p1

    move-object v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/ui/ModePickerUI;-><init>(Lcom/transsion/camera/app/ui/ModeVerticalScroll;Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;Landroid/content/Context;Lcom/transsion/camera/app/ui/ScrollConsumer;Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;)V

    iput-object p5, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    .line 123
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    invoke-virtual {p5, v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 124
    new-instance p5, Lcom/transsion/camera/app/ui/ModePanelUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeVerticalScroll:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    invoke-direct {p5, v0, p1, p6, p7}, Lcom/transsion/camera/app/ui/ModePanelUI;-><init>(Lcom/transsion/camera/app/ui/ModeVerticalScroll;Landroid/content/Context;Lcom/transsion/camera/app/ui/ScrollConsumer;Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;)V

    iput-object p5, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    .line 125
    iget-object p6, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    invoke-interface {p5, p6}, Lcom/transsion/camera/app/ui/IModePanelUI;->setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 126
    new-instance p5, Lcom/transsion/camera/app/ui/ModeScrollUI;

    iget-object p6, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeHorizontalScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;

    invoke-direct {p5, p6, p2, p1}, Lcom/transsion/camera/app/ui/ModeScrollUI;-><init>(Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;Lcom/transsion/camera/app/ui/MainScreenOriginPosition;Landroid/content/Context;)V

    iput-object p5, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    .line 127
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mContext:Landroid/content/Context;

    .line 129
    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsShowingGuide:Z

    .line 130
    new-instance p1, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$UIHandler;

    invoke-direct {p1, p0, p4}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$UIHandler;-><init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$1;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mUIHandler:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$UIHandler;

    .line 132
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->increaseStartTimes()V

    if-eqz p7, :cond_0

    .line 134
    invoke-interface {p7}, Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;->getInitialModesNumberInTab()Ljava/lang/String;

    move-result-object p1

    .line 135
    new-instance p2, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;-><init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeEditorAssist:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;

    :cond_0
    return-void
.end method

.method static synthetic access$1000(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/AbstractModePickerUI;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/IModeScrollUI;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    return-object p0
.end method

.method static synthetic access$1200()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 68
    sget-object v0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;IJ)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->sendEmptyMessageDelayed(IJ)V

    return-void
.end method

.method static synthetic access$1400(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/util/List;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBackCameraModeList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBackCameraModeList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/util/List;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFrontCameraModeList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFrontCameraModeList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;[Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->generateOrderModeList([Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBackDefaultMode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBackDefaultMode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFrontDefaultMode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFrontDefaultMode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mShortcutEntry:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCurrentModeName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsShowingGuide:Z

    return p0
.end method

.method static synthetic access$402(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsShowingGuide:Z

    return p1
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/IModePanelUI;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Ljava/lang/String;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->updateHorizontalScroll(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCameraSwitching:Z

    return p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Landroid/content/Context;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private generateOrderModeList([Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;"
        }
    .end annotation

    .line 458
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 459
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 461
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/common/FeatureResource;

    .line 462
    iget-object v5, v4, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 463
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method private hideModePickerGuide()V
    .locals 2

    .line 550
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPanelMaskView:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 551
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 553
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPanelHintView:Landroid/widget/TextView;

    if-eqz p0, :cond_1

    .line 554
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private increaseStartTimes()V
    .locals 4

    const/4 v0, 0x1

    .line 514
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsOnCreate:Z

    .line 515
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->isModePanelGuideSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 516
    new-instance v1, Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    .line 518
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const-string v2, "key_camera_guide_usage"

    const-string v3, "0"

    .line 517
    invoke-virtual {v1, v2, v3, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    add-int/2addr p0, v0

    .line 520
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    .line 519
    invoke-virtual {v1, v2, p0, v0, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private sendEmptyMessage(I)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 559
    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->sendEmptyMessageDelayed(IJ)V

    return-void
.end method

.method private sendEmptyMessageDelayed(IJ)V
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mUIHandler:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$UIHandler;

    if-eqz v0, :cond_0

    .line 564
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 565
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mUIHandler:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$UIHandler;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private setupModePanelGuideView()V
    .locals 4

    .line 631
    new-instance v0, Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    .line 633
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_camera_guide_usage"

    const-string v3, "0"

    .line 632
    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_2

    .line 635
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPanelMaskView:Landroid/view/View;

    const/16 v1, 0x8

    const/4 v2, -0x1

    if-nez v0, :cond_0

    .line 636
    new-instance v0, Landroid/view/View;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPanelMaskView:Landroid/view/View;

    .line 637
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 639
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPanelMaskView:Landroid/view/View;

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 640
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPanelMaskView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPanelHintView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 643
    new-instance v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPanelHintView:Landroid/widget/TextView;

    const v3, 0x7f0f012b

    .line 644
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 645
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPanelHintView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 646
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPanelHintView:Landroid/widget/TextView;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 647
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPanelHintView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 648
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPanelHintView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 650
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mMainControlRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPanelMaskView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 651
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mMainControlRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPanelHintView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 652
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeVerticalScroll:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPanelMaskView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->setModePanelMask(Landroid/view/View;)V

    .line 653
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeVerticalScroll:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPanelHintView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->setPanelHintView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method private updateHorizontalScroll()V
    .locals 2

    .line 623
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->currentIsIabLayoutMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->LEFT_RIGHT:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeHorizontalScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->registerScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V

    goto :goto_0

    .line 626
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v0, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->LEFT_RIGHT:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->unregisterScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;)V

    :goto_0
    return-void
.end method

.method private updateHorizontalScroll(Ljava/lang/String;)V
    .locals 1

    .line 615
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->isTabLayoutMode(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 616
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v0, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->LEFT_RIGHT:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeHorizontalScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->registerScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V

    goto :goto_0

    .line 618
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object p1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->LEFT_RIGHT:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->unregisterScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public flashModeListCurrentCamera()V
    .locals 0

    .line 670
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeEditorAssist:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;

    if-eqz p0, :cond_0

    .line 671
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->flashModeListCurrentCamera()V

    :cond_0
    return-void
.end method

.method public hide()V
    .locals 2

    .line 394
    invoke-super {p0}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->hide()V

    .line 395
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->BOTTOM_UP:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->unregisterScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;)V

    .line 396
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v0, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->LEFT_RIGHT:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->unregisterScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;)V

    return-void
.end method

.method public hideModeRegion()V
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->hideModePicker()V

    return-void
.end method

.method public isModeTabScrolling()Z
    .locals 0

    .line 420
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 423
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->isModeTabScrolling()Z

    move-result p0

    return p0
.end method

.method public modePickerHideAlphaAnimator(I)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->modePickerHideAlphaAnimator(I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public modePickerShowAlphaAnimator(I)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->modePickerShowAlphaAnimator(I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public notifyCameraOperateActionToUI(I)V
    .locals 4

    .line 227
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->notifyCameraOperateActionToUI(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_d

    if-eq p1, v1, :cond_c

    const/4 v2, 0x2

    if-eq p1, v2, :cond_b

    const/4 v3, 0x3

    if-eq p1, v3, :cond_a

    const/16 v3, 0x9

    if-eq p1, v3, :cond_c

    const/16 v3, 0x11

    if-eq p1, v3, :cond_9

    const/16 v3, 0x1b

    if-eq p1, v3, :cond_8

    const/16 v3, 0x1f

    if-eq p1, v3, :cond_7

    const/16 v3, 0x2f

    if-eq p1, v3, :cond_9

    const/16 v3, 0x54

    if-eq p1, v3, :cond_6

    const/16 v3, 0xb

    if-eq p1, v3, :cond_4

    const/16 v3, 0xc

    if-eq p1, v3, :cond_2

    const/16 v3, 0x15

    if-eq p1, v3, :cond_1

    const/16 v3, 0x16

    if-eq p1, v3, :cond_0

    const/16 v3, 0x23

    if-eq p1, v3, :cond_5

    const/16 v3, 0x24

    if-eq p1, v3, :cond_3

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 276
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->updatePanelItemClickable(Z)V

    .line 277
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mUIHandler:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$UIHandler;

    if-eqz p1, :cond_e

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 278
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mUIHandler:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$UIHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 279
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {p1, v1, v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateModeArrowState(ZZ)V

    const-wide/16 v0, 0xce4

    .line 280
    invoke-direct {p0, v2, v0, v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->sendEmptyMessageDelayed(IJ)V

    goto/16 :goto_0

    .line 273
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->updatePanelItemClickable(Z)V

    goto/16 :goto_0

    .line 270
    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->updatePanelItemClickable(Z)V

    goto/16 :goto_0

    .line 288
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->setScrollEnable(Z)V

    goto/16 :goto_0

    .line 285
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->setScrollEnable(Z)V

    goto :goto_0

    .line 264
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->setSelfTimerBegin(Z)V

    .line 266
    :cond_3
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->updateArrowEnableState(Z)V

    .line 267
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->updatePanelItemClickable(Z)V

    goto :goto_0

    .line 258
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->setSelfTimerBegin(Z)V

    .line 260
    :cond_5
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->updateArrowEnableState(Z)V

    .line 261
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->updatePanelItemClickable(Z)V

    goto :goto_0

    .line 291
    :cond_6
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IModePanelUI;->hide()V

    goto :goto_0

    .line 235
    :cond_7
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->updateArrowEnableState(Z)V

    .line 236
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateTabIndexOnResume(Ljava/lang/String;)V

    goto :goto_0

    .line 230
    :cond_8
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->setSelfTimerBegin(Z)V

    .line 231
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateTabIndexOnPause(Ljava/lang/String;)V

    .line 232
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeVerticalScroll:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->setPanelHintView(Landroid/view/View;)V

    goto :goto_0

    .line 295
    :cond_9
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->hideModePickerGuide()V

    goto :goto_0

    .line 243
    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    invoke-interface {p0, v1}, Lcom/transsion/camera/app/ui/IModeScrollUI;->hide(Z)V

    goto :goto_0

    .line 239
    :cond_b
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->hideModePickerGuide()V

    .line 240
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    goto :goto_0

    .line 253
    :cond_c
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCameraSwitching:Z

    .line 254
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->setIsCameraSwitching(Z)V

    .line 255
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->updateArrowEnableState(Z)V

    goto :goto_0

    .line 246
    :cond_d
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCameraSwitching:Z

    .line 247
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->setIsCameraSwitching(Z)V

    .line 248
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->updateArrowEnableState(Z)V

    .line 249
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->hideModePickerGuide()V

    :cond_e
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 374
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updatePreviewRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 0

    .line 214
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 363
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->onDown(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onDragMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .line 353
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mCameraRootView:Landroid/view/ViewGroup;

    const v1, 0x7f09015e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelRoot:Landroid/view/ViewGroup;

    .line 181
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mCameraRootView:Landroid/view/ViewGroup;

    const v1, 0x7f09000b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mMainControlRoot:Landroid/view/ViewGroup;

    .line 182
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelRoot:Landroid/view/ViewGroup;

    invoke-interface {v0, p1, v1}, Lcom/transsion/camera/app/ui/IModePanelUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 183
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mCameraRootView:Landroid/view/ViewGroup;

    const v2, 0x7f090165

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-interface {v0, p1, v1}, Lcom/transsion/camera/app/ui/IModeScrollUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 184
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onOrientationChanged(I)V
    .locals 0

    .line 491
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;->onOrientationChanged(I)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .line 358
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onSetupViews()V
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/ui/IModePanelUI;->setAppUIRect(Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V

    .line 194
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IModePanelUI;->setupViews()V

    .line 195
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    new-instance v1, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$PanelModeChangedListenerImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$PanelModeChangedListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$1;)V

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/ui/IModePanelUI;->setModeChangedListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V

    .line 197
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->setupViews()V

    .line 198
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    new-instance v1, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$1;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->setModeChangedListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V

    .line 199
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->BOTTOM_UP:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeVerticalScroll:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/ScrollConsumer;->registerScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V

    .line 200
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->LEFT_RIGHT:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeHorizontalScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/ScrollConsumer;->registerScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V

    .line 202
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setupModePanelGuideView()V

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelRoot:Landroid/view/ViewGroup;

    instance-of v1, v0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;

    if-eqz v1, :cond_0

    .line 205
    check-cast v0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->setScrollListener(Lcom/transsion/camera/app/ui/IScroll;)V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    instance-of v1, v0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;

    if-eqz v1, :cond_1

    .line 208
    check-cast v0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->setScrollListener(Lcom/transsion/camera/app/ui/IScroll;)V

    :cond_1
    return-void
.end method

.method public pause()V
    .locals 1

    .line 220
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 221
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/ui/IModeScrollUI;->hide(Z)V

    :cond_0
    return-void
.end method

.method public restoreCurrentMode()V
    .locals 1

    .line 773
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBackDefaultMode:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCurrentModeName:Ljava/lang/String;

    return-void
.end method

.method public setEnable(Z)V
    .locals 1

    .line 337
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->setEnable(Z)V

    .line 338
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->setScrollEnable(Z)V

    .line 339
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->setEnable(Z)V

    return-void
.end method

.method public setModeList(Ljava/util/List;Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;",
            "Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;",
            ")V"
        }
    .end annotation

    const-string v0, "0"

    .line 404
    invoke-interface {p2, v0}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    .line 405
    invoke-interface {p2, v2}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 406
    invoke-direct {p0, v1, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->generateOrderModeList([Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBackCameraModeList:Ljava/util/List;

    .line 407
    invoke-direct {p0, v3, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->generateOrderModeList([Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFrontCameraModeList:Ljava/util/List;

    .line 409
    invoke-interface {p2, v0}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getSmartModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 410
    invoke-interface {p2, v2}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getSmartModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 411
    invoke-direct {p0, v1, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->generateOrderModeList([Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mSmartBackCameraModeList:Ljava/util/List;

    .line 412
    invoke-direct {p0, v3, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->generateOrderModeList([Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mSmartFrontCameraModeList:Ljava/util/List;

    .line 414
    invoke-interface {p2, v0}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getDefaultMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBackDefaultMode:Ljava/lang/String;

    .line 415
    invoke-interface {p2, v2}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getDefaultMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFrontDefaultMode:Ljava/lang/String;

    .line 416
    invoke-interface {p2}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getShortcutEntry()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mShortcutEntry:Ljava/lang/String;

    return-void
.end method

.method public setModeList(Ljava/util/List;Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;",
            "Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;",
            "Z)V"
        }
    .end annotation

    .line 658
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeEditorAssist:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;

    if-eqz p0, :cond_0

    .line 659
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->setModeList(Ljava/util/List;Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;Z)V

    :cond_0
    return-void
.end method

.method public setModeOpaque()V
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->setModePickerOpaque()V

    return-void
.end method

.method public setModePickerListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    return-void
.end method

.method public setModeUnOpaque()V
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->setModePickerUnOpaque()V

    return-void
.end method

.method public setScrollListener(Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;)V
    .locals 0

    .line 382
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IModeScrollUI;->setScrollListener(Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;)V

    return-void
.end method

.method public setSecureCamera(Z)V
    .locals 0

    .line 496
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsSecureCamera:Z

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 1

    .line 311
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 312
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v0, "key_wide_camera_item_seleccted"

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public show()V
    .locals 3

    .line 387
    invoke-super {p0}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->show()V

    .line 388
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->BOTTOM_UP:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeVerticalScroll:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/ScrollConsumer;->registerScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V

    .line 389
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->updateHorizontalScroll()V

    return-void
.end method

.method public showModePickerGuide()V
    .locals 7

    .line 525
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->isModePanelGuideSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsShowingGuide:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsOnCreate:Z

    if-eqz v0, :cond_4

    .line 526
    new-instance v0, Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    .line 528
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_camera_guide_usage"

    const-string v3, "0"

    .line 527
    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-le v1, v5, :cond_0

    .line 530
    invoke-direct {p0, v4}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->sendEmptyMessage(I)V

    const/16 v4, 0x20

    if-lt v1, v4, :cond_3

    .line 532
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 535
    :cond_0
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsSecureCamera:Z

    if-eqz v3, :cond_2

    if-gt v1, v5, :cond_1

    add-int/lit8 v1, v1, -0x1

    .line 538
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    .line 537
    invoke-virtual {v0, v2, v1, v3, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 540
    :cond_1
    invoke-direct {p0, v4}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->sendEmptyMessage(I)V

    goto :goto_0

    .line 542
    :cond_2
    invoke-direct {p0, v6}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->sendEmptyMessage(I)V

    .line 545
    :cond_3
    :goto_0
    iput-boolean v6, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsOnCreate:Z

    :cond_4
    return-void
.end method

.method public showModeRegion()V
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->showModePicker()V

    return-void
.end method

.method public showModeRegionOnSinked()V
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->showModeRegionOnSinked()V

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 344
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mCameraRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 345
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPanelMaskView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 346
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mCameraRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPanelHintView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "key_wide_camera_item_seleccted"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public updateArrowEnableState(Z)V
    .locals 0

    .line 303
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateArrowEnableState(Z)V

    return-void
.end method

.method public updateCurrentCamera(Ljava/lang/String;)V
    .locals 2

    .line 438
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeEditorAssist:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;

    if-eqz v0, :cond_0

    .line 439
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->updateCurrentCamera(Ljava/lang/String;)V

    goto :goto_0

    .line 441
    :cond_0
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 443
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBackCameraModeList:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IModePanelUI;->setModeList(Ljava/util/List;)V

    .line 444
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mSmartBackCameraModeList:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IModeScrollUI;->setModeList(Ljava/util/List;)V

    .line 445
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBackDefaultMode:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IModeScrollUI;->updateSelectedMode(Ljava/lang/String;)V

    .line 446
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mSmartBackCameraModeList:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBackDefaultMode:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mShortcutEntry:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateModes(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 448
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFrontCameraModeList:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IModePanelUI;->setModeList(Ljava/util/List;)V

    .line 449
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mSmartFrontCameraModeList:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IModeScrollUI;->setModeList(Ljava/util/List;)V

    .line 450
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFrontDefaultMode:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IModeScrollUI;->updateSelectedMode(Ljava/lang/String;)V

    .line 451
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mSmartFrontCameraModeList:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFrontDefaultMode:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mShortcutEntry:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateModes(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public updateCurrentMode(Ljava/lang/String;Z)V
    .locals 1

    .line 427
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCurrentModeName:Ljava/lang/String;

    .line 428
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/ui/IModePanelUI;->updateCurrentMode(Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/ui/IModeScrollUI;->updateSelectedMode(Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 432
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateCurrentMode(Ljava/lang/String;)V

    .line 433
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->updateHorizontalScroll()V

    :cond_0
    return-void
.end method

.method public updateCurrentModes(Ljava/util/List;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 664
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeEditorAssist:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;

    if-eqz p0, :cond_0

    .line 665
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->updateCurrentModes(Ljava/util/List;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updatePanelItemClickable(Z)V
    .locals 0

    .line 307
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IModePanelUI;->updateItemClickable(Z)V

    return-void
.end method
