.class public Lcom/transsion/camera/feature/mode/armode/FaceDetectionView;
.super Landroid/view/View;
.source "FaceDetectionView.java"


# instance fields
.field private mFaceIndicator:Landroid/graphics/drawable/Drawable;

.field private mFaceIndicatorNama:Landroid/graphics/drawable/Drawable;

.field private mFaces:[Lcom/transsion/camera/feature/mode/armode/CameraFace;

.field private mPaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/Rect;

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 29
    iput p2, p0, Lcom/transsion/camera/feature/mode/armode/FaceDetectionView;->mType:I

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/armode/FaceDetectionView;->mPaint:Landroid/graphics/Paint;

    const-string p2, "#00FA89"

    .line 36
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/armode/FaceDetectionView;->mPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/camera/feature/mode/armode/R$drawable;->ic_ar_sticker_face_rect:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/armode/FaceDetectionView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/feature/mode/armode/R$drawable;->ic_ar_sticker_face_rect_:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/armode/FaceDetectionView;->mFaceIndicatorNama:Landroid/graphics/drawable/Drawable;

    .line 40
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/armode/FaceDetectionView;->mRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 65
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/FaceDetectionView;->mFaces:[Lcom/transsion/camera/feature/mode/armode/CameraFace;

    if-eqz v0, :cond_3

    array-length v1, v0

    if-lez v1, :cond_3

    .line 66
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    if-nez v4, :cond_0

    goto/16 :goto_1

    .line 71
    :cond_0
    invoke-virtual {v4}, Lcom/transsion/camera/feature/mode/armode/CameraFace;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 72
    iget v6, p0, Lcom/transsion/camera/feature/mode/armode/FaceDetectionView;->mType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 73
    iget-object v6, p0, Lcom/transsion/camera/feature/mode/armode/FaceDetectionView;->mPaint:Landroid/graphics/Paint;

    const/16 v7, 0xff

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 74
    iget-object v6, p0, Lcom/transsion/camera/feature/mode/armode/FaceDetectionView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 75
    iget-object v6, p0, Lcom/transsion/camera/feature/mode/armode/FaceDetectionView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 77
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "gender: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/transsion/camera/feature/mode/armode/CameraFace;->getGender()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 78
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dx = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/transsion/camera/feature/mode/armode/CameraFace;->getDistanceX()F

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 79
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dy = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/transsion/camera/feature/mode/armode/CameraFace;->getDistanceY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 81
    iget-object v8, p0, Lcom/transsion/camera/feature/mode/armode/FaceDetectionView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 82
    iget-object v8, p0, Lcom/transsion/camera/feature/mode/armode/FaceDetectionView;->mPaint:Landroid/graphics/Paint;

    const/16 v9, 0xc8

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 84
    iget v8, v5, Landroid/graphics/Rect;->left:I

    add-int/lit8 v8, v8, 0x5

    int-to-float v8, v8

    .line 85
    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/lit8 v5, v5, 0x5

    int-to-float v5, v5

    .line 86
    iget-object v9, p0, Lcom/transsion/camera/feature/mode/armode/FaceDetectionView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    iget-object v11, p0, Lcom/transsion/camera/feature/mode/armode/FaceDetectionView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v6, v2, v10, v11}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 87
    iget-object v9, p0, Lcom/transsion/camera/feature/mode/armode/FaceDetectionView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v5, v9

    .line 88
    iget-object v9, p0, Lcom/transsion/camera/feature/mode/armode/FaceDetectionView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v8, v5, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 91
    iget-object v6, p0, Lcom/transsion/camera/feature/mode/armode/FaceDetectionView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    iget-object v10, p0, Lcom/transsion/camera/feature/mode/armode/FaceDetectionView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7, v2, v9, v10}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 92
    iget-object v6, p0, Lcom/transsion/camera/feature/mode/armode/FaceDetectionView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    const/high16 v6, 0x41200000    # 10.0f

    add-float/2addr v5, v6

    .line 93
    iget-object v9, p0, Lcom/transsion/camera/feature/mode/armode/FaceDetectionView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v5, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 96
    iget-object v7, p0, Lcom/transsion/camera/feature/mode/armode/FaceDetectionView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    iget-object v10, p0, Lcom/transsion/camera/feature/mode/armode/FaceDetectionView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v4, v2, v9, v10}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 97
    iget-object v7, p0, Lcom/transsion/camera/feature/mode/armode/FaceDetectionView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v5, v7

    add-float/2addr v5, v6

    .line 98
    iget-object v6, p0, Lcom/transsion/camera/feature/mode/armode/FaceDetectionView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v8, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    if-ne v6, v4, :cond_2

    .line 100
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/armode/FaceDetectionView;->mFaceIndicatorNama:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 101
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/armode/FaceDetectionView;->mFaceIndicatorNama:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 105
    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
