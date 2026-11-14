.class Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;
.super Ljava/lang/Object;
.source "AutoWaterMark.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapWaterMark"
.end annotation


# instance fields
.field private mBitmapInfo:Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;

.field private final mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

.field private mPreviewStarted:Z

.field private final mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field final synthetic this$0:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->this$0:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 208
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->mPreviewStarted:Z

    const/4 p1, 0x0

    .line 209
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->mBitmapInfo:Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;

    .line 210
    new-instance p1, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark$1;-><init>(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    .line 228
    new-instance p1, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark$2;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark$2;-><init>(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$1;)V
    .locals 0

    .line 207
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;-><init>(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;)V

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;)Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->mBitmapInfo:Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;

    return-object p0
.end method

.method static synthetic access$102(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;)Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->mBitmapInfo:Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;

    return-object p1
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;)Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;
    .locals 0

    .line 207
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->createWatermarkBitmap()Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$402(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;Z)Z
    .locals 0

    .line 207
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->mPreviewStarted:Z

    return p1
.end method

.method private createWatermarkBitmap()Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->this$0:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->access$600(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "ic_watermark_source"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 261
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->this$0:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->access$600(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 262
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->scaleBitmapParameter(Landroid/graphics/Bitmap;)Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private facingFront()Z
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->this$0:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->this$0:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;

    .line 300
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getFrontWideCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method private scaleBitmapParameter(Landroid/graphics/Bitmap;)Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;
    .locals 17

    move-object/from16 v0, p0

    .line 269
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 270
    iget-object v1, v0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->this$0:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->access$700(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v1

    const-string v2, "key_mirror"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 272
    new-instance v2, Landroid/util/Size;

    const/4 v8, 0x0

    invoke-direct {v2, v8, v8}, Landroid/util/Size;-><init>(II)V

    .line 273
    iget-object v3, v0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->this$0:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;

    invoke-static {v3}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->access$800(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;)Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    move-result-object v3

    sget-object v4, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->PHOTO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    const/high16 v5, 0x41200000    # 10.0f

    if-ne v3, v4, :cond_1

    .line 274
    iget-object v3, v0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->this$0:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;

    invoke-static {v3}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->access$900(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v3

    const-string v4, "key_picture_size"

    invoke-interface {v3, v4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 276
    invoke-static {v3}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v2

    .line 277
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    goto :goto_0

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_0
    move-object/from16 v16, v2

    goto :goto_1

    .line 280
    :cond_1
    iget-object v2, v0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->this$0:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->access$1000(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v2

    const-string v3, "key_video_quality"

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "_"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/CameraUtil;->parseVideoQuality(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 281
    iget-object v3, v0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->this$0:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3, v2}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v2

    .line 282
    iget v3, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 283
    new-instance v4, Landroid/util/Size;

    iget v5, v2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v4, v5, v2}, Landroid/util/Size;-><init>(II)V

    move-object/from16 v16, v4

    .line 285
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->facingFront()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "on"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    neg-float v1, v3

    .line 286
    invoke-virtual {v6, v1, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_2

    .line 288
    :cond_2
    invoke-virtual {v6, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    :goto_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 290
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 291
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 292
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 294
    :cond_3
    new-instance v1, Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;

    iget-object v2, v0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->this$0:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->access$800(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;)Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    move-result-object v2

    sget-object v3, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->PHOTO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_4

    move v10, v4

    goto :goto_3

    :cond_4
    const/4 v2, 0x5

    move v10, v2

    :goto_3
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 295
    iget-object v0, v0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->this$0:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->access$800(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;)Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    move-result-object v0

    sget-object v2, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->PHOTO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    if-ne v0, v2, :cond_5

    move v15, v8

    goto :goto_4

    :cond_5
    move v15, v4

    :goto_4
    move-object v9, v1

    invoke-direct/range {v9 .. v16}, Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;-><init>(ILandroid/graphics/Bitmap;IIIILandroid/util/Size;)V

    return-object v1
.end method


# virtual methods
.method getDevicePictureStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;
    .locals 0

    .line 243
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    return-object p0
.end method

.method getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .locals 0

    .line 247
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-object p0
.end method

.method getWaterMarkParam()Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;
    .locals 1

    .line 251
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->mPreviewStarted:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->mBitmapInfo:Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;

    if-nez v0, :cond_1

    .line 253
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->createWatermarkBitmap()Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->mBitmapInfo:Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;

    .line 255
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->mBitmapInfo:Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;

    return-object p0
.end method
