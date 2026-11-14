.class Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;
.super Lcom/transsion/camera/feature/common/BasePreview;
.source "BurstPMKPreview.java"

# interfaces
.implements Lcom/transsion/camera/feature/burstpmk/IBurstPMKUI$IDirectionListener;
.implements Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$IThumbnailListener;
.implements Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$IMoveListener;


# static fields
.field private static final DEFAULT_OFFSET:Landroid/graphics/Point;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mArrowNormal:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

.field private mArrowWarning:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

.field private final mContext:Landroid/content/Context;

.field private mDirection:I

.field private mDottedLine:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

.field private volatile mOffset:Landroid/graphics/Point;

.field private final mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 39
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->DEFAULT_OFFSET:Landroid/graphics/Point;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;)V
    .locals 1

    .line 54
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/common/BasePreview;-><init>(Lcom/transsion/camera/app/common/IAppUI;)V

    const/4 v0, 0x1

    .line 41
    iput v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mDirection:I

    .line 43
    sget-object v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->DEFAULT_OFFSET:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mOffset:Landroid/graphics/Point;

    .line 55
    iput-object p2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    .line 56
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getModeInflateRoot()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mContext:Landroid/content/Context;

    .line 58
    new-instance p1, Lcom/transsion/camera/feature/common/glrender/GLPaint;

    invoke-direct {p1}, Lcom/transsion/camera/feature/common/glrender/GLPaint;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/common/BasePreview;->mPaint:Lcom/transsion/camera/feature/common/glrender/GLPaint;

    .line 59
    iget-object p2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget p2, p2, Lcom/transsion/camera/feature/common/BaseUISpec;->mBorderColor:I

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/common/glrender/GLPaint;->setColor(I)V

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mPaint:Lcom/transsion/camera/feature/common/glrender/GLPaint;

    const/high16 p1, 0x40000000    # 2.0f

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/common/glrender/GLPaint;->setLineWidth(F)V

    return-void
.end method

.method private convertRotationX(III)I
    .locals 0

    sub-int/2addr p1, p2

    sub-int/2addr p1, p3

    return p1
.end method

.method private convertRotationY(III)I
    .locals 0

    sub-int/2addr p1, p2

    sub-int/2addr p1, p3

    return p1
.end method

.method private drawArrow(IILandroid/graphics/Point;Landroid/graphics/Point;I)V
    .locals 7

    .line 324
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v5, v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;->mArrowWidth:I

    .line 325
    iget v6, v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;->mArrowHeight:I

    .line 326
    iget v1, p3, Landroid/graphics/Point;->x:I

    iget v2, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;->mArrowPadding:I

    add-int/2addr v1, v2

    iget v2, p4, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v2

    .line 327
    iget p3, p3, Landroid/graphics/Point;->y:I

    iget v0, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    sub-int/2addr v0, v6

    const/4 v2, 0x1

    shr-int/2addr v0, v2

    add-int/2addr p3, v0

    iget p4, p4, Landroid/graphics/Point;->y:I

    sub-int/2addr p3, p4

    .line 329
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    const/4 v0, 0x0

    .line 331
    invoke-static {v0, v0, p1, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/16 v0, 0x19

    if-ne v2, p5, :cond_1

    .line 334
    invoke-direct {p0, p1, v1, v5}, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->convertRotationX(III)I

    move-result v3

    .line 335
    invoke-direct {p0, p2, p3, v6}, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->convertRotationY(III)I

    move-result v4

    .line 337
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    const/4 p2, -0x1

    invoke-interface {p1, p2}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->save(I)V

    const/16 p1, 0xb4

    .line 338
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->rotateCanvas(I)V

    if-le p4, v0, :cond_0

    .line 340
    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mArrowWarning:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    iget-object v2, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/camera/feature/common/glrender/BasicTexture;->draw(Lcom/transsion/camera/feature/common/glrender/GLCanvas;IIII)V

    goto :goto_0

    .line 342
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mArrowNormal:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    iget-object v2, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/camera/feature/common/glrender/BasicTexture;->draw(Lcom/transsion/camera/feature/common/glrender/GLCanvas;IIII)V

    .line 344
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    invoke-interface {p0}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->restore()V

    goto :goto_1

    :cond_1
    const/4 p2, 0x2

    if-ne p2, p5, :cond_3

    sub-int/2addr p1, v1

    sub-int p2, p1, v5

    if-le p4, v0, :cond_2

    .line 348
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mArrowWarning:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    iget-object p4, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    move-object p0, p1

    move-object p1, p4

    move p4, v5

    move p5, v6

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/camera/feature/common/glrender/BasicTexture;->draw(Lcom/transsion/camera/feature/common/glrender/GLCanvas;IIII)V

    goto :goto_1

    .line 350
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mArrowNormal:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    iget-object p4, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    move-object p0, p1

    move-object p1, p4

    move p4, v5

    move p5, v6

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/camera/feature/common/glrender/BasicTexture;->draw(Lcom/transsion/camera/feature/common/glrender/GLCanvas;IIII)V

    :cond_3
    :goto_1
    return-void
.end method

.method private drawCaptureThumbnail(Landroid/graphics/SurfaceTexture;IIILandroid/graphics/Point;Landroid/graphics/Point;I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move/from16 v5, p7

    .line 271
    iget-object v6, v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v14, v6, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    .line 272
    iget v6, v6, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    const/4 v15, 0x0

    const/4 v7, 0x1

    if-ne v7, v5, :cond_0

    .line 277
    iget v5, v3, Landroid/graphics/Point;->x:I

    iget v7, v4, Landroid/graphics/Point;->x:I

    add-int/2addr v5, v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x2

    if-ne v7, v5, :cond_1

    .line 279
    iget v5, v3, Landroid/graphics/Point;->x:I

    iget v7, v4, Landroid/graphics/Point;->x:I

    add-int/2addr v5, v7

    add-int/2addr v5, v14

    sub-int v5, v1, v5

    goto :goto_0

    :cond_1
    move v5, v15

    .line 282
    :goto_0
    iget v7, v4, Landroid/graphics/Point;->y:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    sub-int/2addr v6, v7

    .line 284
    iget v4, v4, Landroid/graphics/Point;->y:I

    if-ltz v4, :cond_2

    .line 285
    iget v3, v3, Landroid/graphics/Point;->y:I

    add-int/2addr v3, v6

    goto :goto_1

    .line 287
    :cond_2
    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-object v4, v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v4, v4, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    add-int/2addr v3, v4

    :goto_1
    sub-int v3, v2, v3

    .line 290
    iget-object v7, v0, Lcom/transsion/camera/feature/common/BasePreview;->mSurface2dProgram:Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;

    move-object/from16 v8, p1

    move/from16 v9, p2

    move v10, v5

    move v11, v3

    move v12, v14

    move v13, v6

    invoke-virtual/range {v7 .. v13}, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->draw(Landroid/graphics/SurfaceTexture;IIIII)V

    .line 292
    iget-object v4, v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget-boolean v4, v4, Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;->mBorder:Z

    if-eqz v4, :cond_3

    sub-int v3, v2, v3

    sub-int/2addr v3, v6

    .line 294
    invoke-static {v15, v15, v1, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 295
    iget-object v1, v0, Lcom/transsion/camera/feature/common/BasePreview;->mPaint:Lcom/transsion/camera/feature/common/glrender/GLPaint;

    iget-object v2, v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v2, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mBorderColor:I

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/common/glrender/GLPaint;->setColor(I)V

    .line 296
    iget-object v1, v0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    int-to-float v2, v5

    int-to-float v3, v3

    int-to-float v4, v14

    int-to-float v5, v6

    iget-object v0, v0, Lcom/transsion/camera/feature/common/BasePreview;->mPaint:Lcom/transsion/camera/feature/common/glrender/GLPaint;

    move-object/from16 p0, v1

    move/from16 p1, v2

    move/from16 p2, v3

    move/from16 p3, v4

    move/from16 p4, v5

    move-object/from16 p5, v0

    invoke-interface/range {p0 .. p5}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->drawRect(FFFFLcom/transsion/camera/feature/common/glrender/GLPaint;)V

    :cond_3
    return-void
.end method

.method private drawDotted(Landroid/graphics/Point;Landroid/graphics/Point;III)V
    .locals 9

    .line 207
    iget v0, p1, Landroid/graphics/Point;->x:I

    .line 208
    iget p1, p1, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v1, v1, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    iget-object v2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mDottedLine:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    .line 209
    invoke-virtual {v2}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    shr-int/2addr v1, v2

    add-int/2addr p1, v1

    iget v1, p2, Landroid/graphics/Point;->y:I

    sub-int v1, p1, v1

    .line 210
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v7, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    .line 211
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mDottedLine:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->getHeight()I

    move-result v8

    const/4 p1, 0x0

    .line 213
    invoke-static {p1, p1, p3, p4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    if-ne v2, p5, :cond_0

    .line 216
    iget p1, p2, Landroid/graphics/Point;->y:I

    if-eqz p1, :cond_2

    .line 217
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mDottedLine:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    iget-object p2, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    move-object p0, p1

    move-object p1, p2

    move p2, v0

    move p3, v1

    move p4, v7

    move p5, v8

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/camera/feature/common/glrender/BasicTexture;->draw(Lcom/transsion/camera/feature/common/glrender/GLCanvas;IIII)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-ne p1, p5, :cond_2

    .line 220
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mDottedLine:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->getWidth()I

    move-result p1

    invoke-direct {p0, p3, v0, p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->convertRotationX(III)I

    move-result v5

    .line 221
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mDottedLine:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->getHeight()I

    move-result p1

    invoke-direct {p0, p4, v1, p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->convertRotationY(III)I

    move-result v6

    .line 223
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    const/4 p3, -0x1

    invoke-interface {p1, p3}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->save(I)V

    const/16 p1, 0xb4

    .line 224
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->rotateCanvas(I)V

    .line 226
    iget p1, p2, Landroid/graphics/Point;->y:I

    if-eqz p1, :cond_1

    .line 227
    iget-object v3, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mDottedLine:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    iget-object v4, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    invoke-virtual/range {v3 .. v8}, Lcom/transsion/camera/feature/common/glrender/BasicTexture;->draw(Lcom/transsion/camera/feature/common/glrender/GLCanvas;IIII)V

    .line 230
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    invoke-interface {p0}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->restore()V

    :cond_2
    :goto_0
    return-void
.end method

.method private drawPreviewThumbnail(Landroid/graphics/SurfaceTexture;IIILandroid/graphics/Point;I)V
    .locals 9

    .line 303
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v8, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    .line 304
    iget v0, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    .line 305
    iget v1, p5, Landroid/graphics/Point;->x:I

    .line 306
    iget v2, p5, Landroid/graphics/Point;->y:I

    add-int/2addr v2, v0

    sub-int v5, p4, v2

    const/4 v2, 0x2

    if-ne v2, p6, :cond_0

    add-int/2addr v1, v8

    sub-int v1, p3, v1

    :cond_0
    move p6, v1

    .line 312
    iget-object v1, p0, Lcom/transsion/camera/feature/common/BasePreview;->mSurface2dProgram:Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;

    move-object v2, p1

    move v3, p2

    move v4, p6

    move v6, v8

    move v7, v0

    invoke-virtual/range {v1 .. v7}, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->draw(Landroid/graphics/SurfaceTexture;IIIII)V

    .line 314
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget-boolean p1, p1, Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;->mBorder:Z

    if-eqz p1, :cond_1

    .line 315
    iget p1, p5, Landroid/graphics/Point;->y:I

    const/4 p2, 0x0

    .line 316
    invoke-static {p2, p2, p3, p4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 317
    iget-object p2, p0, Lcom/transsion/camera/feature/common/BasePreview;->mPaint:Lcom/transsion/camera/feature/common/glrender/GLPaint;

    iget-object p3, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget p3, p3, Lcom/transsion/camera/feature/common/BaseUISpec;->mBorderColor:I

    invoke-virtual {p2, p3}, Lcom/transsion/camera/feature/common/glrender/GLPaint;->setColor(I)V

    .line 318
    iget-object v1, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    int-to-float v2, p6

    int-to-float v3, p1

    int-to-float v4, v8

    int-to-float v5, v0

    iget-object v6, p0, Lcom/transsion/camera/feature/common/BasePreview;->mPaint:Lcom/transsion/camera/feature/common/glrender/GLPaint;

    invoke-interface/range {v1 .. v6}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->drawRect(FFFFLcom/transsion/camera/feature/common/glrender/GLPaint;)V

    :cond_1
    return-void
.end method

.method private drawStitchThumbnail(IILandroid/graphics/Point;)V
    .locals 6

    .line 257
    iget p1, p3, Landroid/graphics/Point;->x:I

    .line 258
    iget p3, p3, Landroid/graphics/Point;->y:I

    iget v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mThumbWidth:I

    add-int/2addr p3, v0

    sub-int v2, p2, p3

    .line 260
    iget p2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mDirection:I

    const/4 p3, 0x2

    if-ne p3, p2, :cond_0

    .line 261
    iget-object p2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget p2, p2, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    iget p3, p0, Lcom/transsion/camera/feature/common/BasePreview;->mThumbHeight:I

    sub-int/2addr p2, p3

    sub-int p1, p2, p1

    :cond_0
    move v1, p1

    .line 265
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mBgr2dProgram:Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;

    iget v3, p0, Lcom/transsion/camera/feature/common/BasePreview;->mThumbWidth:I

    iget v4, p0, Lcom/transsion/camera/feature/common/BasePreview;->mThumbHeight:I

    iget-object v5, p0, Lcom/transsion/camera/feature/common/BasePreview;->mBgrBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->draw(IIIILjava/nio/ByteBuffer;)V

    return-void
.end method

.method private getBitmap(I)Landroid/graphics/Bitmap;
    .locals 4

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 99
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    .line 100
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 99
    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 101
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 102
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 103
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p1
.end method

.method private rotateCanvas(I)V
    .locals 6

    .line 243
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v1, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceWidth:I

    .line 244
    iget v0, v0, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceHeight:I

    .line 245
    div-int/lit8 v1, v1, 0x2

    .line 246
    div-int/lit8 v0, v0, 0x2

    .line 247
    iget-object v2, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    int-to-float v3, v1

    int-to-float v4, v0

    invoke-interface {v2, v3, v4}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->translate(FF)V

    .line 248
    iget-object v2, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    int-to-float v3, p1

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-interface {v2, v3, v4, v4, v5}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->rotate(FFFF)V

    .line 249
    rem-int/lit16 p1, p1, 0xb4

    if-eqz p1, :cond_0

    .line 250
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    neg-int p1, v0

    int-to-float p1, p1

    neg-int v0, v1

    int-to-float v0, v0

    invoke-interface {p0, p1, v0}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->translate(FF)V

    goto :goto_0

    .line 252
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    neg-int p1, v1

    int-to-float p1, p1

    neg-int v0, v0

    int-to-float v0, v0

    invoke-interface {p0, p1, v0}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->translate(FF)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected createGLProgram()V
    .locals 2

    .line 109
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BasePreview;->createGLProgram()V

    .line 111
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mArrowNormal:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    sget v1, Lcom/transsion/camera/feature/panoramawideselfie/R$drawable;->ic_left_arrow:I

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/common/glrender/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mArrowNormal:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mArrowWarning:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    if-nez v0, :cond_1

    .line 115
    new-instance v0, Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    sget v1, Lcom/transsion/camera/feature/panoramawideselfie/R$drawable;->ic_left_arrow_warning:I

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/common/glrender/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mArrowWarning:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mDottedLine:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    if-nez v0, :cond_2

    .line 118
    new-instance v0, Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    sget v1, Lcom/transsion/camera/feature/panoramawideselfie/R$drawable;->ic_dotted_line:I

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/common/glrender/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mDottedLine:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    :cond_2
    return-void
.end method

.method protected destroyGLProgram()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mArrowNormal:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->recycle()V

    .line 126
    iput-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mArrowNormal:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mArrowWarning:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    if-eqz v0, :cond_1

    .line 129
    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->recycle()V

    .line 130
    iput-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mArrowWarning:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mDottedLine:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    if-eqz v0, :cond_2

    .line 133
    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->recycle()V

    .line 134
    iput-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mDottedLine:Lcom/transsion/camera/feature/common/glrender/BitmapTexture;

    .line 137
    :cond_2
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BasePreview;->destroyGLProgram()V

    return-void
.end method

.method public draw(Landroid/graphics/SurfaceTexture;III)Z
    .locals 2

    .line 148
    iget-boolean v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mUIReady:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mBgr2dProgram:Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mSurface2dProgram:Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;

    if-nez v0, :cond_1

    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;->draw(Landroid/graphics/SurfaceTexture;I)V

    .line 159
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    invoke-interface {v0, p3, p4}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->setSize(II)V

    .line 161
    invoke-virtual {p0, p3, p4}, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->drawBackground(II)V

    .line 163
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->drawThumbnail(Landroid/graphics/SurfaceTexture;I)V

    const/4 p0, 0x1

    return p0

    .line 152
    :cond_2
    :goto_0
    sget-object p1, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "draw mBgr2dProgram: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/transsion/camera/feature/common/BasePreview;->mBgr2dProgram:Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", mSurface2dProgram: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/common/BasePreview;->mSurface2dProgram:Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method protected drawBackground(II)V
    .locals 10

    .line 170
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget-object p2, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget v0, p2, Landroid/graphics/Point;->x:I

    .line 171
    iget p2, p2, Landroid/graphics/Point;->y:I

    .line 172
    iget v1, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    .line 173
    iget v2, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    .line 174
    iget-object v3, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    int-to-float v4, v0

    int-to-float v5, p2

    int-to-float v6, v1

    int-to-float v7, v2

    iget v8, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mBgColor:I

    invoke-interface/range {v3 .. v8}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->fillRect(FFFFI)V

    .line 176
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget p2, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    .line 177
    iget v0, p1, Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;->mBorderHeight:I

    .line 178
    iget-object v1, p1, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    .line 179
    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    .line 180
    iget-object v4, p0, Lcom/transsion/camera/feature/common/BasePreview;->mCanvas:Lcom/transsion/camera/feature/common/glrender/GLCanvas;

    int-to-float v5, v3

    int-to-float v6, v1

    int-to-float v7, p2

    int-to-float v8, v0

    iget v9, p1, Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;->mLineColor:I

    invoke-interface/range {v4 .. v9}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->fillRect(FFFFI)V

    return-void
.end method

.method protected drawThumbnail(Landroid/graphics/SurfaceTexture;I)V
    .locals 14

    move-object v8, p0

    .line 185
    iget-boolean v0, v8, Lcom/transsion/camera/feature/common/BasePreview;->mCapturing:Z

    .line 186
    iget v9, v8, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mDirection:I

    .line 187
    iget-object v10, v8, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mOffset:Landroid/graphics/Point;

    .line 188
    iget-object v1, v8, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v11, v1, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceWidth:I

    .line 189
    iget v12, v1, Lcom/transsion/camera/feature/common/BaseUISpec;->mSurfaceHeight:I

    .line 190
    iget-object v13, v1, Lcom/transsion/camera/feature/common/BaseUISpec;->mStartPoint:Landroid/graphics/Point;

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, v13

    move-object v2, v10

    move v3, v11

    move v4, v12

    move v5, v9

    .line 193
    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->drawDotted(Landroid/graphics/Point;Landroid/graphics/Point;III)V

    .line 194
    invoke-direct {p0, v11, v12, v13}, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->drawStitchThumbnail(IILandroid/graphics/Point;)V

    move-object v1, p1

    move/from16 v2, p2

    move-object v5, v13

    move-object v6, v10

    move v7, v9

    .line 195
    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->drawCaptureThumbnail(Landroid/graphics/SurfaceTexture;IIILandroid/graphics/Point;Landroid/graphics/Point;I)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move v3, v11

    move v4, v12

    move-object v5, v13

    move v6, v9

    .line 198
    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->drawPreviewThumbnail(Landroid/graphics/SurfaceTexture;IIILandroid/graphics/Point;I)V

    :goto_0
    move-object v0, p0

    move v1, v11

    move v2, v12

    move-object v3, v13

    move-object v4, v10

    move v5, v9

    .line 202
    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->drawArrow(IILandroid/graphics/Point;Landroid/graphics/Point;I)V

    return-void
.end method

.method public onCaptureEnd()V
    .locals 1

    .line 92
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BasePreview;->onCaptureEnd()V

    .line 93
    sget-object v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->DEFAULT_OFFSET:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mOffset:Landroid/graphics/Point;

    return-void
.end method

.method public onCaptureFailed()V
    .locals 1

    .line 86
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BasePreview;->onCaptureFailed()V

    .line 87
    sget-object v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->DEFAULT_OFFSET:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mOffset:Landroid/graphics/Point;

    return-void
.end method

.method public onDirectionChange(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mDirection:I

    return-void
.end method

.method public onMoveProgress(Landroid/graphics/Point;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 80
    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mOffset:Landroid/graphics/Point;

    :cond_0
    return-void
.end method

.method public onThumbnailUpdate([BIII)V
    .locals 6

    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    if-lez p3, :cond_0

    .line 72
    iget-object p4, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v4, p4, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    iget v5, p4, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/feature/common/BasePreview;->onThumbnailUpdate([BIIII)V

    :cond_0
    return-void
.end method
