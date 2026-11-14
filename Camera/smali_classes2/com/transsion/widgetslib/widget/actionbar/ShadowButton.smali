.class public Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;
.super Landroid/widget/ImageButton;
.source "ShadowButton.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# instance fields
.field private mBgInset:F

.field private mBgWidth:I

.field private mIsMultiWin:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mShadowColor:I

.field private mShadowRadius:F

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v1, v0

    .line 48
    iput v1, p0, Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;->mShadowRadius:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    .line 49
    iput v1, p0, Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;->mBgInset:F

    .line 51
    sget-object v1, Lcom/transsion/widgetslib/R$styleable;->osFloatButton:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 52
    sget p2, Lcom/transsion/widgetslib/R$styleable;->osFloatButton_fbshadowRadius:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;->mShadowRadius:F

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    sub-float/2addr p2, v0

    iput p2, p0, Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;->mShadowRadius:F

    .line 53
    sget p2, Lcom/transsion/widgetslib/R$styleable;->osFloatButton_fbshadowColor:I

    const v0, 0x6603a9f4

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;->mShadowColor:I

    .line 54
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;->mBgWidth:I

    :cond_0
    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 64
    invoke-virtual {p0, p2, p1}, Landroid/widget/ImageButton;->setLayerType(ILandroid/graphics/Paint;)V

    .line 66
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;->mPaint:Landroid/graphics/Paint;

    .line 67
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 68
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 69
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    .line 70
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 72
    :cond_1
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    :goto_0
    iget p1, p0, Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;->mShadowRadius:F

    iget p2, p0, Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;->mShadowColor:I

    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;->initShadowPaint(FI)V

    return-void
.end method

.method private initShadowPaint(FI)V
    .locals 1

    .line 140
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p1, p2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 114
    iget v0, p0, Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;->mBgWidth:I

    div-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 115
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 95
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 96
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 97
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;->mIsMultiWin:Z

    if-eqz v0, :cond_0

    int-to-float p1, p1

    const/high16 v0, 0x3f400000    # 0.75f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    int-to-double v0, p2

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v0, v2

    double-to-int p2, v0

    .line 98
    invoke-virtual {p0, p1, p2}, Landroid/widget/ImageButton;->setMeasuredDimension(II)V

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/widget/ImageButton;->setMeasuredDimension(II)V

    :goto_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageButton;->onSizeChanged(IIII)V

    if-lez p1, :cond_0

    .line 81
    iput p1, p0, Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;->mWidth:I

    iput p1, p0, Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;->mBgWidth:I

    int-to-float p1, p1

    .line 83
    iget p2, p0, Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;->mBgInset:F

    const/high16 p3, 0x40000000    # 2.0f

    mul-float/2addr p2, p3

    sub-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;->mBgWidth:I

    :cond_0
    return-void
.end method
