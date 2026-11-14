.class Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$SdofPreviewCallback;
.super Lcom/transsion/camera/app/common/preview/PreviewCallbacker;
.source "SdofPhotoMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SdofPreviewCallback"
.end annotation


# instance fields
.field private m2DTextureId:I

.field private mGLProgram2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;)V
    .locals 0

    .line 402
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$SdofPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/preview/PreviewCallbacker;-><init>()V

    const/4 p1, -0x1

    .line 404
    iput p1, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$SdofPreviewCallback;->m2DTextureId:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$1;)V
    .locals 0

    .line 402
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$SdofPreviewCallback;-><init>(Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;)V

    return-void
.end method

.method private create2DProgram()V
    .locals 2

    .line 421
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$SdofPreviewCallback;->mGLProgram2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/facelighting/FacelightingFactory;->isFacelightingSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    new-instance v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    sget-object v1, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;->TEXTURE_2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;-><init>(Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$SdofPreviewCallback;->mGLProgram2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    :cond_0
    return-void
.end method

.method private create2DTexture(II)V
    .locals 3

    .line 407
    iget v0, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$SdofPreviewCallback;->m2DTextureId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/facelighting/FacelightingFactory;->isFacelightingSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    invoke-static {p2, p1}, Lcom/transsion/camera/app/ui/opengl/GLUtils;->initTextureId(II)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$SdofPreviewCallback;->m2DTextureId:I

    .line 409
    invoke-static {}, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create2DTexture"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$SdofPreviewCallback;->m2DTextureId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private destory2DProgram()V
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$SdofPreviewCallback;->mGLProgram2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    if-eqz v0, :cond_0

    .line 428
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->release()V

    const/4 v0, 0x0

    .line 429
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$SdofPreviewCallback;->mGLProgram2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    :cond_0
    return-void
.end method

.method private destroy2DTexture()V
    .locals 5

    .line 414
    iget v0, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$SdofPreviewCallback;->m2DTextureId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    .line 415
    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 416
    iput v1, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$SdofPreviewCallback;->m2DTextureId:I

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/SurfaceTexture;III)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 483
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$SdofPreviewCallback;->mGLProgram2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    if-nez v1, :cond_0

    goto :goto_0

    .line 487
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$SdofPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->access$300(Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;)V

    .line 488
    invoke-direct {p0, p3, p4}, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$SdofPreviewCallback;->create2DTexture(II)V

    .line 490
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$SdofPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->access$500(Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;)Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 491
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$SdofPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->access$600(Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$SdofPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->access$700(Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 492
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$SdofPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->access$500(Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;)Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;

    move-result-object v2

    iget v4, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$SdofPreviewCallback;->m2DTextureId:I

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$SdofPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->access$800(Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;)I

    move-result v7

    move v3, p2

    move v5, p4

    move v6, p3

    invoke-interface/range {v2 .. v7}, Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;->process(IIIII)Z

    move-result p2

    .line 493
    invoke-static {v0, v0, p3, p4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    if-eqz p2, :cond_1

    .line 495
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$SdofPreviewCallback;->mGLProgram2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    iget p4, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$SdofPreviewCallback;->m2DTextureId:I

    invoke-virtual {p3, p1, p4}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->draw(Landroid/graphics/SurfaceTexture;I)V

    :cond_1
    move v0, p2

    .line 499
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$SdofPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->access$402(Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;Z)Z

    :cond_3
    :goto_0
    return v0
.end method

.method public drawOffScreen(Landroid/graphics/SurfaceTexture;IIII)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 473
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$SdofPreviewCallback;->mGLProgram2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$SdofPreviewCallback;->m2DTextureId:I

    const/4 p3, -0x1

    if-eq p2, p3, :cond_1

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$SdofPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->access$400(Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 476
    :cond_0
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$SdofPreviewCallback;->mGLProgram2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    iget p0, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$SdofPreviewCallback;->m2DTextureId:I

    invoke-virtual {p2, p1, p0}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->draw(Landroid/graphics/SurfaceTexture;I)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public modeInitCallback()V
    .locals 0

    .line 435
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$SdofPreviewCallback;->create2DProgram()V

    return-void
.end method

.method public modeUninitCallback()V
    .locals 3

    .line 440
    invoke-static {}, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modeUninitCallback,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$SdofPreviewCallback;->m2DTextureId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 441
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$SdofPreviewCallback;->destory2DProgram()V

    .line 442
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$SdofPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->access$200(Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;)V

    .line 443
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$SdofPreviewCallback;->destroy2DTexture()V

    return-void
.end method

.method public surfaceChangedCallback(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 455
    invoke-static {}, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceChangedCallback,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$SdofPreviewCallback;->m2DTextureId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 456
    iget p1, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$SdofPreviewCallback;->m2DTextureId:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 457
    invoke-static {p1, p3, p2}, Lcom/transsion/camera/app/ui/opengl/GLUtils;->updateTextureId(III)I

    goto :goto_0

    .line 459
    :cond_0
    invoke-static {p3, p2}, Lcom/transsion/camera/app/ui/opengl/GLUtils;->initTextureId(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$SdofPreviewCallback;->m2DTextureId:I

    :goto_0
    return-void
.end method

.method public surfaceCreatedCallback(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 448
    invoke-static {}, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceCreatedCallback,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$SdofPreviewCallback;->m2DTextureId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 449
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$SdofPreviewCallback;->create2DProgram()V

    .line 450
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$SdofPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->access$300(Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;)V

    return-void
.end method

.method public surfaceDestroyCallback(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 465
    invoke-static {}, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceDestroyCallback,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$SdofPreviewCallback;->m2DTextureId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 466
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$SdofPreviewCallback;->destory2DProgram()V

    .line 467
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$SdofPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->access$200(Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;)V

    .line 468
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$SdofPreviewCallback;->destroy2DTexture()V

    return-void
.end method
