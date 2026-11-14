.class public Lcom/transsion/camera/feature/mode/armode/FaceInfo;
.super Ljava/lang/Object;
.source "FaceInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/transsion/camera/feature/mode/armode/FaceInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private age:I

.field private faceRect:Landroid/graphics/Rect;

.field private gender:I

.field private resource:I


# direct methods
.method public constructor <init>(IIIIIII)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/armode/FaceInfo;->faceRect:Landroid/graphics/Rect;

    .line 23
    iput p5, p0, Lcom/transsion/camera/feature/mode/armode/FaceInfo;->gender:I

    .line 24
    iput p6, p0, Lcom/transsion/camera/feature/mode/armode/FaceInfo;->age:I

    .line 25
    iput p7, p0, Lcom/transsion/camera/feature/mode/armode/FaceInfo;->resource:I

    return-void
.end method

.method private getRectArea(II)I
    .locals 0

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    mul-int/2addr p1, p2

    return p1

    :cond_0
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public compareTo(Lcom/transsion/camera/feature/mode/armode/FaceInfo;)I
    .locals 2

    .line 58
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/armode/FaceInfo;->getFaceRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/armode/FaceInfo;->getFaceRect()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/feature/mode/armode/FaceInfo;->getRectArea(II)I

    move-result p1

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/FaceInfo;->faceRect:Landroid/graphics/Rect;

    .line 59
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/armode/FaceInfo;->faceRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/mode/armode/FaceInfo;->getRectArea(II)I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 11
    check-cast p1, Lcom/transsion/camera/feature/mode/armode/FaceInfo;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/armode/FaceInfo;->compareTo(Lcom/transsion/camera/feature/mode/armode/FaceInfo;)I

    move-result p0

    return p0
.end method

.method public getFaceRect()Landroid/graphics/Rect;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/FaceInfo;->faceRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getGender()I
    .locals 0

    .line 33
    iget p0, p0, Lcom/transsion/camera/feature/mode/armode/FaceInfo;->gender:I

    return p0
.end method

.method public getResource()I
    .locals 0

    .line 37
    iget p0, p0, Lcom/transsion/camera/feature/mode/armode/FaceInfo;->resource:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "face info: faceRect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/armode/FaceInfo;->faceRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", resource = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/armode/FaceInfo;->resource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gender = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/armode/FaceInfo;->gender:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", age = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/armode/FaceInfo;->age:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", area = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/armode/FaceInfo;->faceRect:Landroid/graphics/Rect;

    .line 74
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/armode/FaceInfo;->faceRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/transsion/camera/feature/mode/armode/FaceInfo;->getRectArea(II)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
