.class public Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;
.super Lcom/transsion/camera/app/ui/manager/AbstractViewManager;
.source "HelpGuideUIManager.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mHelpGuideUI:Lcom/transsion/camera/app/ui/IHelpGuideUI;

.field private mIsVideoRecording:Z

.field private mLayoutIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRootId:I

.field private mSettingProvide:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Landroid/app/FragmentManager;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v6, p4

    .line 37
    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;-><init>(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mIsVideoRecording:Z

    .line 38
    iput p1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mRootId:I

    .line 39
    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mContext:Landroid/content/Context;

    .line 40
    iput-object p3, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mFragmentManager:Landroid/app/FragmentManager;

    .line 41
    new-instance p1, Lcom/transsion/camera/app/ui/HelpGuideUI;

    invoke-direct {p1}, Lcom/transsion/camera/app/ui/HelpGuideUI;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mHelpGuideUI:Lcom/transsion/camera/app/ui/IHelpGuideUI;

    .line 42
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mLayoutIds:Ljava/util/List;

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mHelpGuideUI:Lcom/transsion/camera/app/ui/IHelpGuideUI;

    invoke-interface {p0, p4}, Lcom/transsion/camera/app/ui/IHelpGuideUI;->setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    return-void
.end method

.method private addLayouts(I)V
    .locals 5

    .line 166
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_0

    .line 169
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mLayoutIds:Ljava/util/List;

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private addModeLayoutId(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 149
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->addLayouts(I)V

    return-void
.end method

.method private addSettingLayoutId(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingGuideItemUI;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 153
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 156
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ISettingGuideItemUI;

    .line 157
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mSettingProvide:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v1

    .line 158
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingGuideItemUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 159
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingGuideItemUI;->shouldShow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingGuideItemUI;->getStringArrayId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->addLayouts(I)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public exitGuideFragment()V
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mHelpGuideUI:Lcom/transsion/camera/app/ui/IHelpGuideUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IHelpGuideUI;->exitGuideFragment()V

    return-void
.end method

.method public hide()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mRootView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x4

    .line 110
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mIsShown:Z

    return-void
.end method

.method public notifyCameraOperateActionToUI(I)V
    .locals 3

    const/16 v0, 0xb

    const/4 v1, 0x0

    if-eq p1, v0, :cond_5

    const/16 v0, 0xc

    const/4 v2, 0x1

    if-eq p1, v0, :cond_4

    const/16 v0, 0x15

    if-eq p1, v0, :cond_3

    const/16 v0, 0x16

    if-eq p1, v0, :cond_3

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1f

    if-eq p1, v0, :cond_4

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x55

    if-eq p1, v0, :cond_5

    const/16 v0, 0x56

    if-eq p1, v0, :cond_4

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 70
    :cond_0
    :pswitch_0
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mIsVideoRecording:Z

    goto :goto_0

    .line 66
    :cond_1
    :pswitch_1
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mIsVideoRecording:Z

    goto :goto_0

    .line 73
    :cond_2
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mIsVideoRecording:Z

    .line 74
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mHelpGuideUI:Lcom/transsion/camera/app/ui/IHelpGuideUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    goto :goto_0

    .line 89
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mHelpGuideUI:Lcom/transsion/camera/app/ui/IHelpGuideUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IHelpGuideUI;->refreshIconState()V

    goto :goto_0

    .line 85
    :cond_4
    :pswitch_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mHelpGuideUI:Lcom/transsion/camera/app/ui/IHelpGuideUI;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    goto :goto_0

    .line 79
    :cond_5
    :pswitch_3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mHelpGuideUI:Lcom/transsion/camera/app/ui/IHelpGuideUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    .line 92
    :goto_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->notifyCameraOperateActionToUI(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mHelpGuideUI:Lcom/transsion/camera/app/ui/IHelpGuideUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-interface {v0, p1, p0}, Lcom/transsion/camera/app/ui/IHelpGuideUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onOrientationChanged(I)V
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mHelpGuideUI:Lcom/transsion/camera/app/ui/IHelpGuideUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;->onOrientationChanged(I)V

    return-void
.end method

.method protected onSetupViews()V
    .locals 0

    return-void
.end method

.method public setEnable(Z)V
    .locals 1

    .line 116
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->setEnable(Z)V

    .line 117
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mHelpGuideUI:Lcom/transsion/camera/app/ui/IHelpGuideUI;

    if-eqz v0, :cond_1

    .line 118
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mIsVideoRecording:Z

    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    :cond_1
    return-void
.end method

.method public setGuideItemList(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingGuideItemUI;",
            ">;)V"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mLayoutIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 129
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->addModeLayoutId(I)V

    .line 130
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->addSettingLayoutId(Ljava/util/List;)V

    return-void
.end method

.method public setSettingProvide(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mSettingProvide:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    return-void
.end method

.method public show()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mRootView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 100
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mHelpGuideUI:Lcom/transsion/camera/app/ui/IHelpGuideUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IHelpGuideUI;->refreshIconState()V

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mIsShown:Z

    return-void
.end method

.method public unInit()V
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mLayoutIds:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public updateHelpGuideIcon(Z)V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mHelpGuideUI:Lcom/transsion/camera/app/ui/IHelpGuideUI;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mFragmentManager:Landroid/app/FragmentManager;

    iget v2, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mRootId:I

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mLayoutIds:Ljava/util/List;

    invoke-interface {v0, p1, v1, v2, p0}, Lcom/transsion/camera/app/ui/IHelpGuideUI;->updateIcon(ZLandroid/app/FragmentManager;ILjava/util/List;)V

    return-void
.end method
