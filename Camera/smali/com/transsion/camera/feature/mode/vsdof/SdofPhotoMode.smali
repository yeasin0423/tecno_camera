.class public Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;
.super Lcom/transsion/camera/app/common/mode/CommonPhotoMode;
.source "SdofPhotoMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$SdofPreviewCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/common/mode/CommonPhotoMode<",
        "Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor<",
        "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
        ">;",
        "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private volatile mAlgoProcessed:Z

.field private mContext:Landroid/content/Context;

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private volatile mFacelightingClient:Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;

.field private volatile mHumanEffectFaceChecked:Z

.field private mHumanEffectIndex:Ljava/lang/String;

.field private mHumanEffectInited:Z

.field private mRotation:I

.field private mSdofClientOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

.field private mYUVCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SdofPhotoMode"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 51
    iput p1, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->mRotation:I

    const-string p1, "0"

    .line 52
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->mHumanEffectIndex:Ljava/lang/String;

    .line 505
    new-instance p1, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$1;-><init>(Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->mYUVCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;

    return-void
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 40
    sget-object v0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->destroyFacelighting()V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->createFacelighting()V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->mAlgoProcessed:Z

    return p0
.end method

.method static synthetic access$402(Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->mAlgoProcessed:Z

    return p1
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;)Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->mFacelightingClient:Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->mHumanEffectIndex:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->mHumanEffectFaceChecked:Z

    return p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->mRotation:I

    return p0
.end method

.method static synthetic access$802(Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->mRotation:I

    return p1
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->mHumanEffectInited:Z

    return p0
.end method

.method private createFacelighting()V
    .locals 3

    .line 384
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->mHumanEffectInited:Z

    if-nez v0, :cond_2

    .line 385
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/facelighting/FacelightingFactory;->getFacelightingClient()Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->mFacelightingClient:Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;

    .line 386
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->mFacelightingClient:Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->mFacelightingClient:Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;->init(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->mHumanEffectInited:Z

    .line 389
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->mHumanEffectInited:Z

    if-eqz v0, :cond_2

    .line 390
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->mFacelightingClient:Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    const-string v2, "0"

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->mHumanEffectIndex:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;->setConfig(ZLjava/lang/String;)Z

    :cond_2
    return-void
.end method

.method private destroyFacelighting()V
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->mFacelightingClient:Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->mFacelightingClient:Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;->isFacelightingInit()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 397
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->mHumanEffectInited:Z

    .line 398
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->mFacelightingClient:Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;->release()V

    :cond_0
    return-void
.end method

.method private findSizeMatchScreenAndRatio(Ljava/util/List;DLandroid/util/Size;Z)Landroid/util/Size;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;D",
            "Landroid/util/Size;",
            "Z)",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 206
    invoke-virtual/range {p4 .. p4}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual/range {p4 .. p4}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 208
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v5, 0x0

    move-object v7, v5

    move-wide v5, v3

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Size;

    .line 209
    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v9

    int-to-double v9, v9

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v11

    int-to-double v11, v11

    div-double/2addr v9, v11

    sub-double/2addr v9, p2

    .line 210
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    const-wide v11, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v9, v9, v11

    if-lez v9, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p5, :cond_2

    sub-double v9, v0, p2

    .line 214
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    cmpg-double v9, v9, v11

    if-gtz v9, :cond_2

    .line 215
    invoke-virtual/range {p4 .. p4}, Landroid/util/Size;->getHeight()I

    move-result v9

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v10

    if-lt v9, v10, :cond_0

    invoke-virtual/range {p4 .. p4}, Landroid/util/Size;->getWidth()I

    move-result v9

    .line 216
    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v10

    if-ge v9, v10, :cond_2

    goto :goto_0

    .line 220
    :cond_2
    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v9

    invoke-virtual/range {p4 .. p4}, Landroid/util/Size;->getHeight()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-double v9, v9

    cmpg-double v9, v9, v3

    if-gez v9, :cond_3

    .line 222
    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual/range {p4 .. p4}, Landroid/util/Size;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v3, v3

    .line 223
    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual/range {p4 .. p4}, Landroid/util/Size;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    :goto_1
    int-to-double v5, v5

    move-object v7, v8

    goto :goto_0

    .line 224
    :cond_3
    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v9

    invoke-virtual/range {p4 .. p4}, Landroid/util/Size;->getHeight()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-double v9, v9

    cmpl-double v9, v9, v3

    if-nez v9, :cond_0

    .line 225
    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v9

    invoke-virtual/range {p4 .. p4}, Landroid/util/Size;->getWidth()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-double v9, v9

    cmpg-double v9, v9, v5

    if-gez v9, :cond_0

    .line 227
    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual/range {p4 .. p4}, Landroid/util/Size;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    goto :goto_1

    :cond_4
    return-object v7
.end method

.method private getOptimalPreviewSize(Ljava/util/List;DLandroid/util/Size;Z)Landroid/util/Size;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;D",
            "Landroid/util/Size;",
            "Z)",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 170
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 171
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Size;

    .line 172
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v5

    int-to-double v8, v5

    div-double/2addr v3, v8

    sub-double/2addr v3, p2

    .line 173
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpg-double v3, v3, v6

    if-gtz v3, :cond_0

    .line 174
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    if-eqz p5, :cond_2

    const/4 v5, 0x1

    move-object v0, p0

    move-wide v2, p2

    move-object v4, p4

    .line 180
    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->findSizeMatchScreenAndRatio(Ljava/util/List;DLandroid/util/Size;Z)Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    const-wide p2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide v1, 0x3ff5555555555555L    # 1.3333333333333333

    .line 189
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Size;

    .line 190
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p5

    int-to-double v3, p5

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p5

    int-to-double v8, p5

    div-double/2addr v3, v8

    sub-double/2addr v3, v1

    .line 191
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpl-double p5, v3, v6

    if-lez p5, :cond_4

    goto :goto_1

    .line 194
    :cond_4
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p5

    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    move-result v3

    sub-int/2addr p5, v3

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p5

    int-to-double v3, p5

    cmpg-double p5, v3, p2

    if-gez p5, :cond_3

    .line 196
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-double p2, p2

    move-object v0, p1

    goto :goto_1

    :cond_5
    return-object v0
.end method

.method private isMildBeauty(Landroid/content/Context;)Z
    .locals 0

    const-string p0, "mild_beauty_type"

    .line 333
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public buildCaptureInfo()Lcom/transsion/camera/app/common/mode/CaptureInfo;
    .locals 3

    .line 375
    new-instance v0, Lcom/transsion/camera/app/common/mode/CaptureInfo;

    iget v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureOrientation:I

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->needMirror()Z

    move-result v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->autoWatermark()Z

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/transsion/camera/app/common/mode/CaptureInfo;-><init>(IZZ)V

    return-object v0
.end method

.method public createImageProcessor()Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor<",
            "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
            ">;"
        }
    .end annotation

    .line 380
    new-instance v0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-direct {v0, p0, p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V

    return-object v0
.end method

.method public bridge synthetic createImageProcessor()Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->createImageProcessor()Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    move-result-object p0

    return-object p0
.end method

.method public getDataFlowType()I
    .locals 2

    .line 277
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/watermark/Watermark;->algorithmMigrate()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    move p0, v0

    .line 280
    :goto_0
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/smiledetection/SmileAlgorithm;->getInstance()Lcom/transsion/camera/app/common/algorithm/smiledetection/SmileAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/algorithm/smiledetection/SmileAlgorithm;->algorithmSupport()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/facelighting/FacelightingFactory;->isFacelightingSupport()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x4

    .line 283
    :cond_2
    invoke-static {p0, v0}, Lcom/transsion/camera/adapter/DataFlowSpec;->makeDataFlowSpec(II)I

    move-result p0

    return p0
.end method

.method public getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .locals 2

    .line 315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "key_stereo"

    .line 316
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "key_tran_plugin"

    .line 317
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "key_smile_detection"

    .line 318
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "key_dual_cam_bw"

    .line 319
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->isMildBeauty(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "key_mild_beauty"

    .line 322
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    :cond_0
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/facelighting/FacelightingFactory;->isFacelightingSupport()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "key_human_effect_index"

    .line 325
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 329
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .locals 12

    .line 125
    invoke-static {}, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoModeRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v0

    const-string v1, "on"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getDualPictureSizes()Ljava/util/List;

    move-result-object v1

    const-string v3, "2816x2112"

    if-eqz v1, :cond_5

    .line 130
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 131
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 132
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "key_picture_ratio"

    const-string v6, "4:3"

    .line 131
    invoke-virtual {v3, v5, v6, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 133
    invoke-static {v3}, Lcom/transsion/camera/utils/PictureSizeHelper;->getRatioFromString(Ljava/lang/String;)D

    move-result-wide v3

    .line 136
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v6

    const-string v7, "key_dual_picture_size"

    invoke-virtual {p0, v7, v5, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 138
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Size;

    .line 139
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v8

    int-to-double v8, v8

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v10

    int-to-double v10, v10

    div-double/2addr v8, v10

    sub-double/2addr v8, v3

    .line 140
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_0

    .line 142
    invoke-virtual {v6}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object p0

    move v3, v7

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-eqz p0, :cond_2

    if-nez v3, :cond_3

    .line 148
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_3
    move-object v3, p0

    const-string p0, ""

    .line 151
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 152
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v7

    if-ge v2, v4, :cond_4

    .line 153
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 155
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    move-object p0, v3

    :cond_6
    const-string v1, "key_picture_size"

    .line 163
    invoke-virtual {v0, v1, v3, p0}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getPreviewSize(Ljava/util/List;)Landroid/util/Size;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_picture_size"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 88
    :cond_0
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getDualPictureSizes()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 89
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    const/4 v3, 0x0

    .line 92
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Size;

    .line 93
    invoke-virtual {v4}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    return-object v1

    .line 103
    :cond_3
    invoke-static {v0}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    float-to-double v0, v1

    .line 105
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getScreenSize()Landroid/util/Size;

    move-result-object v6

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    move-wide v4, v0

    .line 106
    invoke-direct/range {v2 .. v7}, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->getOptimalPreviewSize(Ljava/util/List;DLandroid/util/Size;Z)Landroid/util/Size;

    move-result-object v2

    .line 108
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->isMildBeauty(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 109
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result p0

    const/16 v3, 0x438

    if-lt p0, v3, :cond_4

    const/16 p0, 0x2d0

    int-to-double v3, p0

    mul-double/2addr v0, v3

    double-to-int v0, v0

    .line 112
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v0, p0}, Landroid/util/Size;-><init>(II)V

    .line 114
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    return-object v1

    :cond_4
    return-object v2
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .locals 0

    .line 65
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 66
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->mContext:Landroid/content/Context;

    .line 67
    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 68
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/facelighting/FacelightingFactory;->isFacelightingSupport()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 69
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->mSdofClientOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz p1, :cond_0

    .line 71
    new-instance p2, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$SdofPreviewCallback;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$SdofPreviewCallback;-><init>(Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode$1;)V

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeInit(Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V

    :cond_0
    const-string p1, "key_human_effect_index"

    .line 73
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    const-string p2, "key_human_effect_face_checked"

    .line 74
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 75
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p2, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->mHumanEffectIndex:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public isSupportDualCamBW(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z
    .locals 2

    .line 360
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p0

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p1

    const-string v0, "key_dual_cam_bw"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "on"

    .line 361
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public isSupportLogicalCamera(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z
    .locals 1

    .line 348
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->isSupportSecondLogicalCamera(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->isSupportDualCamBW(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSupportSecondLogicalCamera(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z
    .locals 2

    .line 353
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p0

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p1

    const-string v0, "key_tele_camera"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "on"

    .line 354
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 355
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSecondLogicalCameraId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public needFakePostView()Z
    .locals 1

    .line 366
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/facelighting/FacelightingFactory;->isFacelightingSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 370
    :cond_0
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->needFakePostView()Z

    move-result p0

    return p0
.end method

.method public onOrientationChanged(I)V
    .locals 0

    .line 343
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->onOrientationChanged(I)V

    return-void
.end method

.method protected onSettingChanged(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "key_human_effect_face_checked"

    .line 268
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 269
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->mHumanEffectFaceChecked:Z

    :cond_0
    return-void
.end method

.method protected onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 243
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key_human_effect_index"

    .line 245
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 246
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->mFacelightingClient:Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->mHumanEffectIndex:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 247
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->mFacelightingClient:Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;->updateConfig(Ljava/lang/String;)V

    .line 248
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->mHumanEffectIndex:Ljava/lang/String;

    .line 252
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getDualPictureSizes()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 258
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    .line 259
    invoke-virtual {v0}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "key_dual_picture_size"

    invoke-virtual {p0, v1, p2, p1, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    return-void
.end method

.method public onSettingReady()V
    .locals 1

    .line 235
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingReady()V

    .line 236
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->mSdofClientOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_0

    .line 237
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->mYUVCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->addPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 0

    .line 296
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->pause()V

    .line 297
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->mSdofClientOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz p0, :cond_0

    .line 298
    invoke-interface {p0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modePause()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 0

    .line 288
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->resume()V

    .line 289
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->mSdofClientOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz p0, :cond_0

    .line 290
    invoke-interface {p0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeResume()V

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 1

    .line 304
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->unInit()V

    .line 305
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->mSdofClientOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz v0, :cond_0

    .line 306
    invoke-interface {v0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeUninit()V

    :cond_0
    const-string v0, "key_human_effect_index"

    .line 308
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_human_effect_face_checked"

    .line 309
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 310
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vsdof/SdofPhotoMode;->mHumanEffectFaceChecked:Z

    return-void
.end method
