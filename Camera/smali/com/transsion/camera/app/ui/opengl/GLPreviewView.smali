.class public Lcom/transsion/camera/app/ui/opengl/GLPreviewView;
.super Landroid/opengl/GLSurfaceView;
.source "GLPreviewView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/opengl/GLPreviewView$MyConfigChooser;,
        Lcom/transsion/camera/app/ui/opengl/GLPreviewView$GLPreviewContextFactory;,
        Lcom/transsion/camera/app/ui/opengl/GLPreviewView$SurfaceTextureListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private volatile mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

.field private mFrameDrawState:I

.field private mGLProgram:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

.field private mIsNeedReCreateSurface:Z

.field private volatile mIsTextureAvailableAfterStartRenderRequest:Z

.field private mListener:Lcom/transsion/camera/app/ui/opengl/GLPreviewView$SurfaceTextureListener;

.field private final mLockObj:Ljava/lang/Object;

.field private volatile mNeedToStopRequest:Z

.field private mOESTextureId:I

.field public mPreviewBitmap:Landroid/graphics/Bitmap;

.field private mPreviewRenderedCallbacker:Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;

.field private mRenderedCallbackHandler:Landroid/os/Handler;

.field private mRenderedCallbackRunnable:Ljava/lang/Runnable;

.field private mRendererRequestHandler:Landroid/os/Handler;

.field private mRendererRequestThread:Landroid/os/HandlerThread;

.field public final mStateLock:Lcom/transsion/camera/utils/StateWait;

.field private mSurfaceHeight:I

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mSurfaceWidth:I

.field private mTmpCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 218
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 35
    iput p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mFrameDrawState:I

    .line 43
    new-instance p2, Lcom/transsion/camera/utils/StateWait;

    invoke-direct {p2}, Lcom/transsion/camera/utils/StateWait;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mStateLock:Lcom/transsion/camera/utils/StateWait;

    .line 47
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mLockObj:Ljava/lang/Object;

    .line 55
    new-instance p2, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$1;-><init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mRenderedCallbackRunnable:Ljava/lang/Runnable;

    const/4 p2, 0x2

    .line 219
    invoke-virtual {p0, p2}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 220
    new-instance v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$GLPreviewContextFactory;

    invoke-direct {v0, p0, p2}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$GLPreviewContextFactory;-><init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;I)V

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    .line 221
    new-instance p2, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$MyConfigChooser;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$MyConfigChooser;-><init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)V

    invoke-virtual {p0, p2}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 222
    invoke-virtual {p0, p0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 223
    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 224
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mNeedToStopRequest:Z

    .line 225
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mIsTextureAvailableAfterStartRenderRequest:Z

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Landroid/os/Handler;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mRenderedCallbackHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mPreviewRenderedCallbacker:Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;

    return-object p0
.end method

.method static synthetic access$102(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;)Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mPreviewRenderedCallbacker:Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;

    return-object p1
.end method

.method static synthetic access$200()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 29
    sget-object v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Ljava/lang/Object;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mLockObj:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->destroySurfaceTexture()V

    return-void
.end method

.method static synthetic access$700(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->destroyGLProgram()V

    return-void
.end method

.method static synthetic access$800(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mTmpCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    return-object p0
.end method

.method static synthetic access$802(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mTmpCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    return-object p1
.end method

.method static synthetic access$900(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;II)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->offscreenRenderForGetPixel(II)V

    return-void
.end method

.method private createGLProgram()V
    .locals 2

    .line 390
    new-instance v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    sget-object v1, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;->TEXTURE_EXT:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;-><init>(Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mGLProgram:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    return-void
.end method

.method private createSurfaceTexture()V
    .locals 3

    .line 379
    sget-object v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createSurfaceTexture run in thread : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 380
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->startRendererRequestThread()V

    .line 381
    invoke-static {}, Lcom/transsion/camera/app/ui/opengl/GLUtils;->createOESTexture()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mOESTextureId:I

    .line 382
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mOESTextureId:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 383
    iget-object v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mRendererRequestHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 384
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mListener:Lcom/transsion/camera/app/ui/opengl/GLPreviewView$SurfaceTextureListener;

    if-eqz v0, :cond_0

    .line 385
    iget-object v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceWidth:I

    iget p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceHeight:I

    invoke-interface {v0, v1, v2, p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$SurfaceTextureListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    :cond_0
    return-void
.end method

.method private destroyGLProgram()V
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mGLProgram:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->release()V

    const/4 v0, 0x0

    .line 396
    iput-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mGLProgram:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    .line 398
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->stopRenderRequestThread()V

    return-void
.end method

.method private destroySurfaceTexture()V
    .locals 3

    .line 402
    sget-object v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroySurfaceTexture mSurfaceTexture = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",currThread = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 404
    iget-object v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mListener:Lcom/transsion/camera/app/ui/opengl/GLPreviewView$SurfaceTextureListener;

    if-eqz v1, :cond_0

    .line 405
    invoke-interface {v1, v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$SurfaceTextureListener;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    const/4 v0, 0x0

    .line 408
    iput-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    :cond_1
    return-void
.end method

.method private offscreenRenderForGetPixel(II)V
    .locals 7

    .line 547
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mGLProgram:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 550
    invoke-static {v0, v0, p1, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 551
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 552
    iget-object v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mGLProgram:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v3, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mOESTextureId:I

    iget-object v6, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->getPreviewBitmapByFBO(Landroid/graphics/SurfaceTexture;IIILcom/transsion/camera/app/common/preview/IPreviewCallbacker;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mPreviewBitmap:Landroid/graphics/Bitmap;

    :cond_1
    :goto_0
    return-void
.end method

.method private onDrawFrameDone()V
    .locals 2

    .line 521
    iget v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mFrameDrawState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 522
    iput v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mFrameDrawState:I

    .line 523
    sget-object v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[PreviewPerformance] onDrawFrame done."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 524
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mListener:Lcom/transsion/camera/app/ui/opengl/GLPreviewView$SurfaceTextureListener;

    if-eqz p0, :cond_0

    .line 525
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$SurfaceTextureListener;->onSurfaceTextureDrawn()V

    :cond_0
    return-void
.end method

.method private startRendererRequestThread()V
    .locals 2

    .line 432
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RendererRequestThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mRendererRequestThread:Landroid/os/HandlerThread;

    .line 433
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 434
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mRendererRequestThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mRendererRequestHandler:Landroid/os/Handler;

    return-void
.end method

.method private stopRenderRequestThread()V
    .locals 3

    .line 438
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mRendererRequestThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 439
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 441
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mRendererRequestThread:Landroid/os/HandlerThread;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/os/HandlerThread;->join(J)V

    const/4 v0, 0x0

    .line 442
    iput-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mRendererRequestThread:Landroid/os/HandlerThread;

    .line 443
    iput-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mRendererRequestHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 445
    sget-object v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Interrupted while trying to join mRespondThread"

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public cameraOperateAction(I)V
    .locals 1

    const/16 v0, 0x1b

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mIsNeedReCreateSurface:Z

    :cond_0
    const/16 v0, 0x1f

    if-ne p1, v0, :cond_2

    .line 108
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mIsNeedReCreateSurface:Z

    if-eqz p1, :cond_2

    .line 109
    sget-object p1, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "SurfaceError"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 110
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-ne p1, v0, :cond_1

    .line 111
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 112
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->release()V

    :cond_1
    const/4 p1, 0x4

    .line 115
    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    const/4 p1, 0x0

    .line 116
    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    .line 117
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mIsNeedReCreateSurface:Z

    :cond_2
    return-void
.end method

.method public getBitmap(II)Landroid/graphics/Bitmap;
    .locals 2

    .line 556
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mStateLock:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/StateWait;->resetState()V

    .line 557
    new-instance v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$9;-><init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;II)V

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 565
    :try_start_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mStateLock:Lcom/transsion/camera/utils/StateWait;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/utils/StateWait;->waitState(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 567
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 569
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mPreviewBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 375
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method public loadGLResource(ZI)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    if-eqz v0, :cond_1

    .line 124
    new-instance v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$2;-><init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;IZ)V

    if-eqz p1, :cond_0

    .line 140
    iget-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mStateLock:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {p1}, Lcom/transsion/camera/utils/StateWait;->resetState()V

    .line 141
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 143
    :try_start_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mStateLock:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/StateWait;->waitState()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 145
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public loadGLResources(Z[I)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    if-eqz v0, :cond_1

    .line 155
    new-instance v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$3;-><init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;[IZ)V

    if-eqz p1, :cond_0

    .line 171
    iget-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mStateLock:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {p1}, Lcom/transsion/camera/utils/StateWait;->resetState()V

    .line 172
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 174
    :try_start_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mStateLock:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/StateWait;->waitState()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 176
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public modeInit(Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 263
    :try_start_0
    iput-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    .line 264
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    new-instance v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$4;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$4;-><init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V

    .line 287
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p0

    .line 264
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public modePause()V
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    if-nez v0, :cond_0

    return-void

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    .line 334
    new-instance v1, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$7;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$7;-><init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V

    .line 340
    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public modeReload()V
    .locals 2

    .line 344
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    if-nez v0, :cond_0

    return-void

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    .line 348
    new-instance v1, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$8;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$8;-><init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V

    .line 354
    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public modeResume()V
    .locals 2

    .line 316
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    if-nez v0, :cond_0

    return-void

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    .line 320
    new-instance v1, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$6;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$6;-><init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V

    .line 326
    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public modeUninit()V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    if-nez v0, :cond_0

    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    .line 295
    new-instance v1, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$5;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$5;-><init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V

    .line 309
    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 310
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 311
    :try_start_0
    iput-object v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    .line 312
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5

    .line 490
    iget-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mGLProgram:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    if-nez p1, :cond_0

    goto :goto_1

    .line 493
    :cond_0
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mIsTextureAvailableAfterStartRenderRequest:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 494
    sget-object p1, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onDrawFrame add mRenderedCallbackRunnable event"

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 495
    iget-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mRenderedCallbackRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 496
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mIsTextureAvailableAfterStartRenderRequest:Z

    .line 498
    :cond_1
    iget p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceWidth:I

    iget v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceHeight:I

    invoke-static {v0, v0, p1, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 499
    iget-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 500
    invoke-static {v0, v0, v0, p1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p1, 0x4500

    .line 501
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 502
    iget-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    if-eqz p1, :cond_3

    .line 503
    iget-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mLockObj:Ljava/lang/Object;

    monitor-enter p1

    .line 504
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mOESTextureId:I

    iget v3, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceWidth:I

    iget v4, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceHeight:I

    .line 505
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;->draw(Landroid/graphics/SurfaceTexture;III)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 506
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->onDrawFrameDone()V

    .line 507
    monitor-exit p1

    return-void

    .line 509
    :cond_2
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 511
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mGLProgram:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    if-eqz p1, :cond_4

    .line 512
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mOESTextureId:I

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->draw(Landroid/graphics/SurfaceTexture;I)V

    .line 513
    iget-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    if-eqz p1, :cond_4

    .line 514
    iget-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mOESTextureId:I

    iget v2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceWidth:I

    iget v3, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceHeight:I

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;->drawExtra(Landroid/graphics/SurfaceTexture;III)V

    .line 517
    :cond_4
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->onDrawFrameDone()V

    :cond_5
    :goto_1
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    .line 414
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mNeedToStopRequest:Z

    if-eqz v0, :cond_0

    return-void

    .line 417
    :cond_0
    iget v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mFrameDrawState:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 418
    iput v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mFrameDrawState:I

    .line 419
    sget-object v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[PreviewPerformance] onFrameAvailable"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mPreviewRenderedCallbacker:Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;

    if-eqz v0, :cond_2

    .line 422
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mIsTextureAvailableAfterStartRenderRequest:Z

    .line 423
    sget-object v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFrameAvailable thread = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 425
    :cond_2
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 426
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mListener:Lcom/transsion/camera/app/ui/opengl/GLPreviewView$SurfaceTextureListener;

    if-eqz p0, :cond_3

    .line 427
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$SurfaceTextureListener;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V

    :cond_3
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 365
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 366
    sget-object p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onPause"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 359
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 360
    sget-object p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onResume"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 2

    .line 463
    sget-object p1, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceChanged width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mSurfaceWidth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mSurfaceHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 465
    iget p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceWidth:I

    if-ne p1, p2, :cond_0

    iget p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceHeight:I

    if-ne p1, p3, :cond_0

    return-void

    .line 468
    :cond_0
    iput p2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceWidth:I

    .line 469
    iput p3, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceHeight:I

    .line 470
    iget-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mListener:Lcom/transsion/camera/app/ui/opengl/GLPreviewView$SurfaceTextureListener;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 471
    invoke-interface {p1, v0, p2, p3}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$SurfaceTextureListener;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    .line 473
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    if-eqz p1, :cond_2

    .line 474
    iget-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-interface {p1, v0, p2, p3}, Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;->surfaceChangedCallback(Landroid/graphics/SurfaceTexture;II)V

    :cond_2
    const/4 p1, 0x0

    .line 476
    iput p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mFrameDrawState:I

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    .line 452
    sget-object p1, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "onSurfaceCreated"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 453
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->createSurfaceTexture()V

    .line 454
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->createGLProgram()V

    .line 455
    iget-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    if-eqz p1, :cond_0

    .line 456
    iget-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;->surfaceCreatedCallback(Landroid/graphics/SurfaceTexture;)V

    :cond_0
    const/4 p1, 0x0

    .line 458
    iput p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mFrameDrawState:I

    return-void
.end method

.method public setSurfaceTextureListener(Lcom/transsion/camera/app/ui/opengl/GLPreviewView$SurfaceTextureListener;)V
    .locals 2

    .line 370
    sget-object v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "setSurfaceTextureListener"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 371
    iput-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mListener:Lcom/transsion/camera/app/ui/opengl/GLPreviewView$SurfaceTextureListener;

    return-void
.end method

.method public startRenderRequest(Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;Landroid/os/Handler;)V
    .locals 3

    .line 79
    sget-object v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRenderRequest callbacker = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",handler = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 80
    iput-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mPreviewRenderedCallbacker:Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;

    .line 81
    iput-object p2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mRenderedCallbackHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 82
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mNeedToStopRequest:Z

    .line 83
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void
.end method

.method public stopRenderRequest()V
    .locals 2

    .line 74
    sget-object v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "stopRenderRequest"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mNeedToStopRequest:Z

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 481
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    const/4 p1, 0x0

    .line 482
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mIsNeedReCreateSurface:Z

    .line 483
    iput p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceWidth:I

    .line 484
    iput p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceHeight:I

    .line 485
    iput p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mFrameDrawState:I

    return-void
.end method
