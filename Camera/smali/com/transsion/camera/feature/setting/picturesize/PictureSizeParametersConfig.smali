.class public Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;
.super Ljava/lang/Object;
.source "PictureSizeParametersConfig.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCameraCapabilities:Lcom/transsion/camera/adapter/ICameraCapabilities;

.field private mDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

.field private mFilterSizeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private mPictureSize:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

.field mPostViewSize:Landroid/util/Size;

.field private mPreviewStopped:Z

.field private mPreviousValue:Ljava/lang/String;

.field private mSatSupport:Z

.field private mStreamId:I

.field private mStreamIdCallback:Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;

.field mSupportedPostViewSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field mSupportedThumbnailSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field mThumbnailSize:Landroid/util/Size;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;

    .line 26
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/picturesize/PictureSize;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 41
    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mSatSupport:Z

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mStreamId:I

    .line 43
    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPreviewStopped:Z

    .line 57
    new-instance p2, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig$1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig$1;-><init>(Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mStreamIdCallback:Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;

    .line 52
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPictureSize:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    .line 54
    iput-object p3, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mStreamId:I

    return p0
.end method

.method static synthetic access$002(Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mStreamId:I

    return p1
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 24
    sget-object v0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method private filterSizeFor4CellInOne(Landroid/util/Size;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Size;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)V"
        }
    .end annotation

    .line 211
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 212
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    .line 213
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v3

    if-gt v2, v3, :cond_1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 214
    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 217
    :cond_2
    invoke-interface {p2, p0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private filterSizeForRemosic(Landroid/util/Size;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Size;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)V"
        }
    .end annotation

    .line 201
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 202
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    .line 203
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    if-gt v2, v3, :cond_1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    if-le v2, v3, :cond_0

    .line 204
    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 207
    :cond_2
    invoke-interface {p2, p0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private getMaxThumbnailSizeForSupport(Ljava/util/List;D)Landroid/util/Size;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;D)",
            "Landroid/util/Size;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 234
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_1

    .line 235
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Size;

    .line 236
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    sub-double v0, p2, v0

    .line 237
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3f9eb851eb851eb8L    # 0.03

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getMinPostViewSizeForSupport(Ljava/util/List;D)Landroid/util/Size;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;D)",
            "Landroid/util/Size;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 221
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_1

    .line 222
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_0
    if-ltz p0, :cond_1

    .line 223
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    .line 224
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-double v3, v3

    div-double/2addr v1, v3

    sub-double v1, p2, v1

    .line 225
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide v3, 0x3f9eb851eb851eb8L    # 0.03

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private setStreaIdCallback(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 1

    .line 257
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mSatSupport:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPreviewStopped:Z

    if-nez v0, :cond_0

    .line 258
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mStreamIdCallback:Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->registerStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;)V

    goto :goto_0

    .line 260
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mStreamIdCallback:Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->unRegisterStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;)V

    :goto_0
    return-void
.end method

.method private sizeToStr(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 193
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 194
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private updateSatPictureSize(Lcom/transsion/camera/adapter/CameraParameters;I)V
    .locals 3

    .line 73
    iget v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mStreamId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 76
    :cond_0
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSupportedPictureSizes(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    .line 79
    invoke-static {p2}, Lcom/transsion/camera/utils/CameraUtil;->sortSizeInDescending(Ljava/util/List;)V

    .line 80
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mFilterSizeList:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 81
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mFilterSizeList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    invoke-direct {p0, v1, p2}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->filterSizeFor4CellInOne(Landroid/util/Size;Ljava/util/List;)V

    .line 83
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPictureSize:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->getRatioInStore()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 87
    :cond_2
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->sizeToStr(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 88
    invoke-static {p2}, Lcom/transsion/camera/utils/PictureSizeHelper;->getStandardAspectRatioOfString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v0, p2

    :cond_4
    if-eqz v0, :cond_5

    .line 94
    invoke-static {v0}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setSatPictureSize(Landroid/util/Size;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    .line 184
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->setStreaIdCallback(Lcom/transsion/camera/adapter/CameraProxy;)V

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 8

    .line 120
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPictureSize:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->isBillionPixelSupport()Z

    move-result v0

    .line 121
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPictureSize:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->isHighDefinitionModeSupport()Z

    move-result v1

    .line 122
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPictureSize:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->isCameraFacingBack()Z

    move-result v2

    .line 123
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPictureSize:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->getSuperDefinitionValueInDataStore()Ljava/lang/String;

    move-result-object v3

    .line 124
    sget-object v4, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[configParameters] currentValue:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " priviousValue = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPreviousValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " isBillionPixelSupport:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isCameraFacingBack:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 126
    iget-boolean v4, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mSatSupport:Z

    if-eqz v4, :cond_0

    .line 127
    iget v4, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mStreamId:I

    invoke-direct {p0, p1, v4}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->updateSatPictureSize(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 129
    :cond_0
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPictureSize:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    invoke-virtual {v4}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->isSupportSuperDefinition()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    .line 130
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mCameraCapabilities:Lcom/transsion/camera/adapter/ICameraCapabilities;

    invoke-interface {v4}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v4

    .line 131
    iput-object v3, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPreviousValue:Ljava/lang/String;

    const-string v6, "on"

    const/4 v7, 0x0

    if-eqz v1, :cond_1

    .line 133
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 134
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mFilterSizeList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mFilterSizeList:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    invoke-direct {p0, v0, v4}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->filterSizeForRemosic(Landroid/util/Size;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 139
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mFilterSizeList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 141
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mFilterSizeList:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    invoke-direct {p0, v0, v4}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->filterSizeForRemosic(Landroid/util/Size;Ljava/util/List;)V

    .line 146
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPreviousValue:Ljava/lang/String;

    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 147
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mFilterSizeList:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v5, :cond_3

    .line 148
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mFilterSizeList:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    invoke-direct {p0, v0, v4}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->filterSizeFor4CellInOne(Landroid/util/Size;Ljava/util/List;)V

    .line 151
    :cond_3
    sget-object v0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPreviousValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPreviousValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPictureSize:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    invoke-direct {p0, v4}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->sizeToStr(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->reConfigSupportList(Ljava/util/List;)V

    .line 155
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPictureSize:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getPictureSize()Landroid/util/Size;

    move-result-object v1

    .line 157
    sget-object v2, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[configParameters], newValue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", currentSize:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " ,mPostViewSize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPostViewSize:Landroid/util/Size;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " ,mThumbnailSize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mThumbnailSize:Landroid/util/Size;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 159
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPostViewSize:Landroid/util/Size;

    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setPostViewSize(Landroid/util/Size;)V

    .line 160
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mThumbnailSize:Landroid/util/Size;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setThumbnailSize(Landroid/util/Size;)V

    const/4 p0, -0x1

    if-eqz v0, :cond_6

    .line 162
    invoke-static {v0}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    .line 163
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setPictureSize(Landroid/util/Size;)V

    if-eqz v1, :cond_6

    .line 165
    invoke-static {v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->isRadioAndSizeEqual(Landroid/util/Size;Landroid/util/Size;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    move v5, p0

    .line 170
    :goto_1
    sget-object p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ret:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v5

    .line 174
    :cond_6
    sget-object p1, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "return -1"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPictureSize:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 3

    .line 101
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mCameraCapabilities:Lcom/transsion/camera/adapter/ICameraCapabilities;

    .line 102
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->get4cellInOneSize()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mFilterSizeList:Ljava/util/List;

    .line 103
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSatModeSupport()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mSatSupport:Z

    .line 104
    sget-object v0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraCapabilities,filterSizeList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mFilterSizeList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 106
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mFilterSizeList:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 109
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mFilterSizeList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->filterSizeFor4CellInOne(Landroid/util/Size;Ljava/util/List;)V

    .line 112
    :cond_0
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->sizeToStr(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 113
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedPostViewSizes()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mSupportedPostViewSizes:Ljava/util/List;

    .line 114
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedThumbnailSizes()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mSupportedThumbnailSizes:Ljava/util/List;

    .line 115
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPictureSize:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public setSuperDefinitionState(Ljava/lang/String;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPreviousValue:Ljava/lang/String;

    return-void
.end method

.method public updatePreviewState(Z)V
    .locals 0

    .line 265
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPreviewStopped:Z

    return-void
.end method

.method protected updateThumbnailSize(Ljava/lang/String;)V
    .locals 4

    .line 246
    sget-object v0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "updateThumbnailSize+"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 248
    invoke-static {p1}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p1

    .line 249
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-double v2, p1

    div-double/2addr v0, v2

    .line 250
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mSupportedPostViewSizes:Ljava/util/List;

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->getMinPostViewSizeForSupport(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mPostViewSize:Landroid/util/Size;

    .line 251
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mSupportedThumbnailSizes:Ljava/util/List;

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->getMaxThumbnailSizeForSupport(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->mThumbnailSize:Landroid/util/Size;

    .line 253
    :cond_0
    sget-object p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "updateThumbnailSize-"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
