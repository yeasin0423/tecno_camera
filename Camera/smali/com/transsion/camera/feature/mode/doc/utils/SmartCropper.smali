.class public Lcom/transsion/camera/feature/mode/doc/utils/SmartCropper;
.super Ljava/lang/Object;
.source "SmartCropper.java"


# direct methods
.method public static scan(Landroid/graphics/Bitmap;)[Landroid/graphics/Point;
    .locals 10

    const/4 v0, 0x0

    const-string v1, "SmartCropper"

    if-nez p0, :cond_0

    const-string p0, "srcBmp == null"

    .line 22
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Landroid/graphics/Point;

    .line 26
    sget-object v3, Lcom/youtu/ocr/docprocess/DocDetector;->sharedInstance:Lcom/youtu/ocr/docprocess/DocDetector;

    .line 27
    invoke-virtual {v3, p0}, Lcom/youtu/ocr/docprocess/DocDetector;->xnnDetectorApply(Landroid/graphics/Bitmap;)[Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;

    move-result-object v3

    if-nez v3, :cond_1

    const-string p0, "detectorPoint == null"

    .line 29
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    const/4 v0, 0x0

    move v4, v0

    .line 32
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_2

    .line 33
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "detectorPoint"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v3, v4

    iget v6, v6, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "  : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v3, v4

    iget v6, v6, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 35
    :cond_2
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    aput-object v1, v2, v0

    .line 36
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    const/4 v4, 0x1

    aput-object v1, v2, v4

    .line 37
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    const/4 v5, 0x2

    aput-object v1, v2, v5

    .line 38
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    const/4 v6, 0x3

    aput-object v1, v2, v6

    .line 39
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    .line 41
    aget-object v7, v3, v0

    iget v7, v7, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    int-to-float v1, v1

    mul-float/2addr v7, v1

    float-to-int v7, v7

    aget-object v8, v3, v4

    iget v8, v8, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    mul-float/2addr v8, v1

    float-to-int v8, v8

    if-gt v7, v8, :cond_3

    aget-object v7, v3, v0

    iget v7, v7, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    mul-float/2addr v7, v1

    float-to-int v7, v7

    aget-object v8, v3, v5

    iget v8, v8, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    mul-float/2addr v8, v1

    float-to-int v8, v8

    if-gt v7, v8, :cond_3

    aget-object v7, v3, v0

    iget v7, v7, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    int-to-float v8, p0

    mul-float/2addr v7, v8

    float-to-int v7, v7

    aget-object v9, v3, v5

    iget v9, v9, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    mul-float/2addr v9, v8

    float-to-int v9, v9

    if-gt v7, v9, :cond_3

    aget-object v7, v3, v0

    iget v7, v7, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    aget-object v9, v3, v6

    iget v9, v9, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    mul-float/2addr v9, v8

    float-to-int v9, v9

    if-gt v7, v9, :cond_3

    .line 46
    aget-object p0, v2, v0

    aget-object v7, v3, v0

    iget v7, v7, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    mul-float/2addr v7, v1

    float-to-int v7, v7

    iput v7, p0, Landroid/graphics/Point;->x:I

    .line 47
    aget-object p0, v2, v0

    aget-object v0, v3, v0

    iget v0, v0, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    mul-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Point;->y:I

    .line 48
    aget-object p0, v2, v4

    aget-object v0, v3, v4

    iget v0, v0, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Point;->x:I

    .line 49
    aget-object p0, v2, v4

    aget-object v0, v3, v4

    iget v0, v0, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    mul-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Point;->y:I

    .line 50
    aget-object p0, v2, v5

    aget-object v0, v3, v5

    iget v0, v0, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Point;->x:I

    .line 51
    aget-object p0, v2, v5

    aget-object v0, v3, v5

    iget v0, v0, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    mul-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Point;->y:I

    .line 52
    aget-object p0, v2, v6

    aget-object v0, v3, v6

    iget v0, v0, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Point;->x:I

    .line 53
    aget-object p0, v2, v6

    aget-object v0, v3, v6

    iget v0, v0, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    mul-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Point;->y:I

    goto/16 :goto_1

    .line 54
    :cond_3
    aget-object v7, v3, v6

    iget v7, v7, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    mul-float/2addr v7, v1

    float-to-int v7, v7

    aget-object v8, v3, v0

    iget v8, v8, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    mul-float/2addr v8, v1

    float-to-int v8, v8

    if-gt v7, v8, :cond_4

    aget-object v7, v3, v6

    iget v7, v7, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    mul-float/2addr v7, v1

    float-to-int v7, v7

    aget-object v8, v3, v4

    iget v8, v8, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    mul-float/2addr v8, v1

    float-to-int v8, v8

    if-gt v7, v8, :cond_4

    aget-object v7, v3, v6

    iget v7, v7, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    int-to-float v8, p0

    mul-float/2addr v7, v8

    float-to-int v7, v7

    aget-object v9, v3, v4

    iget v9, v9, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    mul-float/2addr v9, v8

    float-to-int v9, v9

    if-gt v7, v9, :cond_4

    aget-object v7, v3, v6

    iget v7, v7, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    aget-object v9, v3, v5

    iget v9, v9, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    mul-float/2addr v9, v8

    float-to-int v9, v9

    if-gt v7, v9, :cond_4

    .line 58
    aget-object p0, v2, v0

    aget-object v7, v3, v6

    iget v7, v7, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    mul-float/2addr v7, v1

    float-to-int v7, v7

    iput v7, p0, Landroid/graphics/Point;->x:I

    .line 59
    aget-object p0, v2, v0

    aget-object v7, v3, v6

    iget v7, v7, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Landroid/graphics/Point;->y:I

    .line 60
    aget-object p0, v2, v4

    aget-object v7, v3, v0

    iget v7, v7, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    mul-float/2addr v7, v1

    float-to-int v7, v7

    iput v7, p0, Landroid/graphics/Point;->x:I

    .line 61
    aget-object p0, v2, v4

    aget-object v0, v3, v0

    iget v0, v0, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    mul-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Point;->y:I

    .line 62
    aget-object p0, v2, v5

    aget-object v0, v3, v4

    iget v0, v0, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Point;->x:I

    .line 63
    aget-object p0, v2, v5

    aget-object v0, v3, v4

    iget v0, v0, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    mul-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Point;->y:I

    .line 64
    aget-object p0, v2, v6

    aget-object v0, v3, v5

    iget v0, v0, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Point;->x:I

    .line 65
    aget-object p0, v2, v6

    aget-object v0, v3, v5

    iget v0, v0, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    mul-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Point;->y:I

    goto/16 :goto_1

    .line 66
    :cond_4
    aget-object v7, v3, v5

    iget v7, v7, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    mul-float/2addr v7, v1

    float-to-int v7, v7

    aget-object v8, v3, v6

    iget v8, v8, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    mul-float/2addr v8, v1

    float-to-int v8, v8

    if-gt v7, v8, :cond_5

    aget-object v7, v3, v5

    iget v7, v7, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    mul-float/2addr v7, v1

    float-to-int v7, v7

    aget-object v8, v3, v0

    iget v8, v8, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    mul-float/2addr v8, v1

    float-to-int v8, v8

    if-gt v7, v8, :cond_5

    aget-object v7, v3, v5

    iget v7, v7, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    int-to-float v8, p0

    mul-float/2addr v7, v8

    float-to-int v7, v7

    aget-object v9, v3, v0

    iget v9, v9, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    mul-float/2addr v9, v8

    float-to-int v9, v9

    if-gt v7, v9, :cond_5

    aget-object v7, v3, v5

    iget v7, v7, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    aget-object v9, v3, v4

    iget v9, v9, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    mul-float/2addr v9, v8

    float-to-int v9, v9

    if-gt v7, v9, :cond_5

    .line 70
    aget-object p0, v2, v0

    aget-object v7, v3, v5

    iget v7, v7, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    mul-float/2addr v7, v1

    float-to-int v7, v7

    iput v7, p0, Landroid/graphics/Point;->x:I

    .line 71
    aget-object p0, v2, v0

    aget-object v7, v3, v5

    iget v7, v7, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Landroid/graphics/Point;->y:I

    .line 72
    aget-object p0, v2, v4

    aget-object v7, v3, v6

    iget v7, v7, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    mul-float/2addr v7, v1

    float-to-int v7, v7

    iput v7, p0, Landroid/graphics/Point;->x:I

    .line 73
    aget-object p0, v2, v4

    aget-object v7, v3, v6

    iget v7, v7, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Landroid/graphics/Point;->y:I

    .line 74
    aget-object p0, v2, v5

    aget-object v7, v3, v0

    iget v7, v7, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    mul-float/2addr v7, v1

    float-to-int v7, v7

    iput v7, p0, Landroid/graphics/Point;->x:I

    .line 75
    aget-object p0, v2, v5

    aget-object v0, v3, v0

    iget v0, v0, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    mul-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Point;->y:I

    .line 76
    aget-object p0, v2, v6

    aget-object v0, v3, v4

    iget v0, v0, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Point;->x:I

    .line 77
    aget-object p0, v2, v6

    aget-object v0, v3, v4

    iget v0, v0, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    mul-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Point;->y:I

    goto :goto_1

    .line 79
    :cond_5
    aget-object v7, v2, v0

    aget-object v8, v3, v4

    iget v8, v8, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    mul-float/2addr v8, v1

    float-to-int v8, v8

    iput v8, v7, Landroid/graphics/Point;->x:I

    .line 80
    aget-object v7, v2, v0

    aget-object v8, v3, v4

    iget v8, v8, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    int-to-float p0, p0

    mul-float/2addr v8, p0

    float-to-int v8, v8

    iput v8, v7, Landroid/graphics/Point;->y:I

    .line 81
    aget-object v7, v2, v4

    aget-object v8, v3, v5

    iget v8, v8, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    mul-float/2addr v8, v1

    float-to-int v8, v8

    iput v8, v7, Landroid/graphics/Point;->x:I

    .line 82
    aget-object v4, v2, v4

    aget-object v7, v3, v5

    iget v7, v7, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    mul-float/2addr v7, p0

    float-to-int v7, v7

    iput v7, v4, Landroid/graphics/Point;->y:I

    .line 83
    aget-object v4, v2, v5

    aget-object v7, v3, v6

    iget v7, v7, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    mul-float/2addr v7, v1

    float-to-int v7, v7

    iput v7, v4, Landroid/graphics/Point;->x:I

    .line 84
    aget-object v4, v2, v5

    aget-object v5, v3, v6

    iget v5, v5, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    mul-float/2addr v5, p0

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Point;->y:I

    .line 85
    aget-object v4, v2, v6

    aget-object v5, v3, v0

    iget v5, v5, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    mul-float/2addr v5, v1

    float-to-int v1, v5

    iput v1, v4, Landroid/graphics/Point;->x:I

    .line 86
    aget-object v1, v2, v6

    aget-object v0, v3, v0

    iget v0, v0, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    mul-float/2addr v0, p0

    float-to-int p0, v0

    iput p0, v1, Landroid/graphics/Point;->y:I

    :goto_1
    return-object v2
.end method
