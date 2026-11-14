.class public Lcom/transsion/camera/utils/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# direct methods
.method public static argbToNV21([III)[B
    .locals 0

    .line 204
    invoke-static {p0, p1, p2}, Lcom/transsion/camera/utils/ImageUtils;->encodeYUV420SP([III)[B

    move-result-object p0

    return-object p0
.end method

.method public static bitmapToArgb(Landroid/graphics/Bitmap;)[I
    .locals 9

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 186
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 187
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int v0, v6, v7

    .line 188
    new-array v8, v0, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v8

    move v3, v6

    .line 189
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    return-object v8
.end method

.method public static encodeYUV420SP([III)[B
    .locals 16

    move/from16 v0, p1

    move/from16 v1, p2

    mul-int v2, v0, v1

    mul-int/lit8 v3, v2, 0x3

    .line 218
    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [B

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v5, v1, :cond_5

    move v8, v4

    :goto_1
    if-ge v8, v0, :cond_4

    .line 222
    aget v9, p0, v7

    const/high16 v10, 0xff0000

    and-int/2addr v9, v10

    shr-int/lit8 v9, v9, 0x10

    .line 223
    aget v10, p0, v7

    const v11, 0xff00

    and-int/2addr v10, v11

    shr-int/lit8 v10, v10, 0x8

    .line 224
    aget v11, p0, v7

    const/16 v12, 0xff

    and-int/2addr v11, v12

    mul-int/lit8 v13, v9, 0x42

    mul-int/lit16 v14, v10, 0x81

    add-int/2addr v13, v14

    mul-int/lit8 v14, v11, 0x19

    add-int/2addr v13, v14

    add-int/lit16 v13, v13, 0x80

    shr-int/lit8 v13, v13, 0x8

    add-int/lit8 v13, v13, 0x10

    mul-int/lit8 v14, v9, -0x26

    mul-int/lit8 v15, v10, 0x4a

    sub-int/2addr v14, v15

    mul-int/lit8 v15, v11, 0x70

    add-int/2addr v14, v15

    add-int/lit16 v14, v14, 0x80

    shr-int/lit8 v14, v14, 0x8

    add-int/lit16 v14, v14, 0x80

    mul-int/lit8 v9, v9, 0x70

    mul-int/lit8 v10, v10, 0x5e

    sub-int/2addr v9, v10

    mul-int/lit8 v11, v11, 0x12

    sub-int/2addr v9, v11

    add-int/lit16 v9, v9, 0x80

    shr-int/lit8 v9, v9, 0x8

    add-int/lit16 v9, v9, 0x80

    add-int/lit8 v10, v6, 0x1

    if-gez v13, :cond_0

    move v11, v4

    goto :goto_2

    .line 233
    :cond_0
    invoke-static {v13, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    :goto_2
    int-to-byte v11, v11

    aput-byte v11, v3, v6

    .line 234
    rem-int/lit8 v6, v5, 0x2

    if-nez v6, :cond_3

    rem-int/lit8 v6, v7, 0x2

    if-nez v6, :cond_3

    add-int/lit8 v6, v2, 0x1

    if-gez v9, :cond_1

    move v9, v4

    goto :goto_3

    .line 235
    :cond_1
    invoke-static {v9, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    :goto_3
    int-to-byte v9, v9

    aput-byte v9, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-gez v14, :cond_2

    move v9, v4

    goto :goto_4

    .line 236
    :cond_2
    invoke-static {v14, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    :goto_4
    int-to-byte v9, v9

    aput-byte v9, v3, v6

    :cond_3
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    move v6, v10

    goto :goto_1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    return-object v3
.end method

.method public static getBytesFromImageAsType(Landroid/media/Image;I)[B
    .locals 22

    move/from16 v0, p1

    .line 33
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    .line 37
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getWidth()I

    move-result v2

    .line 38
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getHeight()I

    move-result v3

    mul-int v4, v2, v3

    const/16 v5, 0x23

    .line 41
    invoke-static {v5}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v5

    mul-int/2addr v5, v4

    div-int/lit8 v5, v5, 0x8

    new-array v5, v5, [B

    .line 46
    div-int/lit8 v6, v4, 0x4

    new-array v7, v6, [B

    .line 47
    div-int/lit8 v4, v4, 0x4

    new-array v8, v4, [B

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 52
    :goto_0
    array-length v14, v1

    if-ge v10, v14, :cond_c

    .line 53
    aget-object v14, v1, v10

    invoke-virtual {v14}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v14

    .line 54
    aget-object v16, v1, v10

    invoke-virtual/range {v16 .. v16}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v16

    .line 56
    aget-object v17, v1, v10

    invoke-virtual/range {v17 .. v17}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 57
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 61
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v9

    new-array v9, v9, [B

    .line 62
    invoke-virtual {v15, v9}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    if-nez v10, :cond_1

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1
    if-ge v14, v3, :cond_0

    .line 68
    invoke-static {v9, v15, v5, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v15, v15, v16

    add-int/2addr v11, v2

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v19, v1

    :goto_2
    move/from16 v21, v3

    goto/16 :goto_b

    :cond_1
    const/4 v15, 0x1

    if-ne v10, v15, :cond_6

    const/4 v15, 0x0

    const/16 v18, 0x0

    :goto_3
    move-object/from16 v19, v1

    .line 74
    div-int/lit8 v1, v3, 0x2

    if-ge v15, v1, :cond_5

    const/4 v1, 0x0

    :goto_4
    move/from16 v20, v13

    .line 75
    div-int/lit8 v13, v2, 0x2

    if-ge v1, v13, :cond_2

    add-int/lit8 v13, v12, 0x1

    .line 76
    aget-byte v21, v9, v18

    aput-byte v21, v7, v12

    add-int v18, v18, v14

    add-int/lit8 v1, v1, 0x1

    move v12, v13

    move/from16 v13, v20

    goto :goto_4

    :cond_2
    const/4 v1, 0x2

    if-ne v14, v1, :cond_3

    sub-int v1, v16, v2

    :goto_5
    add-int v18, v18, v1

    goto :goto_6

    :cond_3
    const/4 v1, 0x1

    if-ne v14, v1, :cond_4

    .line 82
    div-int/lit8 v1, v2, 0x2

    sub-int v1, v16, v1

    goto :goto_5

    :cond_4
    :goto_6
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, v19

    move/from16 v13, v20

    goto :goto_3

    :cond_5
    move/from16 v20, v13

    goto :goto_2

    :cond_6
    move-object/from16 v19, v1

    move/from16 v20, v13

    const/4 v1, 0x2

    if-ne v10, v1, :cond_b

    move/from16 v13, v20

    const/4 v1, 0x0

    const/4 v15, 0x0

    :goto_7
    move/from16 v18, v12

    .line 87
    div-int/lit8 v12, v3, 0x2

    if-ge v1, v12, :cond_a

    const/4 v12, 0x0

    :goto_8
    move/from16 v21, v3

    .line 88
    div-int/lit8 v3, v2, 0x2

    if-ge v12, v3, :cond_7

    add-int/lit8 v3, v13, 0x1

    .line 89
    aget-byte v20, v9, v15

    aput-byte v20, v8, v13

    add-int/2addr v15, v14

    add-int/lit8 v12, v12, 0x1

    move v13, v3

    move/from16 v3, v21

    goto :goto_8

    :cond_7
    const/4 v3, 0x2

    if-ne v14, v3, :cond_8

    sub-int v3, v16, v2

    :goto_9
    add-int/2addr v15, v3

    goto :goto_a

    :cond_8
    const/4 v3, 0x1

    if-ne v14, v3, :cond_9

    .line 95
    div-int/lit8 v3, v2, 0x2

    sub-int v3, v16, v3

    goto :goto_9

    :cond_9
    :goto_a
    add-int/lit8 v1, v1, 0x1

    move/from16 v12, v18

    move/from16 v3, v21

    goto :goto_7

    :cond_a
    move/from16 v21, v3

    move/from16 v12, v18

    goto :goto_b

    :cond_b
    move/from16 v21, v3

    move/from16 v18, v12

    move/from16 v13, v20

    :goto_b
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, v19

    move/from16 v3, v21

    goto/16 :goto_0

    :cond_c
    if-eqz v0, :cond_f

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    goto :goto_e

    :cond_d
    const/4 v9, 0x0

    :goto_c
    if-ge v9, v4, :cond_10

    add-int/lit8 v0, v11, 0x1

    .line 117
    aget-byte v1, v8, v9

    aput-byte v1, v5, v11

    add-int/lit8 v11, v0, 0x1

    .line 118
    aget-byte v1, v7, v9

    aput-byte v1, v5, v0

    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    :cond_e
    const/4 v9, 0x0

    :goto_d
    if-ge v9, v4, :cond_10

    add-int/lit8 v0, v11, 0x1

    .line 111
    aget-byte v1, v7, v9

    aput-byte v1, v5, v11

    add-int/lit8 v11, v0, 0x1

    .line 112
    aget-byte v1, v8, v9

    aput-byte v1, v5, v0

    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    :cond_f
    const/4 v0, 0x0

    .line 106
    invoke-static {v7, v0, v5, v11, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v11, v6

    .line 107
    invoke-static {v8, v0, v5, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_10
    :goto_e
    return-object v5

    :catch_0
    move-exception v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static nv21ToJpeg([BIILandroid/graphics/Rect;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 170
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 171
    new-instance v7, Landroid/graphics/YuvImage;

    const/16 v3, 0x11

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v6}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    if-nez p3, :cond_0

    .line 173
    new-instance p3, Landroid/graphics/Rect;

    const/4 p0, 0x0

    invoke-direct {p3, p0, p0, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    :cond_0
    const/16 p0, 0x64

    .line 175
    invoke-virtual {v7, p3, p0, v0}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 179
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 177
    :cond_1
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "YuvImage failed to encode jpeg."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method
