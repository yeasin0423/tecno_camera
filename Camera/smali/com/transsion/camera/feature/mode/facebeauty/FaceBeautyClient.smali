.class Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyClient;
.super Ljava/lang/Object;
.source "FaceBeautyClient.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCapture:Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;

.field private mPreview:Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyClient;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyClient;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;->createPreviewClient()Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyClient;->mPreview:Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;

    .line 51
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;->createCaptureClient()Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyClient;->mCapture:Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;

    return-void
.end method


# virtual methods
.method public configStream(Landroid/view/Surface;II)Landroid/view/Surface;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyClient;->mPreview:Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;->configStream(Landroid/view/Surface;II)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method getCapture()Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyClient;->mCapture:Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;

    return-object p0
.end method

.method getPreview()Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyClient;->mPreview:Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;

    return-object p0
.end method

.method public setFaceBeautyValue(Ljava/lang/String;)V
    .locals 9

    .line 87
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0xc28

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :pswitch_1
    const-string v0, "5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_1

    :pswitch_2
    const-string v0, "4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_1

    :pswitch_3
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v5

    goto :goto_1

    :pswitch_4
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v7

    goto :goto_1

    :pswitch_5
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v8

    goto :goto_1

    :cond_0
    const-string v0, "ai"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v6

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_1

    .line 117
    sget-object v0, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyClient;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid face beauty value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_6
    move v2, v3

    goto :goto_2

    :pswitch_7
    move v2, v4

    goto :goto_2

    :pswitch_8
    move v2, v5

    goto :goto_2

    :pswitch_9
    move v2, v7

    :goto_2
    :pswitch_a
    move v7, v8

    goto :goto_4

    :pswitch_b
    move v2, v8

    move v7, v2

    goto :goto_4

    :goto_3
    :pswitch_c
    move v2, v6

    .line 121
    :goto_4
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyClient;->mPreview:Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;

    invoke-interface {p1, v7}, Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;->setMode(I)Z

    .line 122
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyClient;->mPreview:Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;

    invoke-interface {p1, v2}, Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;->setLevel(I)Z

    .line 124
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyClient;->mCapture:Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;

    invoke-interface {p1, v7}, Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;->setMode(I)Z

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyClient;->mCapture:Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;

    invoke-interface {p0, v2}, Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;->setLevel(I)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_a
    .end packed-switch
.end method

.method public setFaceFront(Z)V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyClient;->mPreview:Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;

    const/16 v1, 0x64

    invoke-interface {v0, v1, p1}, Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;->setParam(II)Z

    .line 67
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyClient;->mCapture:Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;

    invoke-interface {p0, v1, p1}, Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;->setParam(II)Z

    return-void
.end method

.method public setJpegOrientation(I)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyClient;->mPreview:Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;

    const/16 v1, 0x65

    invoke-interface {v0, v1, p1}, Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;->setParam(II)Z

    .line 79
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyClient;->mCapture:Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;

    invoke-interface {p0, v1, p1}, Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;->setParam(II)Z

    return-void
.end method

.method public setSensorOrientation(I)V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyClient;->mPreview:Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;

    const/16 v1, 0x66

    invoke-interface {v0, v1, p1}, Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;->setParam(II)Z

    .line 73
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/facebeauty/FaceBeautyClient;->mCapture:Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;

    invoke-interface {p0, v1, p1}, Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;->setParam(II)Z

    return-void
.end method
