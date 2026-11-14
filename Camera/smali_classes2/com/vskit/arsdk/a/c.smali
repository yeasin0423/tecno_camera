.class public Lcom/vskit/arsdk/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected c:Ljava/lang/String;

.field private e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field protected h:Z

.field protected i:Z

.field protected j:I

.field protected k:I

.field protected l:I

.field protected m:I

.field protected n:I

.field protected o:I

.field protected p:I

.field protected q:I

.field protected r:I

.field protected s:I

.field protected t:[I

.field protected u:[I

.field protected v:Ljava/nio/FloatBuffer;

.field protected w:Ljava/nio/FloatBuffer;

.field protected x:[F

.field protected y:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/vskit/arsdk/a/c;->c:Ljava/lang/String;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/vskit/arsdk/a/c;->i:Z

    const/4 p1, 0x2

    .line 5
    iput p1, p0, Lcom/vskit/arsdk/a/c;->j:I

    .line 6
    sget-object v0, Lcom/vskit/arsdk/b/l;->b:[F

    array-length v1, v0

    div-int/2addr v1, p1

    iput v1, p0, Lcom/vskit/arsdk/a/c;->k:I

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/vskit/arsdk/a/c;->r:I

    .line 8
    iput p1, p0, Lcom/vskit/arsdk/a/c;->s:I

    .line 9
    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Lcom/vskit/arsdk/a/c;->x:[F

    .line 10
    sget-object p1, Lcom/vskit/arsdk/b/l;->e:[F

    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Lcom/vskit/arsdk/a/c;->y:[F

    .line 11
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/vskit/arsdk/a/c;->e:Ljava/util/LinkedList;

    .line 12
    iget-object p1, p0, Lcom/vskit/arsdk/a/c;->x:[F

    invoke-static {p1}, Lcom/vskit/arsdk/b/g;->a([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/vskit/arsdk/a/c;->v:Ljava/nio/FloatBuffer;

    .line 13
    iget-object p1, p0, Lcom/vskit/arsdk/a/c;->y:[F

    invoke-static {p1}, Lcom/vskit/arsdk/b/g;->a([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/vskit/arsdk/a/c;->w:Ljava/nio/FloatBuffer;

    .line 15
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/vskit/arsdk/a/c;->e:Ljava/util/LinkedList;

    .line 16
    iput-object p2, p0, Lcom/vskit/arsdk/a/c;->f:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/vskit/arsdk/a/c;->g:Ljava/lang/String;

    .line 18
    iget-object p1, p0, Lcom/vskit/arsdk/a/c;->x:[F

    invoke-static {p1}, Lcom/vskit/arsdk/b/g;->a([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/vskit/arsdk/a/c;->v:Ljava/nio/FloatBuffer;

    .line 19
    iget-object p1, p0, Lcom/vskit/arsdk/a/c;->y:[F

    invoke-static {p1}, Lcom/vskit/arsdk/b/g;->a([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/vskit/arsdk/a/c;->w:Ljava/nio/FloatBuffer;

    .line 20
    invoke-virtual {p0}, Lcom/vskit/arsdk/a/c;->c()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 24
    iget-boolean v0, p0, Lcom/vskit/arsdk/a/c;->h:Z

    if-nez v0, :cond_0

    return-void

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/vskit/arsdk/a/c;->u:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 26
    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 27
    iput-object v1, p0, Lcom/vskit/arsdk/a/c;->u:[I

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/vskit/arsdk/a/c;->t:[I

    if-eqz v0, :cond_2

    .line 29
    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 30
    iput-object v1, p0, Lcom/vskit/arsdk/a/c;->t:[I

    :cond_2
    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lcom/vskit/arsdk/a/c;->r:I

    .line 32
    iput v0, p0, Lcom/vskit/arsdk/a/c;->s:I

    return-void
.end method

.method public a(I)V
    .locals 2

    .line 15
    iget-object v0, p0, Lcom/vskit/arsdk/a/c;->v:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/vskit/arsdk/a/c;->w:Ljava/nio/FloatBuffer;

    invoke-virtual {p0, p1, v0, v1}, Lcom/vskit/arsdk/a/c;->a(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)Z

    return-void
.end method

.method public a(II)V
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/vskit/arsdk/a/c;->t:[I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/vskit/arsdk/a/c;->r:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/vskit/arsdk/a/c;->s:I

    if-eq v0, p2, :cond_1

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/vskit/arsdk/a/c;->a()V

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/vskit/arsdk/a/c;->t:[I

    if-nez v0, :cond_2

    .line 19
    iput p1, p0, Lcom/vskit/arsdk/a/c;->r:I

    .line 20
    iput p2, p0, Lcom/vskit/arsdk/a/c;->s:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 21
    iput-object v1, p0, Lcom/vskit/arsdk/a/c;->t:[I

    new-array v0, v0, [I

    .line 22
    iput-object v0, p0, Lcom/vskit/arsdk/a/c;->u:[I

    .line 23
    invoke-static {v1, v0, p1, p2}, Lcom/vskit/arsdk/b/g;->a([I[III)V

    :cond_2
    return-void
.end method

.method public a(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 2
    iget-boolean v1, p0, Lcom/vskit/arsdk/a/c;->h:Z

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    iget-boolean v1, p0, Lcom/vskit/arsdk/a/c;->i:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget v1, p0, Lcom/vskit/arsdk/a/c;->p:I

    iget v2, p0, Lcom/vskit/arsdk/a/c;->q:I

    invoke-static {v0, v0, v1, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 4
    iget v0, p0, Lcom/vskit/arsdk/a/c;->l:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 5
    invoke-virtual {p0}, Lcom/vskit/arsdk/a/c;->h()V

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lcom/vskit/arsdk/a/c;->c(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public b()I
    .locals 0

    const/16 p0, 0xde1

    return p0
.end method

.method public b(I)I
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/vskit/arsdk/a/c;->v:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/vskit/arsdk/a/c;->w:Ljava/nio/FloatBuffer;

    invoke-virtual {p0, p1, v0, v1}, Lcom/vskit/arsdk/a/c;->b(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)I

    move-result p0

    return p0
.end method

.method public b(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)I
    .locals 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 33
    iget-object v0, p0, Lcom/vskit/arsdk/a/c;->t:[I

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/vskit/arsdk/a/c;->h:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/vskit/arsdk/a/c;->i:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vskit/arsdk/a/c;->u:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    iget v0, p0, Lcom/vskit/arsdk/a/c;->r:I

    iget v2, p0, Lcom/vskit/arsdk/a/c;->s:I

    invoke-static {v1, v1, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 35
    iget-object v0, p0, Lcom/vskit/arsdk/a/c;->t:[I

    aget v0, v0, v1

    const v2, 0x8d40

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 36
    invoke-static {v2}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v0

    const v3, 0x8cd5

    if-eq v0, v3, :cond_1

    .line 37
    iget-object v0, p0, Lcom/vskit/arsdk/a/c;->c:Ljava/lang/String;

    const-string v3, "Framebuffer error"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_1
    iget v0, p0, Lcom/vskit/arsdk/a/c;->l:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 39
    invoke-virtual {p0}, Lcom/vskit/arsdk/a/c;->h()V

    .line 40
    invoke-virtual {p0, p1, p2, p3}, Lcom/vskit/arsdk/a/c;->c(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 41
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 42
    iget-object p0, p0, Lcom/vskit/arsdk/a/c;->u:[I

    aget p0, p0, v1

    return p0

    :cond_2
    :goto_0
    return p1
.end method

.method public b(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/vskit/arsdk/a/c;->p:I

    .line 2
    iput p2, p0, Lcom/vskit/arsdk/a/c;->q:I

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/vskit/arsdk/a/c;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vskit/arsdk/a/c;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/vskit/arsdk/a/c;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/vskit/arsdk/a/c;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vskit/arsdk/b/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vskit/arsdk/a/c;->l:I

    const-string v1, "aPosition"

    .line 3
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vskit/arsdk/a/c;->m:I

    .line 4
    iget v0, p0, Lcom/vskit/arsdk/a/c;->l:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vskit/arsdk/a/c;->n:I

    .line 5
    iget v0, p0, Lcom/vskit/arsdk/a/c;->l:I

    const-string v1, "inputTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vskit/arsdk/a/c;->o:I

    const-string v0, "initProgramHandle"

    .line 6
    invoke-static {v0}, Lcom/vskit/arsdk/b/g;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/vskit/arsdk/a/c;->h:Z

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/vskit/arsdk/a/c;->m:I

    .line 9
    iput v0, p0, Lcom/vskit/arsdk/a/c;->n:I

    .line 10
    iput v0, p0, Lcom/vskit/arsdk/a/c;->o:I

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/vskit/arsdk/a/c;->h:Z

    :goto_0
    return-void
.end method

.method protected c(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 7

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 13
    iget v1, p0, Lcom/vskit/arsdk/a/c;->m:I

    iget v2, p0, Lcom/vskit/arsdk/a/c;->j:I

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 14
    iget p2, p0, Lcom/vskit/arsdk/a/c;->m:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 15
    invoke-virtual {p3, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 16
    iget v1, p0, Lcom/vskit/arsdk/a/c;->n:I

    const/4 v2, 0x2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 17
    iget p2, p0, Lcom/vskit/arsdk/a/c;->n:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const p2, 0x84c0

    .line 18
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 19
    invoke-virtual {p0}, Lcom/vskit/arsdk/a/c;->b()I

    move-result p2

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 20
    iget p1, p0, Lcom/vskit/arsdk/a/c;->o:I

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 21
    invoke-virtual {p0}, Lcom/vskit/arsdk/a/c;->f()V

    .line 22
    invoke-virtual {p0}, Lcom/vskit/arsdk/a/c;->d()V

    .line 23
    invoke-virtual {p0}, Lcom/vskit/arsdk/a/c;->e()V

    .line 24
    iget p1, p0, Lcom/vskit/arsdk/a/c;->m:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 25
    iget p1, p0, Lcom/vskit/arsdk/a/c;->n:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 26
    invoke-virtual {p0}, Lcom/vskit/arsdk/a/c;->b()I

    move-result p0

    invoke-static {p0, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 27
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method

.method protected d()V
    .locals 2

    .line 1
    iget p0, p0, Lcom/vskit/arsdk/a/c;->k:I

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string p0, "glDrawArrays"

    .line 2
    invoke-static {p0}, Lcom/vskit/arsdk/b/g;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/vskit/arsdk/a/c;->h:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/vskit/arsdk/a/c;->l:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/vskit/arsdk/a/c;->l:I

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/vskit/arsdk/a/c;->a()V

    .line 5
    iget-object v0, p0, Lcom/vskit/arsdk/a/c;->w:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 7
    iput-object v1, p0, Lcom/vskit/arsdk/a/c;->w:Ljava/nio/FloatBuffer;

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/vskit/arsdk/a/c;->v:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 10
    iput-object v1, p0, Lcom/vskit/arsdk/a/c;->v:Ljava/nio/FloatBuffer;

    :cond_2
    return-void
.end method

.method protected h()V
    .locals 1

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/vskit/arsdk/a/c;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/vskit/arsdk/a/c;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method
