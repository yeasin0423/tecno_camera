.class public abstract Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "AbstractWideCameraToggleUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI$WideCameraResultCallbackImpl;
    }
.end annotation


# static fields
.field protected static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field protected mCurrentCameraId:Ljava/lang/String;

.field protected mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mEntryRootView:Landroid/view/ViewGroup;

.field private mEntryView:Landroid/view/View;

.field private mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mResources:Landroid/content/res/Resources;

.field protected mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mTopOffset:I

.field private mWideToggleView:Lcom/transsion/camera/app/ui/widget/RotateImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AbsWideCamTogUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->mCurrentCameraId:Ljava/lang/String;

    .line 30
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 37
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;)Lcom/transsion/camera/app/ui/widget/RotateImageView;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->mWideToggleView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->showWideHint()V

    return-void
.end method

.method static synthetic access$600(Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;)Lcom/transsion/camera/app/common/ui/HintInfo;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    return-object p0
.end method

.method private initEntryView()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->mWideToggleView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    new-instance v1, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI$1;-><init>(Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->updateEntryView()V

    return-void
.end method

.method private showEntryView()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->mWideToggleView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 129
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->setEnable(Z)V

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->mWideToggleView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->mWideToggleView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->checkWideCamera()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method private showWideHint()V
    .locals 3

    .line 260
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0f014d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    .line 262
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 263
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method private updateEntryView()V
    .locals 1

    .line 120
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->checkFacing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->checkWideCameraSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->showEntryView()V

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->hideEntryView()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected checkFacing()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected checkWideCamera()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected checkWideCameraSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .locals 2

    .line 49
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->mEntryRootView:Landroid/view/ViewGroup;

    const p3, 0x7f0c00fc

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->mEntryView:Landroid/view/View;

    const p2, 0x7f090279

    .line 51
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->mWideToggleView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 52
    iget p1, p0, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->mTopOffset:I

    if-eqz p1, :cond_0

    .line 53
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->mEntryView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 54
    iget p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, p0, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->mTopOffset:I

    add-int/2addr p3, v1

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 55
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->mEntryView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->mWideToggleView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->updateDrawable(Lcom/transsion/camera/app/ui/widget/RotateImageView;)V

    .line 58
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->initEntryView()V

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method public getEntryRootView()Landroid/view/ViewGroup;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->mEntryRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getEntryView()Landroid/view/View;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 175
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hideEntryView()V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->mWideToggleView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 138
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->setEnable(Z)V

    .line 139
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->mWideToggleView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public notifyCameraOperateAction(I)V
    .locals 2

    .line 185
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->notifyCameraOperateAction(I)V

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x7

    if-eq p1, v1, :cond_3

    const/16 v1, 0x9

    if-eq p1, v1, :cond_3

    const/16 v1, 0x1b

    if-eq p1, v1, :cond_2

    const/16 v1, 0xb

    if-eq p1, v1, :cond_2

    const/16 v1, 0xc

    if-eq p1, v1, :cond_3

    const/16 v1, 0xf

    if-eq p1, v1, :cond_2

    const/16 v1, 0x10

    if-eq p1, v1, :cond_3

    const/16 v1, 0x2d

    if-eq p1, v1, :cond_2

    const/16 v1, 0x2e

    if-eq p1, v1, :cond_3

    const/16 v1, 0x50

    if-eq p1, v1, :cond_1

    const/16 v1, 0x51

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->translateYToggleUI(I)V

    goto :goto_0

    .line 209
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f070370

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->translateYToggleUI(I)V

    goto :goto_0

    .line 206
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->hideEntryView()V

    goto :goto_0

    .line 200
    :cond_3
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->updateEntryView()V

    goto :goto_0

    .line 188
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->mWideToggleView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p1, :cond_5

    .line 189
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->setEnable(Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0

    return-void
.end method

.method public overrideClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 153
    :cond_0
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 154
    new-instance v0, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI$WideCameraResultCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI$WideCameraResultCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI$1;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 155
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->mCurrentCameraId:Ljava/lang/String;

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->mWideToggleView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p0, :cond_0

    .line 166
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setTopOffset(I)V
    .locals 0

    .line 145
    iput p1, p0, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->mTopOffset:I

    return-void
.end method

.method public setupEntryView()V
    .locals 0

    .line 100
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->hideEntryView()V

    return-void
.end method

.method protected translateYToggleUI(I)V
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->mEntryView:Landroid/view/View;

    if-eqz p0, :cond_0

    int-to-float p1, p1

    .line 221
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_0

    .line 233
    sget-object v0, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WideCameraItemUI endHint.....mHintInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->endHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 235
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraToggleUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 237
    :cond_0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    return-void
.end method

.method protected updateDrawable(Lcom/transsion/camera/app/ui/widget/RotateImageView;)V
    .locals 0

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method
