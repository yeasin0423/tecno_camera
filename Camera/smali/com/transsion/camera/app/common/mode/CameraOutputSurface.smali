.class Lcom/transsion/camera/app/common/mode/CameraOutputSurface;
.super Ljava/lang/Object;
.source "CameraOutputSurface.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAuxPreviewHeight:I

.field private mAuxPreviewWidth:I

.field private mAuxSurface:Ljava/lang/Object;

.field private mDataFlowType:I

.field private mDirty:Z

.field private mHasRequestedDataChannel:Z

.field private mImageSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

.field private mIsPrepareSuccess:Z

.field private mOutputType:I

.field private mPreview:Ljava/lang/Object;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mThumbnailSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

.field private mVideoFrameRate:I

.field private mVideoSurface:Landroid/view/Surface;

.field private mVideoSurfaceHeight:I

.field private mVideoSurfaceWidth:I

.field private mYuvImageSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mOutputType:I

    .line 22
    iput v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mDataFlowType:I

    const/4 v1, 0x1

    .line 30
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mIsPrepareSuccess:Z

    .line 38
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mDirty:Z

    .line 39
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mHasRequestedDataChannel:Z

    return-void
.end method

.method private isAuxPreviewDifferent(Ljava/lang/Object;II)Z
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mAuxSurface:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return v1

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mAuxSurface:Ljava/lang/Object;

    if-ne v0, p1, :cond_1

    iget p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mAuxPreviewWidth:I

    if-ne p1, p2, :cond_1

    iget p0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mAuxPreviewHeight:I

    if-eq p0, p3, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private isPreviewDifferent(Ljava/lang/Object;II)Z
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPreview:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return v1

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPreview:Ljava/lang/Object;

    if-ne v0, p1, :cond_1

    iget p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPreviewWidth:I

    if-ne p1, p2, :cond_1

    iget p0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPreviewHeight:I

    if-eq p0, p3, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private isPreviewSizeMatch(Landroid/util/Size;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 260
    sget-object p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[isSizeMatch] preview size is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 263
    :cond_0
    sget-object v1, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isSizeMatch] surface width:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPreviewWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " height:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPreviewHeight:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " previewSize width:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 263
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 265
    iget v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPreviewWidth:I

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget p0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPreviewHeight:I

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isSurfaceInfoDifferent(Lcom/transsion/camera/app/common/mode/SurfaceInfo;Lcom/transsion/camera/app/common/mode/SurfaceInfo;)Z
    .locals 2

    .line 171
    sget-object p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSurfaceInfoDifferent oldSurface: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", newSurface: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    if-eqz p1, :cond_1

    .line 173
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->hasSurface()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p0, p1

    return p0

    .line 174
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->hasSurface()Z

    move-result p1

    if-eqz p1, :cond_2

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private isVideoSurfaceDifferent(Landroid/view/Surface;II)Z
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return v1

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoSurface:Landroid/view/Surface;

    if-ne v0, p1, :cond_1

    iget p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoSurfaceWidth:I

    if-ne p1, p2, :cond_1

    iget p0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoSurfaceHeight:I

    if-eq p0, p3, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private previewReadyForUpdate(Landroid/util/Size;)Z
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPreview:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->isPreviewSizeMatch(Landroid/util/Size;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private declared-synchronized videoReadyForUpdate()Z
    .locals 3

    monitor-enter p0

    .line 269
    :try_start_0
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mOutputType:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mOutputType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 273
    :cond_0
    monitor-exit p0

    return v2

    .line 271
    :cond_1
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoSurface:Landroid/view/Surface;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public channelReadyForUpdate(Landroid/util/Size;)Z
    .locals 2

    .line 247
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mDirty:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 248
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->previewReadyForUpdate(Landroid/util/Size;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->videoReadyForUpdate()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public declared-synchronized dirty()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 50
    :try_start_0
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mDirty:Z

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mHasRequestedDataChannel:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasSetDataChannel()Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mHasRequestedDataChannel:Z

    return p0
.end method

.method public declared-synchronized requestDataChannel()Lcom/transsion/camera/adapter/CameraDataChannel;
    .locals 14

    monitor-enter p0

    const/4 v0, 0x0

    .line 220
    :try_start_0
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mDirty:Z

    .line 223
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPreview:Ljava/lang/Object;

    instance-of v1, v1, Landroid/graphics/SurfaceTexture;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 225
    new-instance v1, Landroid/view/Surface;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPreview:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    :goto_0
    move-object v3, v1

    goto :goto_1

    .line 226
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPreview:Ljava/lang/Object;

    instance-of v1, v1, Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_1

    .line 227
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPreview:Ljava/lang/Object;

    check-cast v1, Landroid/view/SurfaceHolder;

    .line 228
    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_2

    const/4 v0, 0x1

    .line 232
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mHasRequestedDataChannel:Z

    goto :goto_2

    .line 234
    :cond_2
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mHasRequestedDataChannel:Z

    .line 236
    :goto_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mAuxSurface:Ljava/lang/Object;

    instance-of v0, v0, Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_3

    .line 237
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mAuxSurface:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    move-object v4, v0

    goto :goto_3

    :cond_3
    move-object v4, v2

    .line 239
    :goto_3
    new-instance v0, Lcom/transsion/camera/adapter/CameraDataChannel;

    iget v5, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mOutputType:I

    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoSurface:Landroid/view/Surface;

    .line 240
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mImageSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    if-nez v1, :cond_4

    move-object v7, v2

    goto :goto_4

    :cond_4
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mImageSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->getBGSurface()Lcom/transsion/camera/adapter/IBGSurface;

    move-result-object v1

    move-object v7, v1

    .line 241
    :goto_4
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mYuvImageSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    if-nez v1, :cond_5

    move-object v8, v2

    goto :goto_5

    :cond_5
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mYuvImageSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->getBGSurface()Lcom/transsion/camera/adapter/IBGSurface;

    move-result-object v1

    move-object v8, v1

    .line 242
    :goto_5
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mThumbnailSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    if-nez v1, :cond_6

    :goto_6
    move-object v9, v2

    goto :goto_7

    :cond_6
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mThumbnailSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->getSurface()Landroid/view/Surface;

    move-result-object v2

    goto :goto_6

    :goto_7
    iget v10, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoFrameRate:I

    iget v11, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoSurfaceWidth:I

    iget v12, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoSurfaceHeight:I

    iget-boolean v13, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mIsPrepareSuccess:Z

    move-object v1, v0

    move v2, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    invoke-direct/range {v1 .. v12}, Lcom/transsion/camera/adapter/CameraDataChannel;-><init>(ILandroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Lcom/transsion/camera/adapter/IBGSurface;Lcom/transsion/camera/adapter/IBGSurface;Landroid/view/Surface;IIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 55
    :try_start_0
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPreview:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 56
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPreviewWidth:I

    .line 57
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPreviewHeight:I

    .line 58
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mAuxPreviewWidth:I

    .line 59
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mAuxPreviewHeight:I

    .line 60
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mAuxSurface:Ljava/lang/Object;

    .line 61
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoSurface:Landroid/view/Surface;

    const/4 v2, 0x1

    .line 62
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mIsPrepareSuccess:Z

    .line 63
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoSurfaceWidth:I

    .line 64
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoSurfaceHeight:I

    .line 65
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mHasRequestedDataChannel:Z

    .line 67
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mImageSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    .line 68
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mYuvImageSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    .line 69
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mThumbnailSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    .line 71
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resetRequestedDataChannelMember()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 105
    :try_start_0
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mHasRequestedDataChannel:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateAuxPreviewSurface(Ljava/lang/Object;II)Z
    .locals 1

    monitor-enter p0

    .line 133
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->isAuxPreviewDifferent(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mAuxSurface:Ljava/lang/Object;

    .line 135
    iput p2, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mAuxPreviewWidth:I

    .line 136
    iput p3, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mAuxPreviewHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 139
    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 141
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateDataFlowType(I)V
    .locals 3

    monitor-enter p0

    .line 90
    :try_start_0
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mDataFlowType:I

    if-eq v0, p1, :cond_0

    .line 91
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mDataFlowType:I

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoSurface:Landroid/view/Surface;

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mIsPrepareSuccess:Z

    const/4 v1, 0x0

    .line 95
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoFrameRate:I

    .line 96
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoSurfaceWidth:I

    .line 97
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoSurfaceHeight:I

    .line 98
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mHasRequestedDataChannel:Z

    .line 99
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mDirty:Z

    .line 100
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataFlowType, new dataFlow type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateImageSurface(Lcom/transsion/camera/adapter/IBGSurface;III)Z
    .locals 2

    monitor-enter p0

    .line 184
    :try_start_0
    new-instance v0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    invoke-direct {v0, p2, p3, p4, p1}, Lcom/transsion/camera/app/common/mode/SurfaceInfo;-><init>(IIILcom/transsion/camera/adapter/IBGSurface;)V

    .line 185
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mImageSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->isSurfaceInfoDifferent(Lcom/transsion/camera/app/common/mode/SurfaceInfo;Lcom/transsion/camera/app/common/mode/SurfaceInfo;)Z

    move-result p1

    const/4 p4, 0x0

    if-eqz p1, :cond_0

    .line 186
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mImageSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    .line 187
    iput-boolean p4, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mHasRequestedDataChannel:Z

    const/4 p1, 0x1

    .line 188
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mDirty:Z

    .line 189
    sget-object p4, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateImageSurface, new surface width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", height:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    monitor-exit p0

    return p1

    .line 192
    :cond_0
    monitor-exit p0

    return p4

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updatePreviewSurface(Ljava/lang/Object;II)Z
    .locals 2

    monitor-enter p0

    .line 145
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->isPreviewDifferent(Ljava/lang/Object;II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 146
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPreview:Ljava/lang/Object;

    .line 147
    iput p2, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPreviewWidth:I

    .line 148
    iput p3, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPreviewHeight:I

    .line 149
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mHasRequestedDataChannel:Z

    const/4 p1, 0x1

    .line 150
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    monitor-exit p0

    return p1

    .line 153
    :cond_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateThumbnailSurface(Landroid/view/Surface;III)Z
    .locals 2

    monitor-enter p0

    .line 208
    :try_start_0
    new-instance v0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    invoke-direct {v0, p2, p3, p4, p1}, Lcom/transsion/camera/app/common/mode/SurfaceInfo;-><init>(IIILandroid/view/Surface;)V

    .line 209
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mThumbnailSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->isSurfaceInfoDifferent(Lcom/transsion/camera/app/common/mode/SurfaceInfo;Lcom/transsion/camera/app/common/mode/SurfaceInfo;)Z

    move-result p1

    const/4 p4, 0x0

    if-eqz p1, :cond_0

    .line 210
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mThumbnailSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    .line 211
    iput-boolean p4, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mHasRequestedDataChannel:Z

    const/4 p1, 0x1

    .line 212
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mDirty:Z

    .line 213
    sget-object p4, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateThumbnailSurface, new surface width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", height:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    monitor-exit p0

    return p1

    .line 216
    :cond_0
    monitor-exit p0

    return p4

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateType(I)V
    .locals 3

    monitor-enter p0

    .line 75
    :try_start_0
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mOutputType:I

    if-eq v0, p1, :cond_0

    .line 76
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mOutputType:I

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoSurface:Landroid/view/Surface;

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mIsPrepareSuccess:Z

    const/4 v1, 0x0

    .line 80
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoFrameRate:I

    .line 81
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoSurfaceWidth:I

    .line 82
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoSurfaceHeight:I

    .line 83
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mHasRequestedDataChannel:Z

    .line 84
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mDirty:Z

    .line 85
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateType, new type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateVideoSurface(Landroid/view/Surface;IIIZ)Z
    .locals 2

    monitor-enter p0

    .line 110
    :try_start_0
    invoke-direct {p0, p1, p3, p4}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->isVideoSurfaceDifferent(Landroid/view/Surface;II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 111
    iput p2, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoFrameRate:I

    .line 112
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoSurface:Landroid/view/Surface;

    .line 113
    iput-boolean p5, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mIsPrepareSuccess:Z

    .line 114
    iput p3, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoSurfaceWidth:I

    .line 115
    iput p4, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoSurfaceHeight:I

    .line 116
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mHasRequestedDataChannel:Z

    const/4 p1, 0x1

    .line 117
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mDirty:Z

    .line 118
    sget-object p5, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVideoSurface, new surface width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", height:"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", videoFrameRate:"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p5, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    monitor-exit p0

    return p1

    .line 122
    :cond_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateYuvImageSurface(Lcom/transsion/camera/adapter/IBGSurface;III)Z
    .locals 2

    monitor-enter p0

    .line 196
    :try_start_0
    new-instance v0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    invoke-direct {v0, p2, p3, p4, p1}, Lcom/transsion/camera/app/common/mode/SurfaceInfo;-><init>(IIILcom/transsion/camera/adapter/IBGSurface;)V

    .line 197
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mYuvImageSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->isSurfaceInfoDifferent(Lcom/transsion/camera/app/common/mode/SurfaceInfo;Lcom/transsion/camera/app/common/mode/SurfaceInfo;)Z

    move-result p1

    const/4 p4, 0x0

    if-eqz p1, :cond_0

    .line 198
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mYuvImageSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    .line 199
    iput-boolean p4, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mHasRequestedDataChannel:Z

    const/4 p1, 0x1

    .line 200
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mDirty:Z

    .line 201
    sget-object p4, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateYuvImageSurface, new surface width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", height:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    monitor-exit p0

    return p1

    .line 204
    :cond_0
    monitor-exit p0

    return p4

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
