.class public Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;
.super Ljava/lang/Object;
.source "GLLine.java"


# static fields
.field public static lineColor:[F


# instance fields
.field private colorBuffer:Ljava/nio/FloatBuffer;

.field private mColorHandle:I

.field private mPositionHandle:I

.field private final mProgram:I

.field mShadow1:[F

.field mShadow2:[F

.field mShadow3:[F

.field mShadow4:[F

.field mShadow5:[F

.field mShadow6:[F

.field mShadow7:[F

.field mShadow8:[F

.field private order:[S

.field private orderBuffer:Ljava/nio/ShortBuffer;

.field private size:I

.field private vertexBuffer:Ljava/nio/FloatBuffer;

.field private final vertexCount:I


# direct methods
.method public constructor <init>()V
    .locals 11

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v1, v0, [S

    .line 47
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->order:[S

    const/16 v2, 0x8

    new-array v3, v2, [F

    .line 53
    iput-object v3, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow1:[F

    new-array v3, v2, [F

    .line 54
    iput-object v3, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow2:[F

    new-array v3, v2, [F

    .line 55
    iput-object v3, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow3:[F

    new-array v3, v2, [F

    .line 56
    iput-object v3, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow4:[F

    new-array v3, v2, [F

    .line 57
    iput-object v3, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow5:[F

    new-array v3, v2, [F

    .line 58
    iput-object v3, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow6:[F

    new-array v3, v2, [F

    .line 59
    iput-object v3, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow7:[F

    new-array v2, v2, [F

    .line 60
    iput-object v2, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow8:[F

    const/4 v2, 0x3

    .line 64
    iput v2, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->size:I

    .line 69
    sget-object v3, Lcom/transsion/camera/feature/mode/doc/object/Data;->lineCoords:[F

    array-length v3, v3

    const/4 v4, 0x2

    div-int/2addr v3, v4

    iput v3, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->vertexCount:I

    .line 75
    array-length v1, v1

    mul-int/2addr v1, v4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 76
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 77
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->orderBuffer:Ljava/nio/ShortBuffer;

    .line 78
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->order:[S

    invoke-virtual {v1, v3}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 79
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->orderBuffer:Ljava/nio/ShortBuffer;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    const v1, 0x8b31

    const-string v5, "attribute vec4 vPosition;varying  vec4 vColor;attribute vec4 aColor;void main() {  gl_Position = vPosition;  vColor=aColor;}"

    .line 82
    invoke-static {v1, v5}, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->loadShader(ILjava/lang/String;)I

    move-result v1

    const v5, 0x8b30

    const-string v6, "precision mediump float;varying vec4 vColor;void main() {  gl_FragColor = vColor;}"

    .line 84
    invoke-static {v5, v6}, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->loadShader(ILjava/lang/String;)I

    move-result v5

    .line 87
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v6

    iput v6, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mProgram:I

    .line 88
    invoke-static {v6, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 89
    iget v1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mProgram:I

    invoke-static {v1, v5}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 90
    iget v1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 91
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v5, "TECNO"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    sget-object v1, Lcom/transsion/camera/feature/mode/doc/object/Data;->tecnoLineColor:[F

    sput-object v1, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->lineColor:[F

    goto :goto_0

    .line 94
    :cond_0
    sget-object v1, Lcom/transsion/camera/feature/mode/doc/object/Data;->defaultLineColor:[F

    sput-object v1, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->lineColor:[F

    .line 96
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow1:[F

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow7:[F

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow8:[F

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v6, v4

    aput v7, v6, v3

    const/4 v6, 0x4

    aput v7, v5, v6

    aput v7, v5, v4

    aput v7, v1, v0

    aput v7, v1, v3

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow3:[F

    iget-object v8, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow4:[F

    iget-object v9, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow5:[F

    const/high16 v10, -0x40800000    # -1.0f

    aput v10, v9, v4

    aput v10, v9, v3

    aput v10, v8, v4

    aput v10, v8, v3

    aput v10, v0, v6

    aput v10, v0, v4

    .line 98
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow2:[F

    aput v7, v0, v2

    const/4 v4, 0x1

    aput v7, v0, v4

    aput v7, v3, v2

    aput v7, v3, v4

    aput v7, v1, v2

    aput v7, v1, v4

    const/4 v0, 0x5

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow6:[F

    aput v10, v5, v2

    aput v10, v5, v4

    aput v10, p0, v2

    aput v10, p0, v4

    aput v10, v9, v0

    aput v10, v9, v2

    return-void

    nop

    :array_0
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x1s
        0x2s
        0x3s
    .end array-data
.end method

.method private drawshadow(Z[F)V
    .locals 6

    .line 231
    sget-object v0, Lcom/transsion/camera/feature/mode/doc/object/Data;->lineCoords:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 233
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 234
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->vertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz p1, :cond_0

    .line 236
    invoke-virtual {v0, p2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    new-array p1, p1, [F

    .line 238
    fill-array-data p1, :array_0

    .line 244
    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 246
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 249
    sget-object p1, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->lineColor:[F

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 251
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 252
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->colorBuffer:Ljava/nio/FloatBuffer;

    .line 253
    sget-object v0, Lcom/transsion/camera/feature/mode/doc/object/Data;->shadowColor:[F

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 254
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->colorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 257
    iget p1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mProgram:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 260
    iget p1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mProgram:I

    const-string v0, "vPosition"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mPositionHandle:I

    .line 262
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 264
    iget v0, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mPositionHandle:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x8

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 268
    iget p1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mProgram:I

    const-string v0, "aColor"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mColorHandle:I

    .line 270
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 271
    iget v0, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mColorHandle:I

    const/4 v1, 0x4

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->colorBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/16 p1, 0xbe2

    .line 274
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 p1, 0x302

    const/16 v0, 0x303

    .line 275
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/4 p1, 0x6

    .line 276
    iget v0, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->vertexCount:I

    invoke-static {p1, p2, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 281
    iget p0, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mPositionHandle:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public static loadShader(ILjava/lang/String;)I
    .locals 3

    .line 286
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p0

    const-string v0, "GLLine"

    if-nez p0, :cond_0

    const-string v1, "could not create new shader"

    .line 288
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_0
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 292
    invoke-static {p0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const v1, 0x8b81

    const/4 v2, 0x0

    .line 294
    invoke-static {p0, v1, p1, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 295
    aget p1, p1, v2

    if-nez p1, :cond_1

    .line 296
    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const-string p0, "Compilation of shader failed"

    .line 297
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    return p0
.end method


# virtual methods
.method public clearLineShader()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->colorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 104
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    return-void
.end method

.method public draw(Z)V
    .locals 7

    .line 114
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->drawShadows(Z)V

    .line 115
    sget-object v0, Lcom/transsion/camera/feature/mode/doc/object/Data;->lineCoords:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 117
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 118
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->vertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz p1, :cond_0

    .line 120
    sget-object p1, Lcom/transsion/camera/feature/mode/doc/object/Data;->lineCoords:[F

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    new-array p1, p1, [F

    .line 122
    fill-array-data p1, :array_0

    .line 128
    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 130
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 133
    sget-object p1, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->lineColor:[F

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 135
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 136
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->colorBuffer:Ljava/nio/FloatBuffer;

    .line 137
    sget-object v1, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->lineColor:[F

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 138
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->colorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 141
    iget p1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mProgram:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 144
    iget p1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mProgram:I

    const-string v1, "vPosition"

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mPositionHandle:I

    .line 146
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 148
    iget v1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mPositionHandle:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x8

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 152
    iget p1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mProgram:I

    const-string v1, "aColor"

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mColorHandle:I

    .line 154
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 155
    iget v1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mColorHandle:I

    const/4 v2, 0x4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->colorBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/16 p1, 0xbe2

    .line 158
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 p1, 0x302

    const/16 v1, 0x303

    .line 159
    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 161
    iget p1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->size:I

    int-to-float p1, p1

    invoke-static {p1}, Landroid/opengl/GLES20;->glLineWidth(F)V

    const/4 p1, 0x2

    .line 163
    iget v1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->vertexCount:I

    invoke-static {p1, v0, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 165
    iget p0, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mPositionHandle:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public drawShadows(Z)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 169
    sget-object v2, Lcom/transsion/camera/feature/mode/doc/object/Data;->lineCoords:[F

    const/4 v3, 0x0

    aget v4, v2, v3

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/4 v6, 0x1

    .line 170
    aget v7, v2, v6

    mul-float/2addr v7, v5

    float-to-int v7, v7

    const/4 v8, 0x2

    .line 171
    aget v9, v2, v8

    mul-float/2addr v9, v5

    float-to-int v9, v9

    const/4 v10, 0x3

    .line 172
    aget v11, v2, v10

    mul-float/2addr v11, v5

    float-to-int v11, v11

    const/4 v12, 0x4

    .line 173
    aget v13, v2, v12

    mul-float/2addr v13, v5

    float-to-int v13, v13

    const/4 v14, 0x5

    .line 174
    aget v15, v2, v14

    mul-float/2addr v15, v5

    float-to-int v15, v15

    const/16 v16, 0x6

    .line 175
    aget v17, v2, v16

    mul-float v6, v17, v5

    float-to-int v6, v6

    const/16 v17, 0x7

    .line 176
    aget v2, v2, v17

    mul-float/2addr v2, v5

    float-to-int v2, v2

    if-gt v4, v13, :cond_0

    if-gt v7, v15, :cond_0

    if-gt v9, v6, :cond_0

    if-ge v11, v2, :cond_1

    :cond_0
    if-gt v4, v13, :cond_2

    if-gt v4, v6, :cond_2

    if-gt v7, v11, :cond_2

    if-gt v7, v15, :cond_2

    .line 179
    :cond_1
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow1:[F

    iget-object v4, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow2:[F

    iget-object v5, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow8:[F

    sget-object v6, Lcom/transsion/camera/feature/mode/doc/object/Data;->lineCoords:[F

    aget v7, v6, v12

    aput v7, v5, v12

    aput v7, v4, v16

    aput v7, v4, v3

    aput v7, v2, v12

    aput v7, v2, v8

    .line 180
    iget-object v7, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow3:[F

    iget-object v9, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow4:[F

    aget v11, v6, v8

    aput v11, v9, v16

    aput v11, v7, v16

    aput v11, v7, v3

    aput v11, v4, v12

    aput v11, v4, v8

    .line 181
    iget-object v11, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow5:[F

    iget-object v13, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow6:[F

    aget v15, v6, v3

    aput v15, v13, v16

    aput v15, v13, v3

    aput v15, v11, v16

    aput v15, v11, v12

    aput v15, v9, v12

    .line 182
    iget-object v15, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow7:[F

    aget v18, v6, v16

    aput v18, v5, v16

    aput v18, v15, v16

    aput v18, v15, v3

    aput v18, v13, v12

    aput v18, v13, v8

    .line 183
    aget v3, v6, v14

    aput v3, v5, v14

    aput v3, v5, v10

    aput v3, v4, v17

    aput v3, v2, v17

    aput v3, v2, v14

    .line 184
    aget v2, v6, v10

    aput v2, v9, v17

    const/4 v3, 0x1

    aput v2, v9, v3

    aput v2, v7, v17

    aput v2, v7, v14

    aput v2, v4, v14

    .line 185
    aget v2, v6, v3

    aput v2, v13, v17

    aput v2, v11, v17

    aput v2, v11, v3

    aput v2, v9, v14

    aput v2, v9, v10

    .line 186
    aget v2, v6, v17

    aput v2, v5, v17

    aput v2, v5, v3

    aput v2, v15, v17

    aput v2, v15, v14

    aput v2, v13, v14

    goto/16 :goto_0

    :cond_2
    if-gt v9, v6, :cond_3

    if-gt v11, v2, :cond_3

    if-gt v13, v4, :cond_3

    if-ge v15, v7, :cond_4

    :cond_3
    if-gt v9, v6, :cond_5

    if-gt v9, v4, :cond_5

    if-gt v11, v15, :cond_5

    if-gt v11, v2, :cond_5

    .line 189
    :cond_4
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow1:[F

    iget-object v4, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow2:[F

    iget-object v5, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow8:[F

    sget-object v6, Lcom/transsion/camera/feature/mode/doc/object/Data;->lineCoords:[F

    aget v7, v6, v16

    aput v7, v5, v12

    aput v7, v4, v16

    aput v7, v4, v3

    aput v7, v2, v12

    aput v7, v2, v8

    .line 190
    iget-object v7, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow3:[F

    iget-object v9, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow4:[F

    aget v11, v6, v12

    aput v11, v9, v16

    aput v11, v7, v16

    aput v11, v7, v3

    aput v11, v4, v12

    aput v11, v4, v8

    .line 191
    iget-object v11, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow5:[F

    iget-object v13, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow6:[F

    aget v15, v6, v8

    aput v15, v13, v16

    aput v15, v13, v3

    aput v15, v11, v16

    aput v15, v11, v12

    aput v15, v9, v12

    .line 192
    iget-object v15, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow7:[F

    aget v18, v6, v3

    aput v18, v5, v16

    aput v18, v15, v16

    aput v18, v15, v3

    aput v18, v13, v12

    aput v18, v13, v8

    .line 193
    aget v3, v6, v17

    aput v3, v5, v14

    aput v3, v5, v10

    aput v3, v4, v17

    aput v3, v2, v17

    aput v3, v2, v14

    .line 194
    aget v2, v6, v14

    aput v2, v9, v17

    const/4 v3, 0x1

    aput v2, v9, v3

    aput v2, v7, v17

    aput v2, v7, v14

    aput v2, v4, v14

    .line 195
    aget v2, v6, v10

    aput v2, v13, v17

    aput v2, v11, v17

    aput v2, v11, v3

    aput v2, v9, v14

    aput v2, v9, v10

    .line 196
    aget v2, v6, v3

    aput v2, v5, v17

    aput v2, v5, v3

    aput v2, v15, v17

    aput v2, v15, v14

    aput v2, v13, v14

    goto/16 :goto_0

    :cond_5
    if-gt v13, v4, :cond_6

    if-gt v15, v7, :cond_6

    if-gt v6, v9, :cond_6

    if-ge v2, v11, :cond_7

    :cond_6
    if-gt v13, v4, :cond_8

    if-gt v13, v9, :cond_8

    if-gt v15, v2, :cond_8

    if-gt v15, v7, :cond_8

    .line 199
    :cond_7
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow1:[F

    iget-object v4, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow2:[F

    iget-object v5, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow8:[F

    sget-object v6, Lcom/transsion/camera/feature/mode/doc/object/Data;->lineCoords:[F

    aget v7, v6, v3

    aput v7, v5, v12

    aput v7, v4, v16

    aput v7, v4, v3

    aput v7, v2, v12

    aput v7, v2, v8

    .line 200
    iget-object v7, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow3:[F

    iget-object v9, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow4:[F

    aget v11, v6, v16

    aput v11, v9, v16

    aput v11, v7, v16

    aput v11, v7, v3

    aput v11, v4, v12

    aput v11, v4, v8

    .line 201
    iget-object v11, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow5:[F

    iget-object v13, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow6:[F

    aget v15, v6, v12

    aput v15, v13, v16

    aput v15, v13, v3

    aput v15, v11, v16

    aput v15, v11, v12

    aput v15, v9, v12

    .line 202
    iget-object v15, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow7:[F

    aget v18, v6, v8

    aput v18, v5, v16

    aput v18, v15, v16

    aput v18, v15, v3

    aput v18, v13, v12

    aput v18, v13, v8

    const/4 v3, 0x1

    .line 203
    aget v8, v6, v3

    aput v8, v5, v14

    aput v8, v5, v10

    aput v8, v4, v17

    aput v8, v2, v17

    aput v8, v2, v14

    .line 204
    aget v2, v6, v17

    aput v2, v9, v17

    aput v2, v9, v3

    aput v2, v7, v17

    aput v2, v7, v14

    aput v2, v4, v14

    .line 205
    aget v2, v6, v14

    aput v2, v13, v17

    aput v2, v11, v17

    aput v2, v11, v3

    aput v2, v9, v14

    aput v2, v9, v10

    .line 206
    aget v2, v6, v10

    aput v2, v5, v17

    aput v2, v5, v3

    aput v2, v15, v17

    aput v2, v15, v14

    aput v2, v13, v14

    goto/16 :goto_0

    :cond_8
    if-gt v6, v9, :cond_9

    if-gt v2, v11, :cond_9

    if-gt v4, v13, :cond_9

    if-ge v7, v15, :cond_a

    :cond_9
    if-gt v6, v9, :cond_b

    if-gt v6, v13, :cond_b

    if-gt v2, v7, :cond_b

    if-gt v2, v11, :cond_b

    .line 209
    :cond_a
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow1:[F

    iget-object v4, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow2:[F

    iget-object v5, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow8:[F

    sget-object v6, Lcom/transsion/camera/feature/mode/doc/object/Data;->lineCoords:[F

    aget v7, v6, v8

    aput v7, v5, v12

    aput v7, v4, v16

    aput v7, v4, v3

    aput v7, v2, v12

    aput v7, v2, v8

    .line 210
    iget-object v7, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow3:[F

    iget-object v9, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow4:[F

    aget v11, v6, v3

    aput v11, v9, v16

    aput v11, v7, v16

    aput v11, v7, v3

    aput v11, v4, v12

    aput v11, v4, v8

    .line 211
    iget-object v11, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow5:[F

    iget-object v13, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow6:[F

    aget v15, v6, v16

    aput v15, v13, v16

    aput v15, v13, v3

    aput v15, v11, v16

    aput v15, v11, v12

    aput v15, v9, v12

    .line 212
    iget-object v15, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow7:[F

    aget v18, v6, v12

    aput v18, v5, v16

    aput v18, v15, v16

    aput v18, v15, v3

    aput v18, v13, v12

    aput v18, v13, v8

    .line 213
    aget v3, v6, v10

    aput v3, v5, v14

    aput v3, v5, v10

    aput v3, v4, v17

    aput v3, v2, v17

    aput v3, v2, v14

    const/4 v2, 0x1

    .line 214
    aget v3, v6, v2

    aput v3, v9, v17

    aput v3, v9, v2

    aput v3, v7, v17

    aput v3, v7, v14

    aput v3, v4, v14

    .line 215
    aget v3, v6, v17

    aput v3, v13, v17

    aput v3, v11, v17

    aput v3, v11, v2

    aput v3, v9, v14

    aput v3, v9, v10

    .line 216
    aget v3, v6, v14

    aput v3, v5, v17

    aput v3, v5, v2

    aput v3, v15, v17

    aput v3, v15, v14

    aput v3, v13, v14

    .line 220
    :goto_0
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow1:[F

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->drawshadow(Z[F)V

    .line 221
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow2:[F

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->drawshadow(Z[F)V

    .line 222
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow3:[F

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->drawshadow(Z[F)V

    .line 223
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow4:[F

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->drawshadow(Z[F)V

    .line 224
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow5:[F

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->drawshadow(Z[F)V

    .line 225
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow6:[F

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->drawshadow(Z[F)V

    .line 226
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow7:[F

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->drawshadow(Z[F)V

    .line 227
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow8:[F

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->drawshadow(Z[F)V

    :cond_b
    return-void
.end method

.method public unInit()V
    .locals 0

    .line 108
    iget p0, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mProgram:I

    if-eqz p0, :cond_0

    .line 109
    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    :cond_0
    return-void
.end method
