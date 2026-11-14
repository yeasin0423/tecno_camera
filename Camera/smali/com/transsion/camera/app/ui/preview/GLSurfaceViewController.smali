.class public Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;
.super Ljava/lang/Object;
.source "GLSurfaceViewController.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/preview/IPreviewController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;,
        Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$MySurfaceTextureListener;,
        Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;
    }
.end annotation


# instance fields
.field private mAuxExpandView:Landroid/view/View;

.field private mAuxLocateView:Landroid/view/View;

.field private volatile mAuxPreviewHeight:I

.field private mAuxPreviewRoot:Landroid/view/View;

.field private mAuxPreviewView:Landroid/view/TextureView;

.field private volatile mAuxPreviewWidth:I

.field private mGLPreviewView:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

.field private volatile mPreviewHeight:I

.field private mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

.field private mPreviewViewCover:Landroid/view/View;

.field private volatile mPreviewWidth:I

.field private mSurfaceStatusListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "GLSurfaceViewCtrl"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(I)I
    .locals 0

    .line 25
    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->translateToMultiple2(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mGLPreviewView:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mAuxPreviewWidth:I

    return p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mAuxPreviewHeight:I

    return p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mSurfaceStatusListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mPreviewWidth:I

    return p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mPreviewHeight:I

    return p0
.end method

.method private static final translateToMultiple2(I)I
    .locals 1

    .line 41
    rem-int/lit8 v0, p0, 0x2

    if-nez v0, :cond_0

    return p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public cameraOperateAction(I)V
    .locals 0

    .line 323
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mGLPreviewView:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    if-eqz p0, :cond_0

    .line 324
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->cameraOperateAction(I)V

    :cond_0
    return-void
.end method

.method public getAuxExpandView()Landroid/view/View;
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mAuxExpandView:Landroid/view/View;

    return-object p0
.end method

.method public getAuxPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAuxPreviewView()Landroid/view/View;
    .locals 0

    .line 254
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mAuxPreviewRoot:Landroid/view/View;

    return-object p0
.end method

.method public getLocateAuxView()Landroid/view/View;
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mAuxLocateView:Landroid/view/View;

    return-object p0
.end method

.method public getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;
    .locals 0

    .line 313
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    return-object p0
.end method

.method public getPreviewSurfaceType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getPreviewView()Landroid/view/View;
    .locals 0

    .line 249
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mGLPreviewView:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    return-object p0
.end method

.method public getPreviewViewCover()Landroid/view/View;
    .locals 0

    .line 264
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mPreviewViewCover:Landroid/view/View;

    return-object p0
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;)Landroid/view/View;
    .locals 1

    .line 229
    iput-object p3, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mSurfaceStatusListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    const p3, 0x7f0c00ce

    const/4 v0, 0x1

    .line 230
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090067

    .line 231
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mAuxPreviewRoot:Landroid/view/View;

    const p2, 0x7f090065

    .line 232
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mAuxExpandView:Landroid/view/View;

    .line 234
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mAuxPreviewRoot:Landroid/view/View;

    const p3, 0x7f090064

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/TextureView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mAuxPreviewView:Landroid/view/TextureView;

    .line 235
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mAuxPreviewRoot:Landroid/view/View;

    const p3, 0x7f090066

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mAuxLocateView:Landroid/view/View;

    .line 237
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mAuxPreviewView:Landroid/view/TextureView;

    new-instance p3, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$MySurfaceTextureListener;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$MySurfaceTextureListener;-><init>(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$1;)V

    invoke-virtual {p2, p3}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    const p2, 0x7f090199

    .line 239
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mGLPreviewView:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    const p2, 0x7f09019a

    .line 240
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mPreviewViewCover:Landroid/view/View;

    .line 241
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mGLPreviewView:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    new-instance p3, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;

    invoke-direct {p3, p0, v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;-><init>(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$1;)V

    invoke-virtual {p2, p3}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->setSurfaceTextureListener(Lcom/transsion/camera/app/ui/opengl/GLPreviewView$SurfaceTextureListener;)V

    .line 243
    new-instance p2, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;

    invoke-direct {p2, p0, v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;-><init>(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$1;)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    return-object p1
.end method

.method public setAuxPreviewSize(II)V
    .locals 3

    .line 274
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mAuxPreviewView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 276
    invoke-virtual {v0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 277
    iget-object v1, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mSurfaceStatusListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 278
    invoke-interface {v1, v0, p1, p2, v2}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceChanged(Ljava/lang/Object;IIZ)V

    .line 281
    :cond_0
    iput p1, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mAuxPreviewWidth:I

    .line 282
    iput p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mAuxPreviewHeight:I

    return-void
.end method

.method public setFixedSize(II)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 307
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mGLPreviewView:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0, p2, p1}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    :cond_0
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 3

    .line 287
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mGLPreviewView:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 290
    invoke-virtual {v0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 291
    iget-object v1, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mSurfaceStatusListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 292
    invoke-interface {v1, v0, p1, p2, v2}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceChanged(Ljava/lang/Object;IIZ)V

    .line 295
    :cond_0
    iput p1, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mPreviewWidth:I

    .line 296
    iput p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mPreviewHeight:I

    return-void
.end method
