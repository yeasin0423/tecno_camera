.class public Lcom/transsion/camera/app/ui/preview/TextureViewController;
.super Ljava/lang/Object;
.source "TextureViewController.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/preview/IPreviewController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/preview/TextureViewController$MySurfaceTextureListener;,
        Lcom/transsion/camera/app/ui/preview/TextureViewController$TextureViewOperator;
    }
.end annotation


# instance fields
.field private mPreviewHeight:I

.field private mPreviewOperator:Lcom/transsion/camera/app/ui/preview/TextureViewController$TextureViewOperator;

.field private mPreviewWidth:I

.field private mSurfaceStatusListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

.field private mTextureView:Landroid/view/TextureView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/ui/preview/TextureViewController;)Landroid/view/TextureView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/TextureViewController;->mTextureView:Landroid/view/TextureView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/ui/preview/TextureViewController;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/transsion/camera/app/ui/preview/TextureViewController;->mPreviewWidth:I

    return p0
.end method

.method static synthetic access$302(Lcom/transsion/camera/app/ui/preview/TextureViewController;I)I
    .locals 0

    .line 33
    iput p1, p0, Lcom/transsion/camera/app/ui/preview/TextureViewController;->mPreviewWidth:I

    return p1
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/ui/preview/TextureViewController;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/transsion/camera/app/ui/preview/TextureViewController;->mPreviewHeight:I

    return p0
.end method

.method static synthetic access$402(Lcom/transsion/camera/app/ui/preview/TextureViewController;I)I
    .locals 0

    .line 33
    iput p1, p0, Lcom/transsion/camera/app/ui/preview/TextureViewController;->mPreviewHeight:I

    return p1
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/ui/preview/TextureViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/TextureViewController;->mSurfaceStatusListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    return-object p0
.end method


# virtual methods
.method public cameraOperateAction(I)V
    .locals 0

    return-void
.end method

.method public getAuxExpandView()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAuxPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAuxPreviewView()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLocateAuxView()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/TextureViewController;->mPreviewOperator:Lcom/transsion/camera/app/ui/preview/TextureViewController$TextureViewOperator;

    return-object p0
.end method

.method public getPreviewSurfaceType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getPreviewView()Landroid/view/View;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/TextureViewController;->mTextureView:Landroid/view/TextureView;

    return-object p0
.end method

.method public getPreviewViewCover()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;)Landroid/view/View;
    .locals 1

    .line 62
    iput-object p3, p0, Lcom/transsion/camera/app/ui/preview/TextureViewController;->mSurfaceStatusListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    const p3, 0x7f0c00d0

    const/4 v0, 0x1

    .line 63
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090199

    .line 64
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/TextureView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/preview/TextureViewController;->mTextureView:Landroid/view/TextureView;

    .line 65
    new-instance p3, Lcom/transsion/camera/app/ui/preview/TextureViewController$MySurfaceTextureListener;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/transsion/camera/app/ui/preview/TextureViewController$MySurfaceTextureListener;-><init>(Lcom/transsion/camera/app/ui/preview/TextureViewController;Lcom/transsion/camera/app/ui/preview/TextureViewController$1;)V

    invoke-virtual {p2, p3}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 66
    new-instance p2, Lcom/transsion/camera/app/ui/preview/TextureViewController$TextureViewOperator;

    invoke-direct {p2, p0, v0}, Lcom/transsion/camera/app/ui/preview/TextureViewController$TextureViewOperator;-><init>(Lcom/transsion/camera/app/ui/preview/TextureViewController;Lcom/transsion/camera/app/ui/preview/TextureViewController$1;)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/preview/TextureViewController;->mPreviewOperator:Lcom/transsion/camera/app/ui/preview/TextureViewController$TextureViewOperator;

    return-object p1
.end method

.method public setAuxPreviewSize(II)V
    .locals 0

    return-void
.end method

.method public setFixedSize(II)V
    .locals 0

    return-void
.end method

.method public setPreviewSize(II)V
    .locals 2

    .line 107
    iput p1, p0, Lcom/transsion/camera/app/ui/preview/TextureViewController;->mPreviewWidth:I

    .line 108
    iput p2, p0, Lcom/transsion/camera/app/ui/preview/TextureViewController;->mPreviewHeight:I

    .line 109
    iget-object p1, p0, Lcom/transsion/camera/app/ui/preview/TextureViewController;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 112
    iget p2, p0, Lcom/transsion/camera/app/ui/preview/TextureViewController;->mPreviewWidth:I

    iget v0, p0, Lcom/transsion/camera/app/ui/preview/TextureViewController;->mPreviewHeight:I

    invoke-virtual {p1, p2, v0}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 113
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/TextureViewController;->mSurfaceStatusListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    if-eqz p2, :cond_0

    .line 114
    iget v0, p0, Lcom/transsion/camera/app/ui/preview/TextureViewController;->mPreviewWidth:I

    iget p0, p0, Lcom/transsion/camera/app/ui/preview/TextureViewController;->mPreviewHeight:I

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, p0, v1}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceChanged(Ljava/lang/Object;IIZ)V

    :cond_0
    return-void
.end method
