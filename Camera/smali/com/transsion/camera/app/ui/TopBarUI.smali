.class public Lcom/transsion/camera/app/ui/TopBarUI;
.super Lcom/transsion/camera/app/ui/AbstractTopBarUI;
.source "TopBarUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/TopBarUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/TopBarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/MainScreenOriginPosition;Lcom/transsion/camera/app/ui/ScrollConsumer;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/MainScreenOriginPosition;Lcom/transsion/camera/app/ui/ScrollConsumer;)V

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 34
    sget-object v0, Lcom/transsion/camera/app/ui/TopBarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method


# virtual methods
.method protected getPopupAnimationStrategy()Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;
    .locals 1

    .line 48
    new-instance v0, Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/TopBarUI$MyAnimationStrategy;-><init>(Lcom/transsion/camera/app/ui/TopBarUI;)V

    return-object v0
.end method

.method public onOrientationChanged(I)V
    .locals 1

    .line 88
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->onOrientationChanged(I)V

    .line 89
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarLayout:Landroid/view/ViewGroup;

    instance-of v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-eqz v0, :cond_0

    .line 90
    check-cast p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->onOrientationChanged(I)V

    :cond_0
    return-void
.end method

.method public setupViews()V
    .locals 0

    .line 43
    invoke-super {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setupViews()V

    return-void
.end method

.method protected updateTopBarLayout(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;",
            ">;)V"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarLayout:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 54
    sget-object p0, Lcom/transsion/camera/app/ui/TopBarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mTopBarLayout is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 57
    :cond_0
    instance-of v1, v0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-eqz v1, :cond_4

    .line 61
    check-cast v0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    .line 64
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 65
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_3

    .line 67
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 68
    iget-object v6, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-interface {v5, v6}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setPopupOptionsControl(Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;)V

    .line 70
    invoke-interface {v5}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 71
    invoke-interface {v5}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getEntryView()Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_1

    .line 73
    iget-object v7, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mInflater:Landroid/view/LayoutInflater;

    iget-object v8, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarLayout:Landroid/view/ViewGroup;

    const v9, 0x7f0c00f6

    invoke-interface {v5, v7, v8, v9}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v7

    .line 75
    :cond_1
    invoke-interface {v5}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setupEntryView()V

    .line 77
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2

    .line 78
    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 82
    :cond_3
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateVisibleItem(Z)V

    .line 83
    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->updateTopBar(Ljava/util/Map;)V

    return-void

    .line 58
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mTopBarLayout should be instance of TopBarContainer!!!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
