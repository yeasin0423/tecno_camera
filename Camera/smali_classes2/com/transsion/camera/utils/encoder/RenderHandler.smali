.class public final Lcom/transsion/camera/utils/encoder/RenderHandler;
.super Ljava/lang/Object;
.source "RenderHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mEgl_type:I


# instance fields
.field private mEglCore:Lcom/transsion/camera/utils/gles/core/EglCore;

.field private mFullScreen:Lcom/transsion/camera/utils/gles/core/Program;

.field private mInputWindowSurface:Lcom/transsion/camera/utils/gles/core/WindowSurface;

.field private final mLock:Ljava/lang/Object;

.field private mRequestDraw:I

.field private mRequestRelease:Z

.field private mRequestSetEglContext:Z

.field private mShard_context:Landroid/opengl/EGLContext;

.field private mSurface:Landroid/view/Surface;

.field private mTexId:I

.field private mtx:[F

.field private mvp:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/transsion/camera/utils/encoder/RenderHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/encoder/RenderHandler;->TAG:Ljava/lang/String;

    const/4 v0, -0x1

    .line 20
    sput v0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mEgl_type:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mLock:Ljava/lang/Object;

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 27
    iput-object v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mtx:[F

    new-array v0, v0, [F

    .line 28
    iput-object v0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mvp:[F

    return-void
.end method

.method public static final createHandler(Ljava/lang/String;I)Lcom/transsion/camera/utils/encoder/RenderHandler;
    .locals 3

    .line 40
    sput p1, Lcom/transsion/camera/utils/encoder/RenderHandler;->mEgl_type:I

    .line 41
    new-instance p1, Lcom/transsion/camera/utils/encoder/RenderHandler;

    invoke-direct {p1}, Lcom/transsion/camera/utils/encoder/RenderHandler;-><init>()V

    .line 42
    iget-object v0, p1, Lcom/transsion/camera/utils/encoder/RenderHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 43
    :try_start_0
    new-instance v1, Ljava/lang/Thread;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->TAG:Ljava/lang/String;

    :goto_0
    invoke-direct {v1, p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 44
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private final internalPrepare()V
    .locals 4

    .line 156
    invoke-direct {p0}, Lcom/transsion/camera/utils/encoder/RenderHandler;->internalRelease()V

    .line 157
    new-instance v0, Lcom/transsion/camera/utils/gles/core/EglCore;

    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mShard_context:Landroid/opengl/EGLContext;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/utils/gles/core/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    iput-object v0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mEglCore:Lcom/transsion/camera/utils/gles/core/EglCore;

    .line 158
    new-instance v1, Lcom/transsion/camera/utils/gles/core/WindowSurface;

    iget-object v3, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mSurface:Landroid/view/Surface;

    invoke-direct {v1, v0, v3, v2}, Lcom/transsion/camera/utils/gles/core/WindowSurface;-><init>(Lcom/transsion/camera/utils/gles/core/EglCore;Landroid/view/Surface;Z)V

    iput-object v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mInputWindowSurface:Lcom/transsion/camera/utils/gles/core/WindowSurface;

    .line 159
    invoke-virtual {v1}, Lcom/transsion/camera/utils/gles/core/EglSurfaceBase;->makeCurrent()V

    .line 160
    sget v0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mEgl_type:I

    const/16 v1, 0xde1

    if-ne v0, v1, :cond_0

    .line 161
    new-instance v0, Lcom/transsion/camera/utils/gles/ProgramTexture2d;

    invoke-direct {v0}, Lcom/transsion/camera/utils/gles/ProgramTexture2d;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mFullScreen:Lcom/transsion/camera/utils/gles/core/Program;

    goto :goto_0

    .line 163
    :cond_0
    new-instance v0, Lcom/transsion/camera/utils/gles/ProgramTextureOES;

    invoke-direct {v0}, Lcom/transsion/camera/utils/gles/ProgramTextureOES;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mFullScreen:Lcom/transsion/camera/utils/gles/core/Program;

    :goto_0
    const/4 v0, 0x0

    .line 165
    iput-object v0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mSurface:Landroid/view/Surface;

    .line 166
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method private final internalRelease()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mInputWindowSurface:Lcom/transsion/camera/utils/gles/core/WindowSurface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0}, Lcom/transsion/camera/utils/gles/core/WindowSurface;->release()V

    .line 173
    iput-object v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mInputWindowSurface:Lcom/transsion/camera/utils/gles/core/WindowSurface;

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mFullScreen:Lcom/transsion/camera/utils/gles/core/Program;

    if-eqz v0, :cond_1

    .line 176
    invoke-virtual {v0}, Lcom/transsion/camera/utils/gles/core/Program;->release()V

    .line 177
    iput-object v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mFullScreen:Lcom/transsion/camera/utils/gles/core/Program;

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mEglCore:Lcom/transsion/camera/utils/gles/core/EglCore;

    if-eqz v0, :cond_2

    .line 180
    invoke-virtual {v0}, Lcom/transsion/camera/utils/gles/core/EglCore;->release()V

    .line 181
    iput-object v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mEglCore:Lcom/transsion/camera/utils/gles/core/EglCore;

    :cond_2
    return-void
.end method


# virtual methods
.method public final draw(I)V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mtx:[F

    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mvp:[F

    invoke-virtual {p0, p1, v0, v1}, Lcom/transsion/camera/utils/encoder/RenderHandler;->draw(I[F[F)V

    return-void
.end method

.method public final draw(I[F)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mvp:[F

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/camera/utils/encoder/RenderHandler;->draw(I[F[F)V

    return-void
.end method

.method public final draw(I[F[F)V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 76
    :try_start_0
    iget-boolean v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mRequestRelease:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 77
    :cond_0
    iput p1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mTexId:I

    .line 78
    iput-object p2, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mtx:[F

    .line 79
    iput-object p3, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mvp:[F

    .line 80
    iget p1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mRequestDraw:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mRequestDraw:I

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 86
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final release()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 98
    :try_start_0
    iget-boolean v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mRequestRelease:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 99
    iput-boolean v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mRequestRelease:Z

    .line 100
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :try_start_1
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    :catch_0
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final run()V
    .locals 4

    .line 116
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_0
    iget-boolean v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mRequestRelease:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    monitor-exit v0

    goto :goto_1

    .line 118
    :cond_1
    iget-boolean v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mRequestSetEglContext:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 119
    iput-boolean v3, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mRequestSetEglContext:Z

    .line 120
    invoke-direct {p0}, Lcom/transsion/camera/utils/encoder/RenderHandler;->internalPrepare()V

    .line 122
    :cond_2
    iget v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mRequestDraw:I

    if-lez v1, :cond_3

    move v3, v2

    :cond_3
    if-eqz v3, :cond_4

    .line 124
    iget v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mRequestDraw:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mRequestDraw:I

    .line 126
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v3, :cond_5

    .line 128
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mEglCore:Lcom/transsion/camera/utils/gles/core/EglCore;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mTexId:I

    if-ltz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mInputWindowSurface:Lcom/transsion/camera/utils/gles/core/WindowSurface;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/gles/core/EglSurfaceBase;->makeCurrent()V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 131
    invoke-static {v1, v1, v0, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4000

    .line 132
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mFullScreen:Lcom/transsion/camera/utils/gles/core/Program;

    iget v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mTexId:I

    iget-object v2, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mtx:[F

    iget-object v3, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mvp:[F

    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/camera/utils/gles/core/Program;->drawFrame(I[F[F)V

    .line 134
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mInputWindowSurface:Lcom/transsion/camera/utils/gles/core/WindowSurface;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/gles/core/EglSurfaceBase;->swapBuffers()Z

    goto :goto_0

    .line 137
    :cond_5
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 139
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 141
    :catch_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    :goto_1
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 147
    :try_start_3
    iput-boolean v2, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mRequestRelease:Z

    .line 148
    invoke-direct {p0}, Lcom/transsion/camera/utils/encoder/RenderHandler;->internalRelease()V

    .line 149
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 150
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    .line 143
    :goto_2
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :catchall_2
    move-exception p0

    .line 126
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0
.end method

.method public final setEglContext(Landroid/opengl/EGLContext;Landroid/view/Surface;Z)V
    .locals 1

    .line 50
    iget-object p3, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 51
    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mRequestRelease:Z

    if-eqz v0, :cond_0

    monitor-exit p3

    return-void

    .line 52
    :cond_0
    iput-object p1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mShard_context:Landroid/opengl/EGLContext;

    .line 53
    iput-object p2, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mSurface:Landroid/view/Surface;

    const/4 p1, 0x1

    .line 55
    iput-boolean p1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mRequestSetEglContext:Z

    .line 56
    iget-object p1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mtx:[F

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 57
    iget-object p1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mvp:[F

    invoke-static {p1, p2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 58
    iget-object p1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :try_start_1
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    :catch_0
    :try_start_2
    monitor-exit p3

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
