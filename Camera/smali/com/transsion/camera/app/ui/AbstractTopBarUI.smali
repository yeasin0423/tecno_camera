.class public Lcom/transsion/camera/app/ui/AbstractTopBarUI;
.super Ljava/lang/Object;
.source "AbstractTopBarUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;
.implements Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/AbstractTopBarUI$ToolBarStateListener;
    }
.end annotation


# instance fields
.field private mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private mHasVisibleItem:Z

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

.field private mRoot:Landroid/view/ViewGroup;

.field private final mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

.field private final mToolbarScroll:Lcom/transsion/camera/app/ui/ToolbarScroll;

.field private mTopBarArrow:Landroid/view/View;

.field protected mTopBarLayout:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AbstractTopBarUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/MainScreenOriginPosition;Lcom/transsion/camera/app/ui/ScrollConsumer;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/transsion/camera/app/ui/ToolbarScroll;

    invoke-direct {v0, p1, p2}, Lcom/transsion/camera/app/ui/ToolbarScroll;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/MainScreenOriginPosition;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mToolbarScroll:Lcom/transsion/camera/app/ui/ToolbarScroll;

    .line 47
    iput-object p3, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-object p0
.end method

.method private synthetic lambda$setupViews$0(Landroid/view/View;)V
    .locals 0

    .line 79
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->shrinkTopBar()V

    return-void
.end method


# virtual methods
.method public dismissPopup()Z
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->dismissPopup()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public dismissPopupWithoutAnimation()Z
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->dismissPopupWithoutAnimation()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getHeight()I
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarLayout:Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method protected abstract getPopupAnimationStrategy()Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .line 52
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mInflater:Landroid/view/LayoutInflater;

    .line 53
    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRoot:Landroid/view/ViewGroup;

    const v0, 0x7f0c00f5

    const/4 v1, 0x1

    .line 54
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f09024e

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarLayout:Landroid/view/ViewGroup;

    const v0, 0x7f0901fc

    .line 56
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarArrow:Landroid/view/View;

    const v0, 0x7f0901fd

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mToolbarScroll:Lcom/transsion/camera/app/ui/ToolbarScroll;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/ToolbarScroll;->setToolbarLayout(Landroid/view/ViewGroup;)V

    .line 60
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mToolbarScroll:Lcom/transsion/camera/app/ui/ToolbarScroll;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/ToolbarScroll;->setToolBarTitle(Landroid/view/View;)V

    .line 61
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mToolbarScroll:Lcom/transsion/camera/app/ui/ToolbarScroll;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarArrow:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/ToolbarScroll;->setToolBarArrow(Landroid/view/View;)V

    .line 62
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mToolbarScroll:Lcom/transsion/camera/app/ui/ToolbarScroll;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractTopBarUI$ToolBarStateListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/AbstractTopBarUI$ToolBarStateListener;-><init>(Lcom/transsion/camera/app/ui/AbstractTopBarUI;Lcom/transsion/camera/app/ui/AbstractTopBarUI$1;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/ToolbarScroll;->setToolBarStateListener(Lcom/transsion/camera/app/ui/ToolbarScroll$IToolBarStateListener;)V

    .line 64
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c00c0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0702d1

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 67
    new-instance p2, Lcom/transsion/camera/app/ui/setting/PopupOption;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mInflater:Landroid/view/LayoutInflater;

    const/4 v6, -0x1

    move-object v2, p2

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/transsion/camera/app/ui/setting/PopupOption;-><init>(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/View;II)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

    .line 69
    invoke-virtual {p2, p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->setPopupWindowListener(Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;)V

    .line 70
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->getPopupAnimationStrategy()Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->setAnimationStrategy(Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;)V

    return-object p1
.end method

.method public synthetic lambda$setupViews$0$AbstractTopBarUI(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->lambda$setupViews$0(Landroid/view/View;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 4

    .line 161
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 162
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 164
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 165
    instance-of v3, v2, Lcom/transsion/camera/app/ui/widget/IRotatable;

    if-eqz v3, :cond_0

    .line 166
    check-cast v2, Lcom/transsion/camera/app/ui/widget/IRotatable;

    const/4 v3, 0x1

    invoke-interface {v2, p1, v3}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

    if-eqz p0, :cond_2

    .line 172
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->onOrientationChanged(I)V

    :cond_2
    return-void
.end method

.method public onPopupDismiss()V
    .locals 1

    .line 204
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v0, 0x1d

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public onPopupShow()V
    .locals 1

    .line 199
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v0, 0x1c

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setSettingUIList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;",
            ">;)V"
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->dismissPopup()Z

    .line 106
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateTopBarLayout(Ljava/util/List;)V

    return-void
.end method

.method public setupViews()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mToolbarScroll:Lcom/transsion/camera/app/ui/ToolbarScroll;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ToolbarScroll;->originTopBarPadding()V

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarArrow:Landroid/view/View;

    new-instance v1, Lcom/transsion/camera/app/ui/-$$Lambda$AbstractTopBarUI$AyoCGyx8QkeXOlCWlkHnkZBY5gY;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/-$$Lambda$AbstractTopBarUI$AyoCGyx8QkeXOlCWlkHnkZBY5gY;-><init>(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRoot:Landroid/view/ViewGroup;

    instance-of v1, v0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;

    if-eqz v1, :cond_0

    .line 82
    check-cast v0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->setScrollListener(Lcom/transsion/camera/app/ui/IScroll;)V

    :cond_0
    return-void
.end method

.method public shrinkTopBar()V
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->shrinkTopBar()V

    return-void
.end method

.method public unInit()V
    .locals 0

    return-void
.end method

.method public updateRegisterScrollState(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 96
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mHasVisibleItem:Z

    if-eqz p1, :cond_0

    .line 97
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v0, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->TOP_DOWN:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mToolbarScroll:Lcom/transsion/camera/app/ui/ToolbarScroll;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->registerScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V

    goto :goto_0

    .line 99
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object p1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->TOP_DOWN:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->unregisterScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;)V

    :goto_0
    return-void
.end method

.method public updateSettingUIs(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;",
            ">;)V"
        }
    .end annotation

    .line 111
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    if-eqz v1, :cond_0

    .line 113
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->updateSupportEntries()V

    goto :goto_0

    .line 116
    :cond_1
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateTopBarLayout(Ljava/util/List;)V

    return-void
.end method

.method protected abstract updateTopBarLayout(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;",
            ">;)V"
        }
    .end annotation
.end method

.method protected updateVisibleItem(Z)V
    .locals 1

    .line 87
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mHasVisibleItem:Z

    if-eqz p1, :cond_0

    .line 89
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v0, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->TOP_DOWN:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mToolbarScroll:Lcom/transsion/camera/app/ui/ToolbarScroll;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->registerScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V

    goto :goto_0

    .line 91
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object p1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->TOP_DOWN:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->unregisterScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;)V

    :goto_0
    return-void
.end method
