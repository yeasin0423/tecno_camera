.class Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;
.super Landroid/os/Handler;
.source "DocumentMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/doc/DocumentMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DocDetectorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Landroid/os/Looper;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    .line 407
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 412
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 413
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 463
    :pswitch_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$1300(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Lcom/youtu/ocr/docprocess/DocDetector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/youtu/ocr/docprocess/DocDetector;->xnnDestory()V

    .line 464
    sput-boolean v1, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->sCheckDetectorLicense:Z

    .line 465
    sget-object p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "unInitResource xnnDestory"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 442
    :pswitch_1
    sget-boolean p1, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->sCheckDetectorLicense:Z

    if-eqz p1, :cond_0

    .line 443
    sget-object p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "sCheckDetectorLicense = true return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 447
    :cond_0
    :try_start_0
    sget-object p1, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "initResource start"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 448
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$1400(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/youtu/ocr/docprocess/DocDetector;->init(Landroid/content/Context;)V

    const-string p1, "doc_licence.lic"

    const-string v0, "KJ1RZPyECsHOEl0yiDBrGOEl0ye16uRg"

    .line 449
    invoke-static {p1, v0}, Lcom/tencent/youtu/YTCommonInterface;->initAuthByAssets(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 451
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$1500(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "DocDetectV15.xbin"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 452
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 453
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/FileUtil;->readStream(Ljava/io/InputStream;I)[B

    move-result-object v0

    .line 455
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$1300(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Lcom/youtu/ocr/docprocess/DocDetector;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/youtu/ocr/docprocess/DocDetector;->xnnInitedByByte([B)Z

    move-result p0

    sput-boolean p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->sCheckDetectorLicense:Z

    .line 456
    sget-object p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initResource end sCheckDetectorLicense = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->sCheckDetectorLicense:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ret = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p0

    .line 458
    sget-object p1, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 459
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 415
    :pswitch_2
    sget-boolean v0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->sCheckDetectorLicense:Z

    if-nez v0, :cond_1

    .line 416
    sget-object p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "Document uninit"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 419
    :cond_1
    invoke-static {}, Lcom/transsion/camera/feature/mode/doc/object/AddData;->getInstance()Lcom/transsion/camera/feature/mode/doc/object/AddData;

    move-result-object v0

    .line 420
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    .line 421
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 422
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 423
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$1300(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Lcom/youtu/ocr/docprocess/DocDetector;

    move-result-object v4

    invoke-virtual {v4, v2, v3, p1, v1}, Lcom/youtu/ocr/docprocess/DocDetector;->xnnDetectorApply([BIII)[Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;

    move-result-object p1

    .line 424
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_2

    .line 426
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {p0, v1}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$402(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Z)Z

    goto :goto_2

    .line 428
    :cond_2
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$1300(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Lcom/youtu/ocr/docprocess/DocDetector;

    move-result-object v3

    invoke-virtual {v3, p1, v1}, Lcom/youtu/ocr/docprocess/DocDetector;->coordinateTransform([Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;I)V

    .line 429
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    const/4 v3, 0x1

    invoke-static {p0, v3}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$402(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Z)Z

    move p0, v1

    .line 430
    :goto_0
    array-length v3, p1

    if-ge p0, v3, :cond_3

    .line 431
    aget-object v3, p1, p0

    iget v3, v3, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    aget-object v3, p1, p0

    iget v3, v3, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    mul-float/2addr v3, v4

    sub-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 434
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [F

    .line 435
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_4

    .line 436
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    aput p1, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 438
    :cond_4
    sget-object p1, Lcom/transsion/camera/feature/mode/doc/object/Type;->LINE:Lcom/transsion/camera/feature/mode/doc/object/Type;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/feature/mode/doc/object/AddData;->addFloatPoint(Lcom/transsion/camera/feature/mode/doc/object/Type;[F)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
