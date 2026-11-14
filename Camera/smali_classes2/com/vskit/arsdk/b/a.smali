.class public Lcom/vskit/arsdk/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 6

    .line 48
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 49
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v1, 0x1

    if-gt v0, p2, :cond_0

    if-le p0, p1, :cond_2

    .line 50
    :cond_0
    div-int/lit8 v2, v0, 0x2

    .line 51
    div-int/lit8 v3, p0, 0x2

    .line 52
    :goto_0
    div-int v4, v2, v1

    if-le v4, p2, :cond_1

    div-int v4, v3, v1

    if-le v4, p1, :cond_1

    mul-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    mul-int/2addr p0, v0

    mul-int v0, v1, v1

    .line 53
    div-int/2addr p0, v0

    int-to-long v2, p0

    mul-int/2addr p1, p2

    int-to-long p0, p1

    :goto_1
    const-wide/16 v4, 0x4

    .line 54
    div-long/2addr v2, v4

    cmp-long p2, v2, p0

    if-lez p2, :cond_2

    mul-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_2
    return v1
.end method

.method public static a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 139
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 140
    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    int-to-float p1, p1

    .line 141
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 142
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 143
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    .line 144
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 145
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 146
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-object p1
.end method

.method public static a(Landroid/graphics/Bitmap;ZZZ)Landroid/graphics/Bitmap;
    .locals 7

    if-nez p0, :cond_0

    const-string p0, "BitmapUtils"

    const-string p1, "bitmap is null"

    .line 148
    invoke-static {p0, p1}, Lcom/vskit/arsdk/b/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 149
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    .line 150
    :goto_1
    invoke-virtual {v5, p1, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 151
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/4 p2, 0x0

    invoke-virtual {v5, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 152
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 153
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 154
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p3, :cond_3

    if-eqz p0, :cond_3

    .line 155
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_3

    .line 156
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    return-object p1
.end method

.method public static a(Ljava/io/File;II)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    .line 26
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 27
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 28
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 29
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 30
    invoke-static {v2, p1, p2}, Lcom/vskit/arsdk/b/a;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v4

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 31
    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 32
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 33
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    goto :goto_0

    :cond_0
    move-object v2, v0

    .line 34
    :goto_0
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 35
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 36
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/vskit/arsdk/b/a;->c(Ljava/lang/String;)I

    move-result p0

    int-to-float p0, p0

    .line 37
    invoke-virtual {v8, p0}, Landroid/graphics/Matrix;->postRotate(F)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    return-object v0

    .line 38
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    .line 39
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v5, p0

    mul-float/2addr v5, v4

    int-to-float p2, p2

    div-float/2addr v5, p2

    int-to-float v6, v2

    mul-float/2addr v6, v4

    int-to-float p1, p1

    div-float/2addr v6, p1

    cmpl-float v7, v6, v5

    if-lez v7, :cond_2

    div-float/2addr v6, v5

    sub-float/2addr v6, v4

    div-float/2addr v6, v3

    mul-float/2addr v6, p1

    mul-float/2addr v6, v5

    float-to-int p1, v6

    sub-int/2addr v2, p1

    move v4, p1

    move v5, v1

    goto :goto_1

    :cond_2
    div-float/2addr v5, v6

    sub-float/2addr v5, v4

    div-float/2addr v5, v3

    mul-float/2addr v5, p2

    mul-float/2addr v5, v6

    float-to-int p1, v5

    sub-int/2addr p0, p1

    move v5, p1

    move v4, v1

    :goto_1
    sub-int v6, v2, v4

    sub-int v7, p0, v5

    const/4 v9, 0x1

    move-object v3, v0

    .line 40
    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 41
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_3

    return-object v0

    .line 42
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    .line 43
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v5, p0

    mul-float/2addr v5, v4

    int-to-float p2, p2

    div-float/2addr v5, p2

    int-to-float v6, v2

    mul-float/2addr v6, v4

    int-to-float p1, p1

    div-float/2addr v6, p1

    cmpl-float v7, v6, v5

    if-lez v7, :cond_4

    div-float/2addr v6, v5

    sub-float/2addr v6, v4

    div-float/2addr v6, v3

    mul-float/2addr v6, p1

    mul-float/2addr v6, v5

    float-to-int p1, v6

    sub-int/2addr v2, p1

    move v4, p1

    move v5, v1

    goto :goto_2

    :cond_4
    div-float/2addr v5, v6

    sub-float/2addr v5, v4

    div-float/2addr v5, v3

    mul-float/2addr v5, p2

    mul-float/2addr v5, v6

    float-to-int p1, v5

    sub-int/2addr p0, p1

    move v5, p1

    move v4, v1

    :goto_2
    sub-int v6, v2, v4

    sub-int v7, p0, v5

    const/4 v9, 0x1

    move-object v3, v0

    .line 44
    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :catchall_0
    if-nez v0, :cond_5

    return-object v0

    .line 45
    :cond_5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    .line 46
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v5, p0

    mul-float/2addr v5, v4

    int-to-float p2, p2

    div-float/2addr v5, p2

    int-to-float v6, v2

    mul-float/2addr v6, v4

    int-to-float p1, p1

    div-float/2addr v6, p1

    cmpl-float v7, v6, v5

    if-lez v7, :cond_6

    div-float/2addr v6, v5

    sub-float/2addr v6, v4

    div-float/2addr v6, v3

    mul-float/2addr v6, p1

    mul-float/2addr v6, v5

    float-to-int p1, v6

    sub-int/2addr v2, p1

    move v4, p1

    move v5, v1

    goto :goto_3

    :cond_6
    div-float/2addr v5, v6

    sub-float/2addr v5, v4

    div-float/2addr v5, v3

    mul-float/2addr v5, p2

    mul-float/2addr v5, v6

    float-to-int p1, v5

    sub-int/2addr p0, p1

    move v5, p1

    move v4, v1

    :goto_3
    sub-int v6, v2, v4

    sub-int v7, p0, v5

    const/4 v9, 0x1

    move-object v3, v0

    .line 47
    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_7
    return-object v0
.end method

.method public static c(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p0, Landroid/media/ExifInterface;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "Orientation"

    const/4 v2, 0x1

    .line 3
    :try_start_1
    invoke-virtual {p0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    const/4 v1, 0x6

    if-eq p0, v1, :cond_1

    const/16 v1, 0x8

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10e

    goto :goto_0

    :cond_1
    const/16 v0, 0x5a

    goto :goto_0

    :cond_2
    const/16 v0, 0xb4

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return v0
.end method
