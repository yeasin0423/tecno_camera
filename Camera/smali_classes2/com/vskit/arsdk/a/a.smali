.class public Lcom/vskit/arsdk/a/a;
.super Lcom/vskit/arsdk/a/c;
.source "SourceFile"


# instance fields
.field private A:I

.field private B:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "attribute vec4 aPosition;                      \nattribute vec4 aTextureCoord;                  \nuniform mat4 transformMatrix;                  \nvarying vec2 textureCoordinate;                \n                                               \nvoid main() {                                  \n    gl_Position = transformMatrix * aPosition; \n    textureCoordinate = (aTextureCoord).xy;    \n}"

    const-string v1, "precision mediump float;                                   \nvarying vec2 textureCoordinate;                            \nuniform sampler2D inputTexture;                            \nvoid main() {                                              \n    gl_FragColor = texture2D(inputTexture, textureCoordinate); \n}                                                          \n"

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/vskit/arsdk/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/vskit/arsdk/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a([F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vskit/arsdk/a/a;->B:[F

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/vskit/arsdk/a/c;->c()V

    .line 2
    iget v0, p0, Lcom/vskit/arsdk/a/c;->l:I

    const-string v1, "transformMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vskit/arsdk/a/a;->A:I

    return-void
.end method

.method protected c(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 7

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 4
    iget v1, p0, Lcom/vskit/arsdk/a/c;->m:I

    iget v2, p0, Lcom/vskit/arsdk/a/c;->j:I

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES30;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 5
    iget p2, p0, Lcom/vskit/arsdk/a/c;->m:I

    invoke-static {p2}, Landroid/opengl/GLES30;->glEnableVertexAttribArray(I)V

    .line 6
    invoke-virtual {p3, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 7
    iget v1, p0, Lcom/vskit/arsdk/a/c;->n:I

    const/4 v2, 0x2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES30;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 8
    iget p2, p0, Lcom/vskit/arsdk/a/c;->n:I

    invoke-static {p2}, Landroid/opengl/GLES30;->glEnableVertexAttribArray(I)V

    const p2, 0x84c0

    .line 9
    invoke-static {p2}, Landroid/opengl/GLES30;->glActiveTexture(I)V

    .line 10
    invoke-virtual {p0}, Lcom/vskit/arsdk/a/c;->b()I

    move-result p2

    invoke-static {p2, p1}, Landroid/opengl/GLES30;->glBindTexture(II)V

    .line 11
    iget p1, p0, Lcom/vskit/arsdk/a/c;->o:I

    invoke-static {p1, v0}, Landroid/opengl/GLES30;->glUniform1i(II)V

    .line 12
    invoke-virtual {p0}, Lcom/vskit/arsdk/a/a;->f()V

    .line 13
    invoke-virtual {p0}, Lcom/vskit/arsdk/a/c;->d()V

    .line 14
    invoke-virtual {p0}, Lcom/vskit/arsdk/a/c;->e()V

    .line 15
    iget p1, p0, Lcom/vskit/arsdk/a/c;->m:I

    invoke-static {p1}, Landroid/opengl/GLES30;->glDisableVertexAttribArray(I)V

    .line 16
    iget p1, p0, Lcom/vskit/arsdk/a/c;->n:I

    invoke-static {p1}, Landroid/opengl/GLES30;->glDisableVertexAttribArray(I)V

    .line 17
    invoke-virtual {p0}, Lcom/vskit/arsdk/a/c;->b()I

    move-result p0

    invoke-static {p0, v0}, Landroid/opengl/GLES30;->glBindTexture(II)V

    .line 18
    invoke-static {v0}, Landroid/opengl/GLES30;->glUseProgram(I)V

    return-void
.end method

.method public f()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/vskit/arsdk/a/c;->f()V

    .line 2
    iget v0, p0, Lcom/vskit/arsdk/a/a;->A:I

    iget-object p0, p0, Lcom/vskit/arsdk/a/a;->B:[F

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, v2}, Landroid/opengl/GLES30;->glUniformMatrix4fv(IIZ[FI)V

    return-void
.end method
