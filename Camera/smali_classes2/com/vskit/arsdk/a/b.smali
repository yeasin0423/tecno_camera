.class public Lcom/vskit/arsdk/a/b;
.super Lcom/vskit/arsdk/a/c;
.source "SourceFile"


# instance fields
.field private B:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "attribute vec4 aPosition;                                  \nattribute vec4 aTextureCoord;                              \nvarying vec2 textureCoordinate;                            \nvoid main() {                                              \n    gl_Position = aPosition;                               \n    textureCoordinate = aTextureCoord.xy;                  \n}                                                          \n"

    const-string v1, "precision mediump float;                                   \nvarying vec2 textureCoordinate;                            \nuniform sampler2D inputTexture;                            \nuniform sampler2D inputTexture2;                           \n                                                           \nvoid main() {                                              \n    vec4 orignalColor = texture2D(inputTexture, textureCoordinate);\n    vec4 pic = texture2D(inputTexture2, textureCoordinate);\n                                                           \n    gl_FragColor = mix(orignalColor, pic, pic.a);          \n                                                           \n}"

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/vskit/arsdk/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/vskit/arsdk/a/c;->c()V

    .line 2
    iget v0, p0, Lcom/vskit/arsdk/a/c;->l:I

    const-string v1, "inputTexture2"

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vskit/arsdk/a/b;->B:I

    return-void
.end method

.method public d(II)I
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 1
    iget-object v0, p0, Lcom/vskit/arsdk/a/c;->t:[I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/vskit/arsdk/a/c;->h:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/vskit/arsdk/a/c;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vskit/arsdk/a/c;->u:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lcom/vskit/arsdk/a/c;->r:I

    iget v2, p0, Lcom/vskit/arsdk/a/c;->s:I

    invoke-static {v1, v1, v0, v2}, Landroid/opengl/GLES30;->glViewport(IIII)V

    .line 3
    iget-object v0, p0, Lcom/vskit/arsdk/a/c;->t:[I

    aget v0, v0, v1

    const v2, 0x8d40

    invoke-static {v2, v0}, Landroid/opengl/GLES30;->glBindFramebuffer(II)V

    .line 4
    iget v0, p0, Lcom/vskit/arsdk/a/c;->l:I

    invoke-static {v0}, Landroid/opengl/GLES30;->glUseProgram(I)V

    .line 5
    invoke-virtual {p0}, Lcom/vskit/arsdk/a/c;->h()V

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/vskit/arsdk/a/b;->e(II)V

    .line 7
    invoke-static {v2, v1}, Landroid/opengl/GLES30;->glBindFramebuffer(II)V

    .line 8
    iget-object p0, p0, Lcom/vskit/arsdk/a/c;->u:[I

    aget p0, p0, v1

    return p0

    :cond_1
    :goto_0
    return p1
.end method

.method protected e(II)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/vskit/arsdk/a/c;->v:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 2
    iget v2, p0, Lcom/vskit/arsdk/a/c;->m:I

    iget v3, p0, Lcom/vskit/arsdk/a/c;->j:I

    iget-object v7, p0, Lcom/vskit/arsdk/a/c;->v:Ljava/nio/FloatBuffer;

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES30;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 3
    iget v0, p0, Lcom/vskit/arsdk/a/c;->m:I

    invoke-static {v0}, Landroid/opengl/GLES30;->glEnableVertexAttribArray(I)V

    .line 4
    iget-object v0, p0, Lcom/vskit/arsdk/a/c;->w:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 5
    iget v2, p0, Lcom/vskit/arsdk/a/c;->n:I

    iget-object v7, p0, Lcom/vskit/arsdk/a/c;->w:Ljava/nio/FloatBuffer;

    const/4 v3, 0x2

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES30;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 6
    iget v0, p0, Lcom/vskit/arsdk/a/c;->n:I

    invoke-static {v0}, Landroid/opengl/GLES30;->glEnableVertexAttribArray(I)V

    const v0, 0x84c0

    .line 7
    invoke-static {v0}, Landroid/opengl/GLES30;->glActiveTexture(I)V

    .line 8
    invoke-virtual {p0}, Lcom/vskit/arsdk/a/c;->b()I

    move-result v0

    invoke-static {v0, p2}, Landroid/opengl/GLES30;->glBindTexture(II)V

    .line 9
    iget p2, p0, Lcom/vskit/arsdk/a/b;->B:I

    invoke-static {p2, v1}, Landroid/opengl/GLES30;->glUniform1i(II)V

    const p2, 0x84c1

    .line 10
    invoke-static {p2}, Landroid/opengl/GLES30;->glActiveTexture(I)V

    .line 11
    invoke-virtual {p0}, Lcom/vskit/arsdk/a/c;->b()I

    move-result p2

    invoke-static {p2, p1}, Landroid/opengl/GLES30;->glBindTexture(II)V

    .line 12
    iget p1, p0, Lcom/vskit/arsdk/a/c;->o:I

    const/4 p2, 0x1

    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glUniform1i(II)V

    .line 13
    invoke-virtual {p0}, Lcom/vskit/arsdk/a/c;->f()V

    .line 14
    invoke-virtual {p0}, Lcom/vskit/arsdk/a/c;->d()V

    .line 15
    invoke-virtual {p0}, Lcom/vskit/arsdk/a/c;->e()V

    .line 16
    iget p1, p0, Lcom/vskit/arsdk/a/c;->m:I

    invoke-static {p1}, Landroid/opengl/GLES30;->glDisableVertexAttribArray(I)V

    .line 17
    iget p1, p0, Lcom/vskit/arsdk/a/c;->n:I

    invoke-static {p1}, Landroid/opengl/GLES30;->glDisableVertexAttribArray(I)V

    .line 18
    invoke-virtual {p0}, Lcom/vskit/arsdk/a/c;->b()I

    move-result p0

    invoke-static {p0, v1}, Landroid/opengl/GLES30;->glBindTexture(II)V

    .line 19
    invoke-static {v1}, Landroid/opengl/GLES30;->glUseProgram(I)V

    return-void
.end method
