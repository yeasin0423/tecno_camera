.class public Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;
.super Landroid/widget/FrameLayout;
.source "FloatingOvalButton.java"


# instance fields
.field private mCurrentScale:F

.field private mDefaultImageSize:F

.field private mImgView:Landroid/widget/ImageView;

.field private mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mPressAnimator:Landroid/animation/ValueAnimator;

.field private mShadowLayout:Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;

.field private mUnPressAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 42
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 44
    new-instance v1, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;

    invoke-direct {v1, p1, p2}, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->mShadowLayout:Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;

    .line 45
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->mImgView:Landroid/widget/ImageView;

    .line 46
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->mShadowLayout:Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 47
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->mShadowLayout:Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_fab_default_image_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->mDefaultImageSize:F

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_fab_default_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x3

    new-array v2, v2, [I

    .line 52
    sget v3, Lcom/transsion/widgetslib/R$attr;->os_platform_basic_color:I

    const/4 v4, 0x0

    aput v3, v2, v4

    sget v3, Lcom/transsion/widgetslib/R$attr;->os_fab_bg_pressed_color:I

    aput v3, v2, v0

    sget v3, Lcom/transsion/widgetslib/R$attr;->os_fab_shadow_color:I

    const/4 v5, 0x2

    aput v3, v2, v5

    .line 53
    invoke-virtual {p1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 54
    sget v3, Lcom/transsion/widgetslib/R$color;->os_platform_basic_color_hios:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 55
    sget v4, Lcom/transsion/widgetslib/R$color;->os_fab_bg_pressed_color_hios:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 56
    sget v4, Lcom/transsion/widgetslib/R$color;->os_fab_shadow_color_hios:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v5, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 57
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    sget-object v2, Lcom/transsion/widgetslib/R$styleable;->FloatingOvalButton:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 60
    sget p2, Lcom/transsion/widgetslib/R$styleable;->FloatingOvalButton_float_image_width:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    .line 62
    sget v2, Lcom/transsion/widgetslib/R$styleable;->FloatingOvalButton_float_image_height:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 64
    sget v2, Lcom/transsion/widgetslib/R$styleable;->FloatingOvalButton_float_image_src:I

    .line 65
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 66
    sget v5, Lcom/transsion/widgetslib/R$styleable;->FloatingOvalButton_float_image_background_color:I

    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 68
    sget v5, Lcom/transsion/widgetslib/R$styleable;->FloatingOvalButton_float_image_background_pressed_color:I

    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 70
    sget v5, Lcom/transsion/widgetslib/R$styleable;->FloatingOvalButton_float_image_shadow_color:I

    invoke-virtual {p1, v5, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 72
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    float-to-int p2, p2

    .line 75
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    float-to-int p2, v1

    .line 76
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 77
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    invoke-virtual {p0, v3, v0}, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->setImageBackgroundColor(II)V

    .line 82
    invoke-virtual {p0, v4}, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->setShadowColor(I)V

    .line 83
    iget p1, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->mDefaultImageSize:F

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->setImagePadding(F)V

    .line 85
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const p2, 0x3ee66666    # 0.45f

    const/4 v0, 0x0

    const v1, 0x3f0ccccd    # 0.55f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, v0, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;)F
    .locals 0

    .line 26
    iget p0, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->mCurrentScale:F

    return p0
.end method

.method static synthetic access$002(Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;F)F
    .locals 0

    .line 26
    iput p1, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->mCurrentScale:F

    return p1
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;)Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->mShadowLayout:Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;

    return-object p0
.end method

.method private startPressAnimator()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 174
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->mPressAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    .line 175
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 176
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->mPressAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 177
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->mPressAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton$1;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton$1;-><init>(Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 186
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->mPressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data
.end method

.method private startUnPressAnimator()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 196
    iget v1, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->mCurrentScale:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->mUnPressAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    .line 197
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 198
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->mUnPressAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 199
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->mUnPressAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton$2;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton$2;-><init>(Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 208
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->mUnPressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private stopPressAnimator()V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->mPressAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->mPressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 160
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->stopPressAnimator()V

    .line 167
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->startUnPressAnimator()V

    goto :goto_0

    .line 162
    :cond_1
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->startPressAnimator()V

    .line 170
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setImageBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageBackgroundColor(II)V
    .locals 7

    .line 109
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$drawable;->os_floating_ova_btn_bg:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [[I

    const/4 v3, 0x1

    new-array v4, v3, [I

    const v5, 0x10100a7

    const/4 v6, 0x0

    aput v5, v4, v6

    aput-object v4, v2, v6

    new-array v4, v6, [I

    aput-object v4, v2, v3

    new-array v1, v1, [I

    aput p2, v1, v6

    aput p1, v1, v3

    .line 114
    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 115
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->setImageBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImagePadding(F)V
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 133
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float v1, v1

    sub-float/2addr v1, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 134
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    div-float/2addr v0, v2

    float-to-int p1, v0

    .line 135
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, p1, v1, p1}, Landroid/widget/ImageView;->setPadding(IIII)V

    return-void
.end method

.method public setShadowColor(I)V
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->mShadowLayout:Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->setShadowColor(I)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    if-eqz p1, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->mShadowLayout:Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 152
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 147
    :cond_1
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->mShadowLayout:Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 148
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->mShadowLayout:Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 155
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
