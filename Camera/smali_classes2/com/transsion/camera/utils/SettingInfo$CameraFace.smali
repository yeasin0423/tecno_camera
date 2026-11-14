.class public Lcom/transsion/camera/utils/SettingInfo$CameraFace;
.super Ljava/lang/Object;
.source "SettingInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/utils/SettingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraFace"
.end annotation


# instance fields
.field private mBounds:Landroid/graphics/Rect;

.field private final mId:I

.field private final mLeftEye:Landroid/graphics/Point;

.field private final mMouth:Landroid/graphics/Point;

.field private mOriginalBounds:Landroid/graphics/Rect;

.field private final mRightEye:Landroid/graphics/Point;

.field private final mScore:I


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;IILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 1

    .line 1208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p3, v0, :cond_2

    const/16 v0, 0x64

    if-gt p3, v0, :cond_2

    if-gez p4, :cond_1

    const/4 v0, -0x1

    if-ne p4, v0, :cond_0

    goto :goto_0

    .line 1212
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Id out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1215
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->mBounds:Landroid/graphics/Rect;

    .line 1216
    iput-object p2, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->mOriginalBounds:Landroid/graphics/Rect;

    .line 1217
    iput p3, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->mScore:I

    .line 1218
    iput p4, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->mId:I

    .line 1219
    iput-object p5, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->mLeftEye:Landroid/graphics/Point;

    .line 1220
    iput-object p6, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->mRightEye:Landroid/graphics/Point;

    .line 1221
    iput-object p7, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->mMouth:Landroid/graphics/Point;

    return-void

    .line 1210
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Confidence out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getBounds()Landroid/graphics/Rect;
    .locals 0

    .line 1229
    iget-object p0, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->mBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getOriginalBounds()Landroid/graphics/Rect;
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->mOriginalBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 0

    .line 1237
    iput-object p1, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->mBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1262
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->mBounds:Landroid/graphics/Rect;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->mScore:I

    .line 1266
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->mId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->mLeftEye:Landroid/graphics/Point;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->mRightEye:Landroid/graphics/Point;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-object p0, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->mMouth:Landroid/graphics/Point;

    const/4 v2, 0x5

    aput-object p0, v1, v2

    const-string p0, "{ bounds: %s, score: %s, id: %d, leftEyePosition: %s, rightEyePosition: %s, mouthPosition: %s }"

    .line 1262
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
