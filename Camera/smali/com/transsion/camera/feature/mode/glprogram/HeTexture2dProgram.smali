.class public Lcom/transsion/camera/feature/mode/glprogram/HeTexture2dProgram;
.super Ljava/lang/Object;
.source "HeTexture2dProgram.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/glprogram/HeTexture2dProgram$ProgramType;
    }
.end annotation


# static fields
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

    .line 61
    fill-array-data v1, :array_0

    sput-object v1, Lcom/transsion/camera/feature/mode/glprogram/HeTexture2dProgram;->VERTEX_COORDINATE:[F

    new-array v0, v0, [F

    .line 68
    fill-array-data v0, :array_1

    sput-object v0, Lcom/transsion/camera/feature/mode/glprogram/HeTexture2dProgram;->TEXTURE_COORDINATE:[F

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 75
    fill-array-data v0, :array_2

    sput-object v0, Lcom/transsion/camera/feature/mode/glprogram/HeTexture2dProgram;->VERTEX_DEFAULT_MATRIX:[F

    .line 94
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Texture2dProg"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

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

.method public constructor <init>(Lcom/transsion/camera/feature/mode/glprogram/HeTexture2dProgram$ProgramType;)V
    .locals 3

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    sget-object v0, Lcom/transsion/camera/feature/mode/glprogram/HeTexture2dProgram$1;->$SwitchMap$com$transsion$camera$feature$mode$glprogram$HeTexture2dProgram$ProgramType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position =  uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const p1, 0x8d65

    .line 108
    iput p1, p0, Lcom/transsion/camera/feature/mode/glprogram/HeTexture2dProgram;->mTextureTarget:I

    const-string p1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    .line 109
    invoke-static {v2, p1}, Lcom/transsion/camera/feature/mode/glprogram/GLUtils;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/glprogram/HeTexture2dProgram;->mProgramHandle:I

    goto :goto_0

    .line 112
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

    .line 104
    iput p1, p0, Lcom/transsion/camera/feature/mode/glprogram/HeTexture2dProgram;->mTextureTarget:I

    const-string p1, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    .line 105
    invoke-static {v2, p1}, Lcom/transsion/camera/feature/mode/glprogram/GLUtils;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/glprogram/HeTexture2dProgram;->mProgramHandle:I

    .line 114
    :goto_0
    iget p1, p0, Lcom/transsion/camera/feature/mode/glprogram/HeTexture2dProgram;->mProgramHandle:I

    if-eqz p1, :cond_2

    const-string v0, "aPosition"

    .line 119
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/glprogram/HeTexture2dProgram;->maPositionLoc:I

    .line 120
    iget p1, p0, Lcom/transsion/camera/feature/mode/glprogram/HeTexture2dProgram;->mProgramHandle:I

    const-string v0, "aTextureCoord"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/glprogram/HeTexture2dProgram;->maTextureCoordLoc:I

    .line 121
    iget p1, p0, Lcom/transsion/camera/feature/mode/glprogram/HeTexture2dProgram;->mProgramHandle:I

    const-string v0, "sTexture"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/glprogram/HeTexture2dProgram;->mTextureSampler:I

    .line 122
    iget p1, p0, Lcom/transsion/camera/feature/mode/glprogram/HeTexture2dProgram;->mProgramHandle:I

    const-string v0, "uTexMatrix"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/glprogram/HeTexture2dProgram;->mTextureMatrix:I

    .line 123
    iget p1, p0, Lcom/transsion/camera/feature/mode/glprogram/HeTexture2dProgram;->mProgramHandle:I

    const-string v0, "uMVPMatrix"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/glprogram/HeTexture2dProgram;->mMvpMatrix:I

    .line 125
    sget-object p1, Lcom/transsion/camera/feature/mode/glprogram/HeTexture2dProgram;->VERTEX_COORDINATE:[F

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/glprogram/GLUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/glprogram/HeTexture2dProgram;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 126
    sget-object p1, Lcom/transsion/camera/feature/mode/glprogram/HeTexture2dProgram;->TEXTURE_COORDINATE:[F

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/glprogram/GLUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/glprogram/HeTexture2dProgram;->mTextureCoordBuffer:Ljava/nio/FloatBuffer;

    const/16 p1, 0x10

    new-array p1, p1, [F

    .line 128
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/glprogram/HeTexture2dProgram;->mTransformMatrix:[F

    const/4 p0, 0x0

    .line 129
    invoke-static {p1, p0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const-string p0, "create Progrom"

    .line 131
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/glprogram/GLUtils;->checkGlError(Ljava/lang/String;)V

    return-void

    .line 115
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unable to create program"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
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

    .line 274
    :cond_0
    iget v3, v0, Lcom/transsion/camera/feature/mode/glprogram/HeTexture2dProgram;->mProgramHandle:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v3, "draw glUseProgram"

    .line 275
    invoke-static {v3}, Lcom/transsion/camera/feature/mode/glprogram/GLUtils;->checkGlError(Ljava/lang/String;)V

    .line 276
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/glprogram/HeTexture2dProgram;->mTransformMatrix:[F

    invoke-virtual {v1, v3}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 277
    iget v1, v0, Lcom/transsion/camera/feature/mode/glprogram/HeTexture2dProgram;->maPositionLoc:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 278
    iget v1, v0, Lcom/transsion/camera/feature/mode/glprogram/HeTexture2dProgram;->maTextureCoordLoc:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v1, 0x0

    .line 279
    invoke-static {v1, v1, v1, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v1, 0x4100

    .line 280
    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    const v1, 0x84c0

    .line 281
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 282
    iget v1, v0, Lcom/transsion/camera/feature/mode/glprogram/HeTexture2dProgram;->mTextureTarget:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 283
    iget v1, v0, Lcom/transsion/camera/feature/mode/glprogram/HeTexture2dProgram;->mTextureSampler:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 284
    iget v1, v0, Lcom/transsion/camera/feature/mode/glprogram/HeTexture2dProgram;->mTextureMatrix:I

    iget-object v3, v0, Lcom/transsion/camera/feature/mode/glprogram/HeTexture2dProgram;->mTransformMatrix:[F

    const/4 v4, 0x1

    invoke-static {v1, v4, v2, v3, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 285
    iget v1, v0, Lcom/transsion/camera/feature/mode/glprogram/HeTexture2dProgram;->mMvpMatrix:I

    sget-object v3, Lcom/transsion/camera/feature/mode/glprogram/HeTexture2dProgram;->VERTEX_DEFAULT_MATRIX:[F

    invoke-static {v1, v4, v2, v3, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 286
    iget v5, v0, Lcom/transsion/camera/feature/mode/glprogram/HeTexture2dProgram;->maPositionLoc:I

    const/4 v6, 0x2

    const/16 v7, 0x1406

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/transsion/camera/feature/mode/glprogram/HeTexture2dProgram;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 289
    iget v11, v0, Lcom/transsion/camera/feature/mode/glprogram/HeTexture2dProgram;->maTextureCoordLoc:I

    const/4 v12, 0x2

    const/16 v13, 0x1406

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/glprogram/HeTexture2dProgram;->mTextureCoordBuffer:Ljava/nio/FloatBuffer;

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

.method public release()V
    .locals 1

    .line 141
    iget v0, p0, Lcom/transsion/camera/feature/mode/glprogram/HeTexture2dProgram;->mProgramHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v0, -0x1

    .line 142
    iput v0, p0, Lcom/transsion/camera/feature/mode/glprogram/HeTexture2dProgram;->mProgramHandle:I

    return-void
.end method
