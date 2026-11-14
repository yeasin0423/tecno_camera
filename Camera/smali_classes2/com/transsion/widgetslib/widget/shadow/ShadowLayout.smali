.class public Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;
.super Landroid/widget/FrameLayout;
.source "ShadowLayout.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mPaint:Landroid/graphics/Paint;

.field private mShadowBg:Landroid/graphics/Bitmap;

.field private mShadowBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mShadowColor:I

.field private mShadowDistance:F

.field private mShadowRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    new-instance p3, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->mPaint:Landroid/graphics/Paint;

    .line 56
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->mContext:Landroid/content/Context;

    const/4 p3, 0x0

    .line 57
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 58
    iget-object p3, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, p3}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 61
    sget-object p3, Lcom/transsion/widgetslib/R$styleable;->ShadowLayout:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/high16 p3, 0x41200000    # 10.0f

    .line 64
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 63
    invoke-static {v0, p3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    .line 65
    sget v1, Lcom/transsion/widgetslib/R$styleable;->ShadowLayout_os_shadow_radius:I

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->setShadowRadius(F)V

    const p3, 0x40533333    # 3.3f

    .line 68
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 67
    invoke-static {v0, p3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    .line 69
    sget v0, Lcom/transsion/widgetslib/R$styleable;->ShadowLayout_os_shadow_distance:I

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->setShadowDistance(F)V

    .line 71
    sget p3, Lcom/transsion/widgetslib/R$drawable;->img_shadow:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->mShadowBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 72
    sget p1, Lcom/transsion/widgetslib/R$styleable;->ShadowLayout_os_shadow_color:I

    const p3, -0x7f777778

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->setShadowColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 75
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :goto_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :goto_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    throw p0
.end method

.method private resetShadow()V
    .locals 2

    .line 136
    iget v0, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->mShadowDistance:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->mShadowRadius:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 137
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 138
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->mShadowBg:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 148
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 84
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 86
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->mShadowBg:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->mShadowBg:Landroid/graphics/Bitmap;

    .line 89
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->mShadowBgDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method public setShadowColor(I)V
    .locals 4

    .line 122
    iput p1, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->mShadowColor:I

    .line 124
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->mShadowBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 125
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->mShadowBg:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 126
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 128
    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->mShadowBgDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->mShadowDistance:F

    iget v2, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->mShadowRadius:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_fab_default_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 128
    invoke-static {p1, v0, v1}, Lcom/transsion/widgetslib/util/Utils;->compressBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->mShadowBg:Landroid/graphics/Bitmap;

    .line 130
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->resetShadow()V

    return-void
.end method

.method public setShadowDistance(F)V
    .locals 0

    .line 98
    iput p1, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->mShadowDistance:F

    .line 99
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->resetShadow()V

    return-void
.end method

.method public setShadowRadius(F)V
    .locals 1

    const v0, 0x3dcccccd    # 0.1f

    .line 107
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->mShadowRadius:F

    .line 109
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 114
    :cond_0
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->resetShadow()V

    return-void
.end method
