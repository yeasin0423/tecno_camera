.class public final enum Lcom/singleblur/faceapi/model/CvPixelFormat;
.super Ljava/lang/Enum;
.source "CvPixelFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/singleblur/faceapi/model/CvPixelFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/singleblur/faceapi/model/CvPixelFormat;

.field public static final enum BGR888:Lcom/singleblur/faceapi/model/CvPixelFormat;

.field public static final enum BGRA8888:Lcom/singleblur/faceapi/model/CvPixelFormat;

.field public static final enum GRAY8:Lcom/singleblur/faceapi/model/CvPixelFormat;

.field public static final enum NV12:Lcom/singleblur/faceapi/model/CvPixelFormat;

.field public static final enum NV21:Lcom/singleblur/faceapi/model/CvPixelFormat;

.field public static final enum RGBA8888:Lcom/singleblur/faceapi/model/CvPixelFormat;

.field public static final enum YUV420P:Lcom/singleblur/faceapi/model/CvPixelFormat;

.field private static sImageFormats:[Lcom/singleblur/faceapi/model/CvPixelFormat;


# instance fields
.field final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 5
    new-instance v0, Lcom/singleblur/faceapi/model/CvPixelFormat;

    const-string v1, "GRAY8"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/singleblur/faceapi/model/CvPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/model/CvPixelFormat;->GRAY8:Lcom/singleblur/faceapi/model/CvPixelFormat;

    .line 6
    new-instance v0, Lcom/singleblur/faceapi/model/CvPixelFormat;

    const-string v1, "YUV420P"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/singleblur/faceapi/model/CvPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/model/CvPixelFormat;->YUV420P:Lcom/singleblur/faceapi/model/CvPixelFormat;

    .line 7
    new-instance v0, Lcom/singleblur/faceapi/model/CvPixelFormat;

    const-string v1, "NV12"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/singleblur/faceapi/model/CvPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/model/CvPixelFormat;->NV12:Lcom/singleblur/faceapi/model/CvPixelFormat;

    .line 8
    new-instance v0, Lcom/singleblur/faceapi/model/CvPixelFormat;

    const-string v1, "NV21"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/singleblur/faceapi/model/CvPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/model/CvPixelFormat;->NV21:Lcom/singleblur/faceapi/model/CvPixelFormat;

    .line 9
    new-instance v0, Lcom/singleblur/faceapi/model/CvPixelFormat;

    const-string v1, "BGRA8888"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/singleblur/faceapi/model/CvPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/model/CvPixelFormat;->BGRA8888:Lcom/singleblur/faceapi/model/CvPixelFormat;

    .line 10
    new-instance v0, Lcom/singleblur/faceapi/model/CvPixelFormat;

    const-string v1, "BGR888"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/singleblur/faceapi/model/CvPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/model/CvPixelFormat;->BGR888:Lcom/singleblur/faceapi/model/CvPixelFormat;

    .line 11
    new-instance v0, Lcom/singleblur/faceapi/model/CvPixelFormat;

    const-string v1, "RGBA8888"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/singleblur/faceapi/model/CvPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/model/CvPixelFormat;->RGBA8888:Lcom/singleblur/faceapi/model/CvPixelFormat;

    const/4 v1, 0x7

    new-array v9, v1, [Lcom/singleblur/faceapi/model/CvPixelFormat;

    .line 3
    sget-object v10, Lcom/singleblur/faceapi/model/CvPixelFormat;->GRAY8:Lcom/singleblur/faceapi/model/CvPixelFormat;

    aput-object v10, v9, v2

    sget-object v11, Lcom/singleblur/faceapi/model/CvPixelFormat;->YUV420P:Lcom/singleblur/faceapi/model/CvPixelFormat;

    aput-object v11, v9, v3

    sget-object v12, Lcom/singleblur/faceapi/model/CvPixelFormat;->NV12:Lcom/singleblur/faceapi/model/CvPixelFormat;

    aput-object v12, v9, v4

    sget-object v13, Lcom/singleblur/faceapi/model/CvPixelFormat;->NV21:Lcom/singleblur/faceapi/model/CvPixelFormat;

    aput-object v13, v9, v5

    sget-object v14, Lcom/singleblur/faceapi/model/CvPixelFormat;->BGRA8888:Lcom/singleblur/faceapi/model/CvPixelFormat;

    aput-object v14, v9, v6

    sget-object v15, Lcom/singleblur/faceapi/model/CvPixelFormat;->BGR888:Lcom/singleblur/faceapi/model/CvPixelFormat;

    aput-object v15, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lcom/singleblur/faceapi/model/CvPixelFormat;->$VALUES:[Lcom/singleblur/faceapi/model/CvPixelFormat;

    new-array v1, v1, [Lcom/singleblur/faceapi/model/CvPixelFormat;

    aput-object v10, v1, v2

    aput-object v11, v1, v3

    aput-object v12, v1, v4

    aput-object v13, v1, v5

    aput-object v14, v1, v6

    aput-object v15, v1, v7

    aput-object v0, v1, v8

    .line 15
    sput-object v1, Lcom/singleblur/faceapi/model/CvPixelFormat;->sImageFormats:[Lcom/singleblur/faceapi/model/CvPixelFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput p3, p0, Lcom/singleblur/faceapi/model/CvPixelFormat;->nativeInt:I

    return-void
.end method

.method public static nativeToConfig(I)Lcom/singleblur/faceapi/model/CvPixelFormat;
    .locals 1

    .line 28
    sget-object v0, Lcom/singleblur/faceapi/model/CvPixelFormat;->sImageFormats:[Lcom/singleblur/faceapi/model/CvPixelFormat;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/singleblur/faceapi/model/CvPixelFormat;
    .locals 1

    .line 3
    const-class v0, Lcom/singleblur/faceapi/model/CvPixelFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/singleblur/faceapi/model/CvPixelFormat;

    return-object p0
.end method

.method public static values()[Lcom/singleblur/faceapi/model/CvPixelFormat;
    .locals 1

    .line 3
    sget-object v0, Lcom/singleblur/faceapi/model/CvPixelFormat;->$VALUES:[Lcom/singleblur/faceapi/model/CvPixelFormat;

    invoke-virtual {v0}, [Lcom/singleblur/faceapi/model/CvPixelFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/singleblur/faceapi/model/CvPixelFormat;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 24
    iget p0, p0, Lcom/singleblur/faceapi/model/CvPixelFormat;->nativeInt:I

    return p0
.end method
