.class public Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;
.super Lcom/transsion/camera/app/ui/manager/AbstractViewManager;
.source "ThumbnailUIManager.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDefaultTaskCallback:Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$TaskCallback;

.field private mIsCapturing:Z

.field private mTaskCallbackWithListener:Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$TaskCallback;

.field private mThumbnailListener:Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;

.field private mThumbnailLoader:Lcom/transsion/camera/app/thumbnail/ThumbnailLoader;

.field private mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ThumbnailUIManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v6, p2

    .line 42
    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;-><init>(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 43
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 44
    new-instance p1, Lcom/transsion/camera/app/ui/ThumbnailUI;

    invoke-direct {p1}, Lcom/transsion/camera/app/ui/ThumbnailUI;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    .line 45
    new-instance p1, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader;

    invoke-direct {p1}, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailLoader:Lcom/transsion/camera/app/thumbnail/ThumbnailLoader;

    .line 46
    new-instance p1, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager$1;-><init>(Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mTaskCallbackWithListener:Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$TaskCallback;

    .line 66
    new-instance p1, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager$2;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager$2;-><init>(Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mDefaultTaskCallback:Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$TaskCallback;

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 29
    sget-object v0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailListener:Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;)Lcom/transsion/camera/app/ui/IThumbnailUI;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    return-object p0
.end method


# virtual methods
.method public loadLatestThumbnail(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailLoader:Lcom/transsion/camera/app/thumbnail/ThumbnailLoader;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mTaskCallbackWithListener:Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$TaskCallback;

    invoke-virtual {v0, v1, p1, p0}, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader;->loadLatestThumbnail(Landroid/content/ContentResolver;Ljava/util/ArrayList;Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$TaskCallback;)V

    return-void
.end method

.method public loadThumbnailByUri(Ljava/util/ArrayList;Landroid/net/Uri;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailLoader:Lcom/transsion/camera/app/thumbnail/ThumbnailLoader;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mDefaultTaskCallback:Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$TaskCallback;

    invoke-virtual {v0, v1, p1, p0, p2}, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader;->loadThumbnailByUri(Landroid/content/ContentResolver;Ljava/util/ArrayList;Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$TaskCallback;Landroid/net/Uri;)V

    return-void
.end method

.method public notifyCameraOperateActionToUI(I)V
    .locals 3

    const/16 v0, 0xd

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_3

    const/16 v0, 0xe

    if-eq p1, v0, :cond_2

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0x57

    if-eq p1, v0, :cond_0

    .line 169
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->notifyCameraOperateActionToUI(I)V

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->setEnable(Z)V

    goto :goto_0

    .line 161
    :cond_1
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mIsCapturing:Z

    if-nez p1, :cond_4

    .line 162
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->setEnable(Z)V

    goto :goto_0

    .line 154
    :cond_2
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mIsCapturing:Z

    goto :goto_0

    .line 157
    :cond_3
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->setEnable(Z)V

    .line 158
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mIsCapturing:Z

    :cond_4
    :goto_0
    return-void
.end method

.method protected onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-interface {v0, p1, p0}, Lcom/transsion/camera/app/ui/IThumbnailUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onOrientationChanged(I)V
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;->onOrientationChanged(I)V

    return-void
.end method

.method protected onSetupViews()V
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IThumbnailUI;->setupViews()V

    return-void
.end method

.method public performClick()V
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailListener:Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;

    if-eqz p0, :cond_0

    .line 121
    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;->onThumbnailClicked()V

    :cond_0
    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 103
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractViewManager;->setEnable(Z)V

    .line 104
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    return-void
.end method

.method public setThumbnailListener(Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;)V
    .locals 1

    .line 108
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailListener:Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;

    .line 109
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    new-instance v0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager$3;-><init>(Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IThumbnailUI;->setOnThumbnailClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public unInit()V
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IThumbnailUI;->unInit()V

    return-void
.end method

.method public updateProcessingThumbUri(Landroid/net/Uri;)V
    .locals 2

    .line 136
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailListener:Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 137
    invoke-interface {p0, p1, v0, v1}, Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;->onThumbnailUriUpdated(Landroid/net/Uri;ZZ)V

    :cond_0
    return-void
.end method

.method public updateThumbnail(Landroid/graphics/Bitmap;Z)V
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IThumbnailUI;->updateThumbnail(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public updateThumbnailUri(Landroid/net/Uri;)V
    .locals 2

    .line 130
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailListener:Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 131
    invoke-interface {p0, p1, v0, v1}, Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;->onThumbnailUriUpdated(Landroid/net/Uri;ZZ)V

    :cond_0
    return-void
.end method
