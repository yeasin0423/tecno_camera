.class public Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;
.super Ljava/lang/Object;
.source "Texture2dProgram.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final TEXTURE_COORDINATE:[F

.field private static final VERTEX_COORDINATE:[F

.field private static final VERTEX_DEFAULT_MATRIX:[F


# instance fields
.field private mMvpMatrix:I

.field private mProgramHandle:I

.field private mTextureCoordBuffer:Ljava/nio/FloatBuffer;

.field private mTextureMatrix:I

.field private mTextureSampler:I

.field private mTextureTarget:I

.field private mTransformMatrix:[F

.field private mVertexBuffer:Ljava/nio/FloatBuffer;

.field private maPositionLoc:I

.field private maTextureCoordLoc:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 62
    fill-array-data v1, :array_0

    sput-object v1, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->VERTEX_COORDINATE:[F

    new-array v0, v0, [F

    .line 69
    fill-array-data v0, :array_1

    sput-object v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->TEXTURE_COORDINATE:[F

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 76
    fill-array-data v0, :array_2

    sput-object v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->VERTEX_DEFAULT_MATRIX:[F

    .line 95
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Texture2dProg"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;)V
    .locals 3

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    sget-object v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$1;->$SwitchMap$com$transsion$camera$app$ui$opengl$Texture2dProgram$ProgramType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position =  uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const p1, 0x8d65

    .line 109
    iput p1, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTextureTarget:I

    const-string p1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    .line 110
    invoke-static {v2, p1}, Lcom/transsion/camera/app/ui/opengl/GLUtils;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mProgramHandle:I

    goto :goto_0

    .line 113
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/16 p1, 0xde1

    .line 105
    iput p1, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTextureTarget:I

    const-string p1, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    .line 106
    invoke-static {v2, p1}, Lcom/transsion/camera/app/ui/opengl/GLUtils;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mProgramHandle:I

    .line 115
    :goto_0
    iget p1, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mProgramHandle:I

    if-eqz p1, :cond_2

    const-string v0, "aPosition"

    .line 120
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->maPositionLoc:I

    .line 121
    iget p1, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mProgramHandle:I

    const-string v0, "aTextureCoord"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->maTextureCoordLoc:I

    .line 122
    iget p1, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mProgramHandle:I

    const-string v0, "sTexture"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTextureSampler:I

    .line 123
    iget p1, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mProgramHandle:I

    const-string v0, "uTexMatrix"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTextureMatrix:I

    .line 124
    iget p1, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mProgramHandle:I

    const-string v0, "uMVPMatrix"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mMvpMatrix:I

    .line 126
    sget-object p1, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->VERTEX_COORDINATE:[F

    invoke-static {p1}, Lcom/transsion/camera/app/ui/opengl/GLUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 127
    sget-object p1, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->TEXTURE_COORDINATE:[F

    invoke-static {p1}, Lcom/transsion/camera/app/ui/opengl/GLUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTextureCoordBuffer:Ljava/nio/FloatBuffer;

    const/16 p1, 0x10

    new-array p1, p1, [F

    .line 129
    iput-object p1, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTransformMatrix:[F

    const/4 p0, 0x0

    .line 130
    invoke-static {p1, p0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const-string p0, "create Progrom"

    .line 132
    invoke-static {p0}, Lcom/transsion/camera/app/ui/opengl/GLUtils;->checkGlError(Ljava/lang/String;)V

    return-void

    .line 116
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unable to create program"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private createBitmapFromFBO(IIII)Landroid/graphics/Bitmap;
    .locals 9

    mul-int p0, p3, p4

    .line 154
    new-array v0, p0, [I

    .line 155
    new-array p0, p0, [I

    .line 156
    invoke-static {v0}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v7

    const/4 v8, 0x0

    .line 157
    invoke-virtual {v7, v8}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    if-gez p1, :cond_0

    move v1, v8

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    if-gez p2, :cond_1

    move v2, v8

    goto :goto_1

    :cond_1
    move v2, p2

    :goto_1
    const/16 v5, 0x1908

    const/16 v6, 0x1401

    move v3, p3

    move v4, p4

    .line 165
    :try_start_0
    invoke-static/range {v1 .. v7}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    move p1, v8

    :goto_2
    if-ge p1, p4, :cond_3

    mul-int p2, p1, p3

    sub-int v1, p4, p1

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, p3

    move v2, v8

    :goto_3
    if-ge v2, p3, :cond_2

    add-int v3, p2, v2

    .line 171
    aget v3, v0, v3

    shr-int/lit8 v4, v3, 0x10

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v5, v3, 0x10

    const/high16 v6, 0xff0000

    and-int/2addr v5, v6

    const v6, -0xff0100

    and-int/2addr v3, v6

    or-int/2addr v3, v5

    or-int/2addr v3, v4

    add-int v4, v1, v2

    .line 175
    aput v3, p0, v4
    :try_end_0
    .catch Landroid/opengl/GLException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 182
    :cond_3
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p3, p4, p1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 179
    sget-object p1, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "createBitmapFromGLSurface: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/opengl/GLException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private drawTexture(I)V
    .locals 17

    move-object/from16 v0, p0

    .line 202
    iget v1, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mProgramHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 203
    iget v1, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->maPositionLoc:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 204
    iget v1, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->maTextureCoordLoc:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string v1, "fbo glUseProgram"

    .line 205
    invoke-static {v1}, Lcom/transsion/camera/app/ui/opengl/GLUtils;->checkGlError(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 206
    invoke-static {v1, v1, v1, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v1, 0x4100

    .line 207
    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    const v1, 0x84c0

    .line 208
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 209
    iget v1, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTextureTarget:I

    move/from16 v2, p1

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 210
    iget v1, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTextureSampler:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 211
    iget v1, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTextureMatrix:I

    iget-object v3, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTransformMatrix:[F

    const/4 v4, 0x1

    invoke-static {v1, v4, v2, v3, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 212
    iget v1, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mMvpMatrix:I

    sget-object v3, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->VERTEX_DEFAULT_MATRIX:[F

    invoke-static {v1, v4, v2, v3, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 213
    iget v5, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->maPositionLoc:I

    iget-object v10, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v6, 0x2

    const/16 v7, 0x1406

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 216
    iget v11, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->maTextureCoordLoc:I

    iget-object v0, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTextureCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v12, 0x2

    const/16 v13, 0x1406

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v16, v0

    invoke-static/range {v11 .. v16}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v0, 0x5

    const/4 v1, 0x4

    .line 218
    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/SurfaceTexture;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    if-eqz v1, :cond_1

    if-gtz v2, :cond_0

    goto :goto_0

    .line 275
    :cond_0
    iget v3, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mProgramHandle:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v3, "draw glUseProgram"

    .line 276
    invoke-static {v3}, Lcom/transsion/camera/app/ui/opengl/GLUtils;->checkGlError(Ljava/lang/String;)V

    .line 277
    iget-object v3, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTransformMatrix:[F

    invoke-virtual {v1, v3}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 278
    iget v1, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->maPositionLoc:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 279
    iget v1, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->maTextureCoordLoc:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v1, 0x0

    .line 280
    invoke-static {v1, v1, v1, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v1, 0x4100

    .line 281
    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    const v1, 0x84c0

    .line 282
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 283
    iget v1, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTextureTarget:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 284
    iget v1, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTextureSampler:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 285
    iget v1, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTextureMatrix:I

    iget-object v3, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTransformMatrix:[F

    const/4 v4, 0x1

    invoke-static {v1, v4, v2, v3, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 286
    iget v1, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mMvpMatrix:I

    sget-object v3, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->VERTEX_DEFAULT_MATRIX:[F

    invoke-static {v1, v4, v2, v3, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 287
    iget v5, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->maPositionLoc:I

    const/4 v6, 0x2

    const/16 v7, 0x1406

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 290
    iget v11, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->maTextureCoordLoc:I

    const/4 v12, 0x2

    const/16 v13, 0x1406

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget-object v0, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTextureCoordBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v16, v0

    invoke-static/range {v11 .. v16}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v0, 0x5

    const/4 v1, 0x4

    .line 292
    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getPreviewBitmapByFBO(Landroid/graphics/SurfaceTexture;IIILcom/transsion/camera/app/common/preview/IPreviewCallbacker;)Landroid/graphics/Bitmap;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v7, p2

    move/from16 v6, p3

    move/from16 v5, p4

    const/16 v17, 0x0

    if-eqz v2, :cond_5

    if-gtz v7, :cond_0

    goto/16 :goto_2

    .line 228
    :cond_0
    iget-object v1, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTransformMatrix:[F

    invoke-virtual {v2, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    const/4 v4, 0x1

    .line 229
    invoke-static {v4}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v3

    .line 232
    invoke-static {v4}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v1

    .line 234
    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glGenFramebuffers(ILjava/nio/IntBuffer;)V

    .line 236
    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glGenTextures(ILjava/nio/IntBuffer;)V

    const/4 v15, 0x0

    .line 237
    invoke-virtual {v1, v15}, Ljava/nio/IntBuffer;->get(I)I

    move-result v8

    const/16 v14, 0xde1

    invoke-static {v14, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v8, 0xde1

    const/4 v9, 0x0

    const/16 v10, 0x1908

    const/4 v13, 0x0

    const/16 v16, 0x1908

    const/16 v18, 0x1401

    const/16 v19, 0x0

    move/from16 v11, p3

    move/from16 v12, p4

    move v4, v14

    move/from16 v14, v16

    move/from16 v15, v18

    move-object/from16 v16, v19

    .line 238
    invoke-static/range {v8 .. v16}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 v8, 0x2802

    const v9, 0x812f

    .line 240
    invoke-static {v4, v8, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v8, 0x2803

    .line 241
    invoke-static {v4, v8, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v8, 0x2800

    const/16 v9, 0x2601

    .line 242
    invoke-static {v4, v8, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v8, 0x2801

    .line 243
    invoke-static {v4, v8, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/4 v8, 0x0

    .line 248
    invoke-virtual {v3, v8}, Ljava/nio/IntBuffer;->get(I)I

    move-result v9

    const v10, 0x8d40

    invoke-static {v10, v9}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v9, 0x8ce0

    .line 250
    invoke-virtual {v1, v8}, Ljava/nio/IntBuffer;->get(I)I

    move-result v11

    .line 249
    invoke-static {v10, v9, v4, v11, v8}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 251
    invoke-static {v10}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v4

    const v9, 0x8cd5

    if-ne v4, v9, :cond_4

    if-eqz p5, :cond_1

    .line 254
    invoke-virtual {v3, v8}, Ljava/nio/IntBuffer;->get(I)I

    move-result v9

    move-object v10, v1

    move-object/from16 v1, p5

    move-object/from16 v2, p1

    move-object v11, v3

    move/from16 v3, p2

    const/4 v12, 0x1

    move/from16 v4, p3

    move v13, v5

    move/from16 v5, p4

    move v14, v6

    move v6, v9

    invoke-interface/range {v1 .. v6}, Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;->drawOffScreen(Landroid/graphics/SurfaceTexture;IIII)Z

    move-result v15

    goto :goto_0

    :cond_1
    move-object v10, v1

    move-object v11, v3

    move v13, v5

    move v14, v6

    const/4 v12, 0x1

    move v15, v8

    :goto_0
    if-eqz v15, :cond_2

    .line 256
    invoke-direct {v0, v8, v8, v14, v13}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->createBitmapFromFBO(IIII)Landroid/graphics/Bitmap;

    move-result-object v17

    :cond_2
    move-object/from16 v1, v17

    .line 258
    sget-object v2, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPreviewBitmapByFBO bitmap = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v1, :cond_3

    .line 260
    invoke-direct {v0, v7}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->drawTexture(I)V

    .line 261
    invoke-direct {v0, v8, v8, v14, v13}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->createBitmapFromFBO(IIII)Landroid/graphics/Bitmap;

    move-result-object v17

    goto :goto_1

    :cond_3
    move-object/from16 v17, v1

    goto :goto_1

    :cond_4
    move-object v10, v1

    move-object v11, v3

    const/4 v12, 0x1

    .line 265
    :goto_1
    invoke-static {v12, v11}, Landroid/opengl/GLES20;->glDeleteFramebuffers(ILjava/nio/IntBuffer;)V

    .line 266
    invoke-static {v12, v10}, Landroid/opengl/GLES20;->glDeleteTextures(ILjava/nio/IntBuffer;)V

    :cond_5
    :goto_2
    return-object v17
.end method

.method public release()V
    .locals 1

    .line 142
    iget v0, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mProgramHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v0, -0x1

    .line 143
    iput v0, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mProgramHandle:I

    return-void
.end method
