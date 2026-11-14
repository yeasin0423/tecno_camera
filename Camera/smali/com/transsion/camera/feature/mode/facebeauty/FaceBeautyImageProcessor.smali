.class Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyImageProcessor;
.super Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;
.source "FaceBeautyImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor<",
        "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile mAlgorithmReleased:Z

.field private mFaceBeauty:Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V

    return-void
.end method

.method private processImpl([BIII)[B
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyImageProcessor;->mFaceBeauty:Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;

    if-nez v0, :cond_0

    .line 66
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "mFaceBeauty is null"

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p1

    .line 69
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyImageProcessor;->mAlgorithmReleased:Z

    if-eqz v0, :cond_1

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "algorithmProcess algorithm has released"

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p1

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyImageProcessor;->mFaceBeauty:Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;->process([BIII)Z

    move-result p2

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "face beauty process status: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method protected algorithmProcess([BIIII)[B
    .locals 0

    .line 56
    invoke-direct {p0, p1, p3, p4, p2}, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyImageProcessor;->processImpl([BIII)[B

    return-object p1
.end method

.method protected algorithmProcessPostView([BIIII)[B
    .locals 0

    return-object p1
.end method

.method public init(Lcom/transsion/camera/app/common/location/LocationManager;Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;)V
    .locals 0

    .line 39
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->init(Lcom/transsion/camera/app/common/location/LocationManager;Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;)V

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyImageProcessor;->mFaceBeauty:Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;

    if-eqz p0, :cond_0

    .line 41
    invoke-interface {p0}, Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;->init()Z

    :cond_0
    return-void
.end method

.method protected releaseAlgorithm()V
    .locals 1

    .line 47
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->releaseAlgorithm()V

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyImageProcessor;->mAlgorithmReleased:Z

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyImageProcessor;->mFaceBeauty:Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;

    if-eqz p0, :cond_0

    .line 50
    invoke-interface {p0}, Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;->unInit()Z

    :cond_0
    return-void
.end method

.method setFaceBeauty(Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyImageProcessor;->mFaceBeauty:Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;

    return-void
.end method
