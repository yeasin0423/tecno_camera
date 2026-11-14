.class public final enum Lcom/singleblur/faceapi/model/FaceOrientation;
.super Ljava/lang/Enum;
.source "FaceOrientation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/singleblur/faceapi/model/FaceOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/singleblur/faceapi/model/FaceOrientation;

.field public static final enum DOWN:Lcom/singleblur/faceapi/model/FaceOrientation;

.field public static final enum LEFT:Lcom/singleblur/faceapi/model/FaceOrientation;

.field public static final enum RIGHT:Lcom/singleblur/faceapi/model/FaceOrientation;

.field public static final enum UNKNOWN:Lcom/singleblur/faceapi/model/FaceOrientation;

.field public static final enum UP:Lcom/singleblur/faceapi/model/FaceOrientation;

.field private static sFaceOrientations:[Lcom/singleblur/faceapi/model/FaceOrientation;


# instance fields
.field final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 5
    new-instance v0, Lcom/singleblur/faceapi/model/FaceOrientation;

    const-string v1, "UP"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/singleblur/faceapi/model/FaceOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/model/FaceOrientation;->UP:Lcom/singleblur/faceapi/model/FaceOrientation;

    .line 6
    new-instance v0, Lcom/singleblur/faceapi/model/FaceOrientation;

    const-string v1, "LEFT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/singleblur/faceapi/model/FaceOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/model/FaceOrientation;->LEFT:Lcom/singleblur/faceapi/model/FaceOrientation;

    .line 7
    new-instance v0, Lcom/singleblur/faceapi/model/FaceOrientation;

    const-string v1, "DOWN"

    const/4 v5, 0x4

    invoke-direct {v0, v1, v4, v5}, Lcom/singleblur/faceapi/model/FaceOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/model/FaceOrientation;->DOWN:Lcom/singleblur/faceapi/model/FaceOrientation;

    .line 8
    new-instance v0, Lcom/singleblur/faceapi/model/FaceOrientation;

    const-string v1, "RIGHT"

    const/4 v6, 0x3

    const/16 v7, 0x8

    invoke-direct {v0, v1, v6, v7}, Lcom/singleblur/faceapi/model/FaceOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/model/FaceOrientation;->RIGHT:Lcom/singleblur/faceapi/model/FaceOrientation;

    .line 9
    new-instance v0, Lcom/singleblur/faceapi/model/FaceOrientation;

    const-string v1, "UNKNOWN"

    const/16 v8, 0xf

    invoke-direct {v0, v1, v5, v8}, Lcom/singleblur/faceapi/model/FaceOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/model/FaceOrientation;->UNKNOWN:Lcom/singleblur/faceapi/model/FaceOrientation;

    const/4 v1, 0x5

    new-array v9, v1, [Lcom/singleblur/faceapi/model/FaceOrientation;

    .line 3
    sget-object v10, Lcom/singleblur/faceapi/model/FaceOrientation;->UP:Lcom/singleblur/faceapi/model/FaceOrientation;

    aput-object v10, v9, v2

    sget-object v11, Lcom/singleblur/faceapi/model/FaceOrientation;->LEFT:Lcom/singleblur/faceapi/model/FaceOrientation;

    aput-object v11, v9, v3

    sget-object v12, Lcom/singleblur/faceapi/model/FaceOrientation;->DOWN:Lcom/singleblur/faceapi/model/FaceOrientation;

    aput-object v12, v9, v4

    sget-object v13, Lcom/singleblur/faceapi/model/FaceOrientation;->RIGHT:Lcom/singleblur/faceapi/model/FaceOrientation;

    aput-object v13, v9, v6

    aput-object v0, v9, v5

    sput-object v9, Lcom/singleblur/faceapi/model/FaceOrientation;->$VALUES:[Lcom/singleblur/faceapi/model/FaceOrientation;

    const/16 v9, 0x10

    new-array v9, v9, [Lcom/singleblur/faceapi/model/FaceOrientation;

    const/4 v14, 0x0

    aput-object v14, v9, v2

    aput-object v10, v9, v3

    aput-object v11, v9, v4

    aput-object v14, v9, v6

    aput-object v12, v9, v5

    aput-object v14, v9, v1

    const/4 v1, 0x6

    aput-object v14, v9, v1

    const/4 v1, 0x7

    aput-object v14, v9, v1

    aput-object v13, v9, v7

    const/16 v1, 0x9

    aput-object v14, v9, v1

    const/16 v1, 0xa

    aput-object v14, v9, v1

    const/16 v1, 0xb

    aput-object v14, v9, v1

    const/16 v1, 0xc

    aput-object v14, v9, v1

    const/16 v1, 0xd

    aput-object v14, v9, v1

    const/16 v1, 0xe

    aput-object v14, v9, v1

    aput-object v0, v9, v8

    .line 17
    sput-object v9, Lcom/singleblur/faceapi/model/FaceOrientation;->sFaceOrientations:[Lcom/singleblur/faceapi/model/FaceOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput p3, p0, Lcom/singleblur/faceapi/model/FaceOrientation;->nativeInt:I

    return-void
.end method

.method public static nativeToOrientation(I)Lcom/singleblur/faceapi/model/FaceOrientation;
    .locals 1

    .line 27
    sget-object v0, Lcom/singleblur/faceapi/model/FaceOrientation;->sFaceOrientations:[Lcom/singleblur/faceapi/model/FaceOrientation;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/singleblur/faceapi/model/FaceOrientation;
    .locals 1

    .line 3
    const-class v0, Lcom/singleblur/faceapi/model/FaceOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/singleblur/faceapi/model/FaceOrientation;

    return-object p0
.end method

.method public static values()[Lcom/singleblur/faceapi/model/FaceOrientation;
    .locals 1

    .line 3
    sget-object v0, Lcom/singleblur/faceapi/model/FaceOrientation;->$VALUES:[Lcom/singleblur/faceapi/model/FaceOrientation;

    invoke-virtual {v0}, [Lcom/singleblur/faceapi/model/FaceOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/singleblur/faceapi/model/FaceOrientation;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 23
    iget p0, p0, Lcom/singleblur/faceapi/model/FaceOrientation;->nativeInt:I

    return p0
.end method
