.class public Lcom/youtu/ocr/docprocess/DocDetector;
.super Ljava/lang/Object;
.source "DocDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;
    }
.end annotation


# static fields
.field public static final sharedInstance:Lcom/youtu/ocr/docprocess/DocDetector;

.field private static size:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "YTCommon"

    .line 20
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "common"

    .line 21
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 29
    new-instance v0, Lcom/youtu/ocr/docprocess/DocDetector;

    invoke-direct {v0}, Lcom/youtu/ocr/docprocess/DocDetector;-><init>()V

    sput-object v0, Lcom/youtu/ocr/docprocess/DocDetector;->sharedInstance:Lcom/youtu/ocr/docprocess/DocDetector;

    const/16 v0, 0xa

    .line 31
    sput v0, Lcom/youtu/ocr/docprocess/DocDetector;->size:I

    .line 34
    new-instance v1, Lcom/youtu/ocr/docprocess/GussianBlur;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/youtu/ocr/docprocess/GussianBlur;-><init>(II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance p0, Ljava/util/ArrayList;

    sget v0, Lcom/youtu/ocr/docprocess/DocDetector;->size:I

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public coordinateTransform([Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;I)V
    .locals 2

    const/4 v0, 0x0

    .line 322
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 323
    aget-object v1, p1, v0

    invoke-virtual {p0, p2, v1}, Lcom/youtu/ocr/docprocess/DocDetector;->standardCoordinate2RealCoordinate(ILcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;)Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public rectifyByBitmap(Landroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;
    .locals 8

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x4

    new-array v1, v0, [Landroid/graphics/Point;

    .line 401
    new-instance v2, Landroid/graphics/Point;

    const/4 v3, 0x0

    aget v4, p2, v3

    const/4 v5, 0x1

    aget v6, p2, v5

    invoke-direct {v2, v4, v6}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v1, v3

    .line 402
    new-instance v2, Landroid/graphics/Point;

    const/4 v3, 0x2

    aget v4, p2, v3

    const/4 v6, 0x3

    aget v7, p2, v6

    invoke-direct {v2, v4, v7}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v1, v5

    .line 403
    new-instance v2, Landroid/graphics/Point;

    aget v0, p2, v0

    const/4 v4, 0x5

    aget v4, p2, v4

    invoke-direct {v2, v0, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v1, v3

    .line 404
    new-instance v0, Landroid/graphics/Point;

    const/4 v2, 0x6

    aget v2, p2, v2

    const/4 v3, 0x7

    aget p2, p2, v3

    invoke-direct {v0, v2, p2}, Landroid/graphics/Point;-><init>(II)V

    aput-object v0, v1, v6

    .line 405
    invoke-virtual {p0, p1, v1}, Lcom/youtu/ocr/docprocess/DocDetector;->xnnQuad(Landroid/graphics/Bitmap;[Landroid/graphics/Point;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public standardCoordinate2RealCoordinate(ILcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;)Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;
    .locals 1

    const/high16 p0, 0x3f800000    # 1.0f

    if-nez p1, :cond_0

    .line 345
    new-instance p1, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;

    iget v0, p2, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    sub-float/2addr p0, v0

    iget p2, p2, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    invoke-direct {p1, p0, p2}, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;-><init>(FF)V

    :goto_0
    move-object p2, p1

    goto :goto_1

    :cond_0
    const/16 v0, 0x5a

    if-ne p1, v0, :cond_1

    .line 347
    new-instance p0, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;

    iget p1, p2, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    iget p2, p2, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    invoke-direct {p0, p1, p2}, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;-><init>(FF)V

    move-object p2, p0

    goto :goto_1

    :cond_1
    const/16 v0, 0xb4

    if-ne p1, v0, :cond_2

    .line 349
    new-instance p1, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;

    iget v0, p2, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    iget p2, p2, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    sub-float/2addr p0, p2

    invoke-direct {p1, v0, p0}, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;-><init>(FF)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x10e

    if-ne p1, v0, :cond_3

    .line 351
    new-instance p1, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;

    iget v0, p2, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    sub-float v0, p0, v0

    iget p2, p2, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    sub-float/2addr p0, p2

    invoke-direct {p1, v0, p0}, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;-><init>(FF)V

    goto :goto_0

    :cond_3
    :goto_1
    return-object p2
.end method

.method public native xnnApply(Landroid/graphics/Bitmap;)Ljava/lang/String;
.end method

.method public native xnnApplyByByte([BIII)Ljava/lang/String;
.end method

.method public native xnnDestory()V
.end method

.method public xnnDetectorApply(Landroid/graphics/Bitmap;)[Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;
    .locals 2

    .line 292
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 293
    invoke-virtual {p0, p1}, Lcom/youtu/ocr/docprocess/DocDetector;->xnnApply(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\"

    const-string v1, ""

    .line 294
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "null object"

    .line 295
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 298
    :cond_0
    const-class p1, [Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;

    invoke-virtual {v0, p0, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;

    return-object p0
.end method

.method public xnnDetectorApply([BIII)[Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;
    .locals 1

    .line 303
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 306
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/youtu/ocr/docprocess/DocDetector;->xnnApplyByByte([BIII)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\"

    const-string p2, ""

    .line 308
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 309
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 312
    :cond_0
    const-class p1, [Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;

    invoke-virtual {v0, p0, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;

    return-object p0
.end method

.method public native xnnEnhance(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
.end method

.method public native xnnInitedByByte([B)Z
.end method

.method public native xnnQuad(Landroid/graphics/Bitmap;[Landroid/graphics/Point;)Landroid/graphics/Bitmap;
.end method
