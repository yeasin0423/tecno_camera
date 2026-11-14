.class public Lcom/transsion/camera/app/common/interactive/CommonInteractive;
.super Ljava/lang/Object;
.source "CommonInteractive.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final mBottomBarRoot:Landroid/view/View;

.field private final mImmutableFrameSize:Lcom/transsion/camera/app/common/IImmutableFrameSize;

.field private final mModeBarRoot:Landroid/view/View;

.field private mModeRegionControl:Lcom/transsion/camera/app/common/IModeRegionControl;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;Lcom/transsion/camera/app/common/IImmutableFrameSize;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->mModeBarRoot:Landroid/view/View;

    .line 19
    iput-object p2, p0, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->mBottomBarRoot:Landroid/view/View;

    .line 20
    iput-object p3, p0, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->mImmutableFrameSize:Lcom/transsion/camera/app/common/IImmutableFrameSize;

    return-void
.end method


# virtual methods
.method public getBottombarRoot()Landroid/view/View;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->mBottomBarRoot:Landroid/view/View;

    return-object p0
.end method

.method public getImmutableFrameSize()Lcom/transsion/camera/app/common/IImmutableFrameSize;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->mImmutableFrameSize:Lcom/transsion/camera/app/common/IImmutableFrameSize;

    return-object p0
.end method

.method public getModeBarRoot()Landroid/view/View;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->mModeBarRoot:Landroid/view/View;

    return-object p0
.end method

.method public getModeRegionControl()Lcom/transsion/camera/app/common/IModeRegionControl;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->mModeRegionControl:Lcom/transsion/camera/app/common/IModeRegionControl;

    return-object p0
.end method

.method public setModeRegionControl(Lcom/transsion/camera/app/common/IModeRegionControl;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->mModeRegionControl:Lcom/transsion/camera/app/common/IModeRegionControl;

    return-void
.end method
