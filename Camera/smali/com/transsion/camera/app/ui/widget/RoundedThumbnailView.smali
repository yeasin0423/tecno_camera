.class public Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;
.super Landroid/widget/ImageView;
.source "RoundedThumbnailView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# instance fields
.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private mRoundedBitmapShader:Landroid/graphics/BitmapShader;

.field private mRoundedMatrix:Landroid/graphics/Matrix;

.field private mRoundedPaint:Landroid/graphics/Paint;

.field private mRoundedRadius:F

.field private mRoundedRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07032a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedRadius:F

    return-void
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedBitmapShader:Landroid/graphics/BitmapShader;

    .line 101
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedRectF:Landroid/graphics/RectF;

    .line 102
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedMatrix:Landroid/graphics/Matrix;

    .line 103
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 104
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mBitmapWidth:I

    .line 105
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mBitmapHeight:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 81
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    .line 82
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    .line 83
    iget v3, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mBitmapWidth:I

    if-ne v3, v0, :cond_0

    iget v3, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mBitmapHeight:I

    if-eq v3, v2, :cond_1

    :cond_0
    int-to-float v0, v0

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v4, v0, v3

    .line 84
    iget v5, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mBitmapWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    int-to-float v2, v2

    mul-float/2addr v3, v2

    iget v5, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mBitmapHeight:I

    int-to-float v5, v5

    div-float/2addr v3, v5

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 85
    iget v4, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mBitmapWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    sub-float/2addr v4, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v4, v0

    float-to-int v4, v4

    .line 86
    iget v5, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mBitmapHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    sub-float/2addr v5, v2

    div-float/2addr v5, v0

    float-to-int v0, v5

    .line 87
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 88
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedMatrix:Landroid/graphics/Matrix;

    neg-int v3, v4

    int-to-float v3, v3

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 89
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 93
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedRadius:F

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 95
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 64
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    if-nez p1, :cond_0

    .line 67
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->reset()V

    goto :goto_0

    .line 69
    :cond_0
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedBitmapShader:Landroid/graphics/BitmapShader;

    .line 70
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedRectF:Landroid/graphics/RectF;

    .line 71
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedMatrix:Landroid/graphics/Matrix;

    .line 72
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedPaint:Landroid/graphics/Paint;

    .line 73
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mBitmapWidth:I

    .line 74
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mBitmapHeight:I

    :goto_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 58
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 59
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->reset()V

    return-void
.end method
