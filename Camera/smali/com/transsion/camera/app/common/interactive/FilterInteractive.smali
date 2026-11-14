.class public Lcom/transsion/camera/app/common/interactive/FilterInteractive;
.super Ljava/lang/Object;
.source "FilterInteractive.java"


# instance fields
.field private mBottomBarRoot:Landroid/view/View;

.field private mModeBarRoot:Landroid/view/View;

.field private mTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/transsion/camera/app/common/interactive/FilterInteractive;->mModeBarRoot:Landroid/view/View;

    .line 17
    iput-object p2, p0, Lcom/transsion/camera/app/common/interactive/FilterInteractive;->mBottomBarRoot:Landroid/view/View;

    .line 18
    iput-object p3, p0, Lcom/transsion/camera/app/common/interactive/FilterInteractive;->mTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    return-void
.end method


# virtual methods
.method public getBottombarRoot()Landroid/view/View;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/transsion/camera/app/common/interactive/FilterInteractive;->mBottomBarRoot:Landroid/view/View;

    return-object p0
.end method

.method public getFilterTopBarItemUI()Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/transsion/camera/app/common/interactive/FilterInteractive;->mTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    return-object p0
.end method

.method public getModeBarRoot()Landroid/view/View;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/transsion/camera/app/common/interactive/FilterInteractive;->mModeBarRoot:Landroid/view/View;

    return-object p0
.end method
