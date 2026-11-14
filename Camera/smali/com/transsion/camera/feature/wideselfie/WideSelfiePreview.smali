.class Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;
.super Lcom/transsion/camera/feature/common/BasePreview;
.source "WideSelfiePreview.java"

# interfaces
.implements Lcom/transsion/camera/feature/wideselfie/IWideSelfieCapture$IThumbnailListener;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private volatile mOffset:Landroid/graphics/Point;

.field private volatile mThumbLocation:Landroid/graphics/Rect;

.field private final mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/common/BasePreview;-><init>(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 37
    iput-object p2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    .line 39
    new-instance p1, Lcom/transsion/camera/feature/common/glrender/GLPaint;

    invoke-direct {p1}, Lcom/transsion/camera/feature/common/glrender/GLPaint;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/common/BasePreview;->mPaint:Lcom/transsion/camera/feature/common/glrender/GLPaint;

    .line 40
    iget p2, p2, Lcom/transsion/camera/feature/common/BaseUISpec;->mBorderColor:I

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/common/glrender/GLPaint;->setColor(I)V

    .line 41
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mPaint:Lcom/transsion/camera/feature/common/glrender/GLPaint;

    const/high16 p1, 0x40000000    # 2.0f

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/common/glrender/GLPaint;->setLineWidth(F)V

    return-void
.end method

.method private drawCaptureThumbnail(Landroid/graphics/SurfaceTexture;ILandroid/graphics/Point;Landroid/graphics/Rect;I)V
    .locals 10

    .line 187
    invoke-direct {p0, p5}, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->isLand(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 190
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 191
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-nez p5, :cond_0

    .line 193
    iget p5, p3, Landroid/graphics/Point;->x:I

    iget v2, p4, Landroid/graphics/Rect;->left:I

    add-int/2addr p5, v2

    .line 194
    iget-object v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget v2, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceHeight:I

    iget p3, p3, Landroid/graphics/Point;->y:I

    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 196
    :cond_0
    iget p5, p3, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget v3, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    iget v4, p4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    add-int/2addr p5, v3

    .line 197
    iget v3, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceHeight:I

    iget p3, p3, Landroid/graphics/Point;->y:I

    iget v2, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    add-int/2addr p3, v2

    iget p4, p4, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 201
    :cond_1
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 202
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v1

    const/16 v2, 0x5a

    if-ne p5, v2, :cond_2

    .line 204
    iget p5, p3, Landroid/graphics/Point;->x:I

    iget v2, p4, Landroid/graphics/Rect;->top:I

    add-int/2addr p5, v2

    .line 205
    iget-object v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget v3, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceHeight:I

    iget p3, p3, Landroid/graphics/Point;->y:I

    iget v2, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    add-int/2addr p3, v2

    iget p4, p4, Landroid/graphics/Rect;->left:I

    :goto_0
    sub-int/2addr p3, p4

    sub-int v2, v3, p3

    goto :goto_2

    .line 208
    :cond_2
    iget p5, p3, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget v3, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    iget v4, p4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    add-int/2addr p5, v3

    .line 209
    iget v2, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceHeight:I

    iget p3, p3, Landroid/graphics/Point;->y:I

    iget p4, p4, Landroid/graphics/Rect;->right:I

    :goto_1
    add-int/2addr p3, p4

    sub-int/2addr v2, p3

    .line 214
    :goto_2
    iget-object v3, p0, Lcom/transsion/camera/feature/common/BasePreview;->mSurface2dProgram:Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;

    move-object v4, p1

    move v5, p2

    move v6, p5

    move v7, v2

    move v8, v0

    move v9, v1

    invoke-virtual/range {v3 .. v9}, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->draw(Landroid/graphics/SurfaceTexture;IIIII)V

    .line 216
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget-boolean p2, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mBorder:Z

    if-eqz p2, :cond_3

    .line 217
    iget p2, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceHeight:I

    add-int/2addr v2, v1

    sub-int p3, p2, v2

    .line 218
    iget p1, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceWidth:I

    const/4 p4, 0x0

    invoke-static {p4, p4, p1, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 220
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BasePreview;->mPaint:Lcom/transsion/camera/feature/common/glrender/GLPaint;

    iget-object p2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget p2, p2, Lcom/transsion/camera/feature/common/BaseUISpec;->mBorderColor:I

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/common/glrender/GLPaint;->setColor(I)V

    .line 221
    iget-object v2, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    int-to-float v3, p5

    int-to-float v4, p3

    int-to-float v5, v0

    int-to-float v6, v1

    iget-object v7, p0, Lcom/transsion/camera/feature/common/BasePreview;->mPaint:Lcom/transsion/camera/feature/common/glrender/GLPaint;

    invoke-interface/range {v2 .. v7}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->drawRect(FFFFLcom/transsion/camera/feature/common/glrender/GLPaint;)V

    :cond_3
    return-void
.end method

.method private drawPreviewThumbnail(Landroid/graphics/SurfaceTexture;ILandroid/graphics/Point;I)V
    .locals 10

    .line 229
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget v8, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    .line 230
    iget v0, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    .line 232
    invoke-direct {p0, p4}, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->isLand(I)Z

    move-result p4

    .line 234
    iget v1, p3, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget v3, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    iget v4, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int v9, v1, v3

    if-nez p4, :cond_0

    .line 236
    iget v1, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceHeight:I

    iget v2, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    sub-int/2addr v1, v2

    iget v2, p3, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 238
    :cond_0
    iget v1, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceHeight:I

    iget v3, p3, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v3

    iget v3, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    iget v2, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    add-int/2addr v3, v2

    shr-int/lit8 v2, v3, 0x1

    :goto_0
    sub-int/2addr v1, v2

    move v5, v1

    .line 242
    iget-object v1, p0, Lcom/transsion/camera/feature/common/BasePreview;->mSurface2dProgram:Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;

    move-object v2, p1

    move v3, p2

    move v4, v9

    move v6, v8

    move v7, v0

    invoke-virtual/range {v1 .. v7}, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->draw(Landroid/graphics/SurfaceTexture;IIIII)V

    .line 244
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget-boolean p2, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mBorder:Z

    if-eqz p2, :cond_2

    if-nez p4, :cond_1

    .line 246
    iget p1, p3, Landroid/graphics/Point;->y:I

    goto :goto_1

    .line 248
    :cond_1
    iget p2, p3, Landroid/graphics/Point;->y:I

    iget p3, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    iget p1, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    sub-int/2addr p3, p1

    shr-int/lit8 p1, p3, 0x1

    add-int/2addr p1, p2

    .line 250
    :goto_1
    iget-object p2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget p3, p2, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceWidth:I

    iget p2, p2, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceHeight:I

    const/4 p4, 0x0

    invoke-static {p4, p4, p3, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 251
    iget-object p2, p0, Lcom/transsion/camera/feature/common/BasePreview;->mPaint:Lcom/transsion/camera/feature/common/glrender/GLPaint;

    iget-object p3, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget p3, p3, Lcom/transsion/camera/feature/common/BaseUISpec;->mBorderColor:I

    invoke-virtual {p2, p3}, Lcom/transsion/camera/feature/common/glrender/GLPaint;->setColor(I)V

    .line 252
    iget-object v1, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    int-to-float v2, v9

    int-to-float v3, p1

    int-to-float v4, v8

    int-to-float v5, v0

    iget-object v6, p0, Lcom/transsion/camera/feature/common/BasePreview;->mPaint:Lcom/transsion/camera/feature/common/glrender/GLPaint;

    invoke-interface/range {v1 .. v6}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->drawRect(FFFFLcom/transsion/camera/feature/common/glrender/GLPaint;)V

    :cond_2
    return-void
.end method

.method private drawStitchThumbnail(Landroid/graphics/Point;Landroid/graphics/Point;I)V
    .locals 8

    .line 131
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/feature/common/BasePreview;->mBgrBuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_6

    if-nez p2, :cond_0

    goto/16 :goto_4

    .line 144
    :cond_0
    invoke-direct {p0, p3}, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->isLand(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 145
    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget v1, v1, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceHeight:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget v2, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    sub-int/2addr v1, v2

    .line 146
    iget-object v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget v2, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    iget v3, p0, Lcom/transsion/camera/feature/common/BasePreview;->mThumbHeight:I

    sub-int/2addr v2, v3

    .line 147
    iget v3, p2, Landroid/graphics/Point;->x:I

    if-le v3, v2, :cond_1

    .line 148
    iput v2, p2, Landroid/graphics/Point;->x:I

    :cond_1
    if-nez p3, :cond_2

    .line 151
    iget p1, p1, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->x:I

    add-int/2addr p1, p2

    goto :goto_0

    .line 153
    :cond_2
    iget p1, p1, Landroid/graphics/Point;->x:I

    add-int/2addr p1, v2

    iget p2, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr p1, p2

    :goto_0
    move v3, p1

    move v4, v1

    goto :goto_3

    .line 156
    :cond_3
    iget v1, p1, Landroid/graphics/Point;->x:I

    .line 157
    iget-object v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget v2, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    iget v3, p0, Lcom/transsion/camera/feature/common/BasePreview;->mThumbWidth:I

    sub-int/2addr v2, v3

    .line 158
    iget v3, p2, Landroid/graphics/Point;->x:I

    if-le v3, v2, :cond_4

    .line 159
    iput v2, p2, Landroid/graphics/Point;->x:I

    :cond_4
    const/16 v2, 0x5a

    if-ne p3, v2, :cond_5

    .line 162
    iget-object p3, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget p3, p3, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceHeight:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget v2, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    add-int/2addr p1, v2

    iget p2, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr p1, p2

    :goto_1
    sub-int p1, p3, p1

    goto :goto_2

    .line 165
    :cond_5
    iget-object p3, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget p3, p3, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceHeight:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget p2, p2, Landroid/graphics/Point;->x:I

    add-int/2addr p1, p2

    iget p2, p0, Lcom/transsion/camera/feature/common/BasePreview;->mThumbWidth:I

    add-int/2addr p1, p2

    goto :goto_1

    :goto_2
    move v4, p1

    move v3, v1

    .line 170
    :goto_3
    iget-object v2, p0, Lcom/transsion/camera/feature/common/BasePreview;->mBgr2dProgram:Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;

    iget v5, p0, Lcom/transsion/camera/feature/common/BasePreview;->mThumbWidth:I

    iget v6, p0, Lcom/transsion/camera/feature/common/BasePreview;->mThumbHeight:I

    iget-object v7, p0, Lcom/transsion/camera/feature/common/BasePreview;->mBgrBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual/range {v2 .. v7}, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->draw(IIIILjava/nio/ByteBuffer;)V

    .line 171
    monitor-exit v0

    return-void

    .line 137
    :cond_6
    :goto_4
    sget-object p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "drawThumbnail failed"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 138
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 171
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private isLand(I)Z
    .locals 0

    const/4 p0, -0x1

    if-eq p1, p0, :cond_0

    if-eqz p1, :cond_0

    const/16 p0, 0xb4

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public draw(Landroid/graphics/SurfaceTexture;III)Z
    .locals 2

    .line 76
    iget-boolean v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mUIReady:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mBgr2dProgram:Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mSurface2dProgram:Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;

    if-nez v0, :cond_1

    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->draw(Landroid/graphics/SurfaceTexture;I)V

    .line 86
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    invoke-interface {v0, p3, p4}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->setSize(II)V

    .line 88
    invoke-virtual {p0, p3, p4}, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->drawBackground(II)V

    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->drawThumbnail(Landroid/graphics/SurfaceTexture;I)V

    const/4 p0, 0x1

    return p0

    .line 80
    :cond_2
    :goto_0
    sget-object p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "draw mBgr2dProgram or mSurface2dProgram is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method protected drawBackground(II)V
    .locals 10

    .line 97
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget-object p2, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    .line 98
    iget v0, p2, Landroid/graphics/Point;->x:I

    .line 99
    iget p2, p2, Landroid/graphics/Point;->y:I

    .line 100
    iget v1, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    .line 101
    iget v2, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    .line 102
    iget-object v3, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    int-to-float v0, v0

    int-to-float p2, p2

    int-to-float v1, v1

    int-to-float v2, v2

    iget v8, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mBgColor:I

    move v4, v0

    move v5, p2

    move v6, v1

    move v7, v2

    invoke-interface/range {v3 .. v8}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->fillRect(FFFFI)V

    .line 104
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget-boolean v3, p1, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mBgBorder:Z

    if-eqz v3, :cond_0

    .line 105
    iget-object v3, p0, Lcom/transsion/camera/feature/common/BasePreview;->mPaint:Lcom/transsion/camera/feature/common/glrender/GLPaint;

    iget p1, p1, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->mBgBorderColor:I

    invoke-virtual {v3, p1}, Lcom/transsion/camera/feature/common/glrender/GLPaint;->setColor(I)V

    .line 106
    iget-object v4, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    iget-object v9, p0, Lcom/transsion/camera/feature/common/BasePreview;->mPaint:Lcom/transsion/camera/feature/common/glrender/GLPaint;

    move v5, v0

    move v6, p2

    move v7, v1

    move v8, v2

    invoke-interface/range {v4 .. v9}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->drawRect(FFFFLcom/transsion/camera/feature/common/glrender/GLPaint;)V

    :cond_0
    return-void
.end method

.method protected drawThumbnail(Landroid/graphics/SurfaceTexture;I)V
    .locals 6

    .line 112
    iget v5, p0, Lcom/transsion/camera/feature/common/BasePreview;->mOrientation:I

    .line 113
    iget-boolean v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCapturing:Z

    .line 114
    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget-object v3, v1, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    .line 115
    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mOffset:Landroid/graphics/Point;

    .line 116
    iget-object v4, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mThumbLocation:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 119
    invoke-direct {p0, v3, v1, v5}, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->drawStitchThumbnail(Landroid/graphics/Point;Landroid/graphics/Point;I)V

    :cond_0
    if-eqz v0, :cond_1

    if-eqz v4, :cond_1

    .line 121
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 122
    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->drawCaptureThumbnail(Landroid/graphics/SurfaceTexture;ILandroid/graphics/Point;Landroid/graphics/Rect;I)V

    goto :goto_0

    .line 125
    :cond_1
    invoke-direct {p0, p1, p2, v3, v5}, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->drawPreviewThumbnail(Landroid/graphics/SurfaceTexture;ILandroid/graphics/Point;I)V

    :goto_0
    return-void
.end method

.method public onCaptureEnd()V
    .locals 1

    .line 64
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BasePreview;->onCaptureEnd()V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mOffset:Landroid/graphics/Point;

    .line 66
    iput-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mThumbLocation:Landroid/graphics/Rect;

    return-void
.end method

.method public onCaptureFailed()V
    .locals 1

    .line 57
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BasePreview;->onCaptureFailed()V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mOffset:Landroid/graphics/Point;

    .line 59
    iput-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mThumbLocation:Landroid/graphics/Rect;

    return-void
.end method

.method public onThumbnailUpdate(Lcom/transsion/camera/feature/wideselfie/ThumbnailInfo;)V
    .locals 7

    .line 46
    iget-object v0, p1, Lcom/transsion/camera/feature/wideselfie/ThumbnailInfo;->mThumbnail:[B

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/transsion/camera/feature/wideselfie/ThumbnailInfo;->mWidth:I

    if-lez v0, :cond_0

    iget v0, p1, Lcom/transsion/camera/feature/wideselfie/ThumbnailInfo;->mHeight:I

    if-lez v0, :cond_0

    .line 48
    iget-object v0, p1, Lcom/transsion/camera/feature/wideselfie/ThumbnailInfo;->mOffset:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mOffset:Landroid/graphics/Point;

    .line 49
    iget-object v2, p1, Lcom/transsion/camera/feature/wideselfie/ThumbnailInfo;->mThumbnail:[B

    iget v3, p1, Lcom/transsion/camera/feature/wideselfie/ThumbnailInfo;->mWidth:I

    iget v4, p1, Lcom/transsion/camera/feature/wideselfie/ThumbnailInfo;->mHeight:I

    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget v5, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    iget v6, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/camera/feature/common/BasePreview;->onThumbnailUpdate([BIIII)V

    .line 52
    :cond_0
    iget-object p1, p1, Lcom/transsion/camera/feature/wideselfie/ThumbnailInfo;->mThumbLocation:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;->mThumbLocation:Landroid/graphics/Rect;

    return-void
.end method
