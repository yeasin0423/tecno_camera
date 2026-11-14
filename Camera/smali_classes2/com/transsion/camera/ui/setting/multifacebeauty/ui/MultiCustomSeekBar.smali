.class public Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;
.super Landroid/view/View;
.source "MultiCustomSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar$OnSeekBarChangeListener;
    }
.end annotation


# instance fields
.field private mBetweenTextAndThumb:I

.field private mIsBeingDragged:Z

.field private mLastMotionX:F

.field private mListener:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar$OnSeekBarChangeListener;

.field private mNeedToDrawOptimalDrawable:Z

.field private mOptimalDotDrawable:Landroid/graphics/drawable/Drawable;

.field private mOptimalDotHeight:I

.field private mOptimalDotWidth:I

.field private mOptimalProgress:I

.field private mProgress:I

.field private mProgressMax:I

.field private mProgressMin:I

.field private mProgressRange:I

.field private final mRunnable:Ljava/lang/Runnable;

.field private mSeekBarLineHalfHeight:F

.field private mSeekBarLineHeight:I

.field private mSeekBarPrimaryDrawable:Landroid/graphics/drawable/Drawable;

.field private mSeekBarSecondaryDrawable:Landroid/graphics/drawable/Drawable;

.field private mShowProgressText:Z

.field private mTextBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mTextBgHeight:I

.field private mTextBgWidth:I

.field private mTextColor:I

.field private mTextColorShadowColor:I

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSize:F

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbHalfHeight:F

.field private mThumbHeight:I

.field private mThumbWidth:I

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mIsBeingDragged:Z

    .line 54
    new-instance p1, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar$1;-><init>(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 49
    iput-boolean p2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mIsBeingDragged:Z

    .line 54
    new-instance v0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar$1;-><init>(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mRunnable:Ljava/lang/Runnable;

    .line 77
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mTouchSlop:I

    const v0, 0x7f080431

    .line 79
    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f080456

    .line 80
    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mOptimalDotDrawable:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f080459

    .line 81
    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mTextBgDrawable:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f080458

    .line 82
    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mSeekBarSecondaryDrawable:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f080457

    .line 84
    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mSeekBarPrimaryDrawable:Landroid/graphics/drawable/Drawable;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mBetweenTextAndThumb:I

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mOptimalDotWidth:I

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mOptimalDotHeight:I

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mSeekBarLineHeight:I

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mTextBgWidth:I

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mTextBgHeight:I

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702f6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mThumbWidth:I

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mThumbHeight:I

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mTextSize:F

    .line 101
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const v0, 0x7f0601bf

    .line 102
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mTextColor:I

    const v0, 0x7f0601c0

    .line 103
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mTextColorShadowColor:I

    .line 105
    :cond_0
    iget p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mThumbHeight:I

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mThumbHalfHeight:F

    .line 106
    iget p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mSeekBarLineHeight:I

    int-to-float p1, p1

    div-float/2addr p1, v0

    iput p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mSeekBarLineHalfHeight:F

    .line 107
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mTextPaint:Landroid/graphics/Paint;

    .line 108
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 109
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x41000000    # 8.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 110
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mTextPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mTextSize:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 111
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mTextPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 112
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mTextPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 113
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mTextPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mTextColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mTextPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mTextColorShadowColor:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    const/16 p1, 0x64

    const/16 v0, -0x64

    .line 115
    invoke-virtual {p0, p1, v0, p2, p2}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->setRange(IIII)V

    return-void
.end method

.method static synthetic access$002(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mShowProgressText:Z

    return p1
.end method

.method private attemptClaimDrag()V
    .locals 1

    .line 208
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private computePositionByProgress(I)Landroid/graphics/PointF;
    .locals 2

    .line 281
    iget v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mProgressRange:I

    if-lez v0, :cond_3

    iget v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mProgressMax:I

    if-gt p1, v1, :cond_3

    iget v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mProgressMin:I

    if-ge p1, v1, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr p1, v1

    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 286
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    .line 287
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v0, p1

    .line 288
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    iget v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mThumbHalfHeight:F

    sub-float/2addr p1, v1

    iget v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mSeekBarLineHalfHeight:F

    sub-float/2addr p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p1, p0

    const/4 p0, 0x0

    cmpg-float v1, v0, p0

    if-gez v1, :cond_1

    move v0, p0

    :cond_1
    cmpg-float v1, p1, p0

    if-gez v1, :cond_2

    move p1, p0

    .line 295
    :cond_2
    new-instance p0, Landroid/graphics/PointF;

    invoke-direct {p0, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private drawOptimalIndicator(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V
    .locals 4

    .line 329
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mNeedToDrawOptimalDrawable:Z

    if-eqz v0, :cond_0

    .line 330
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mOptimalDotWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 331
    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mOptimalDotHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr p2, v1

    iget v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mSeekBarLineHalfHeight:F

    add-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 332
    iget v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mOptimalDotWidth:I

    add-int/2addr v1, v0

    .line 333
    iget v2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mOptimalDotHeight:I

    add-int/2addr v2, p2

    .line 334
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v0, p2, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 335
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mOptimalDotDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 336
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mOptimalDotDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method private drawProgress(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 4

    .line 299
    iget v0, p3, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    .line 300
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 303
    iget v2, p3, Landroid/graphics/PointF;->y:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 304
    iget v3, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mSeekBarLineHeight:I

    add-int/2addr v3, v2

    if-gez v1, :cond_0

    .line 306
    iget p2, p3, Landroid/graphics/PointF;->x:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 307
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p3

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    goto :goto_0

    .line 309
    :cond_0
    iget p2, p2, Landroid/graphics/PointF;->x:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 310
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p3

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    :goto_0
    add-int/2addr p3, p2

    .line 312
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2, v2, p3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 313
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mSeekBarPrimaryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 314
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mSeekBarPrimaryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawProgressBackGround(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V
    .locals 4

    .line 318
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 319
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 320
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 321
    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 322
    iget v2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mSeekBarLineHeight:I

    add-int/2addr v2, p2

    .line 323
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v1, p2, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 324
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mSeekBarSecondaryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 325
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mSeekBarSecondaryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V
    .locals 5

    .line 351
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mShowProgressText:Z

    if-nez v0, :cond_0

    return-void

    .line 354
    :cond_0
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mTextBgWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 356
    :goto_0
    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mThumbHalfHeight:F

    sub-float/2addr p2, v1

    iget v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mBetweenTextAndThumb:I

    int-to-float v1, v1

    sub-float/2addr p2, v1

    iget v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mTextBgHeight:I

    int-to-float v1, v1

    sub-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 357
    iget v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mTextBgWidth:I

    add-int/2addr v1, v0

    .line 358
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    if-ge v1, v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 359
    :goto_1
    iget v3, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mTextBgHeight:I

    add-int/2addr v3, p2

    .line 360
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v0, p2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 361
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mTextBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 362
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mTextBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 363
    iget p2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mProgress:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 364
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 365
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v0, v1, v0

    div-float/2addr v0, v2

    sub-float/2addr v0, v1

    .line 366
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    .line 367
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawThumb(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V
    .locals 4

    .line 341
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mThumbWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 342
    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mThumbHalfHeight:F

    sub-float/2addr p2, v1

    iget v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mSeekBarLineHalfHeight:F

    add-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 343
    iget v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mThumbWidth:I

    add-int/2addr v1, v0

    .line 344
    iget v2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mThumbHeight:I

    add-int/2addr v2, p2

    .line 345
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v0, p2, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 346
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 347
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private isInRange(I)Z
    .locals 2

    .line 240
    iget v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mProgressRange:I

    const/4 v1, 0x0

    if-lez v0, :cond_2

    iget v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mProgressMax:I

    if-gt p1, v0, :cond_2

    iget v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mProgressMin:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    .line 243
    :cond_0
    iget p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mProgress:I

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method private startDelayHideProgressText()V
    .locals 3

    .line 201
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 203
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private startDrag(Landroid/view/MotionEvent;)V
    .locals 1

    const/4 v0, 0x1

    .line 173
    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 175
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->onStartTrackingTouch()V

    .line 181
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 182
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->attemptClaimDrag()V

    return-void
.end method

.method private startShowProgressText()V
    .locals 1

    const/4 v0, 0x1

    .line 186
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mShowProgressText:Z

    .line 187
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 4

    .line 371
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 372
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 373
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    .line 374
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 377
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    const/4 v3, 0x0

    if-ge v0, v2, :cond_0

    move p1, v3

    goto :goto_0

    .line 379
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr p1, v2

    if-le v0, p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 382
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    sub-int/2addr v0, p1

    int-to-float p1, v0

    int-to-float v0, v1

    div-float/2addr p1, v0

    .line 384
    :goto_0
    iget v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mProgressRange:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mProgressMin:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    add-float/2addr p1, v3

    .line 385
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->setProgress(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 265
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 267
    iget v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mProgress:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->computePositionByProgress(I)Landroid/graphics/PointF;

    move-result-object v0

    .line 268
    iget v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mOptimalProgress:I

    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->computePositionByProgress(I)Landroid/graphics/PointF;

    move-result-object v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 272
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->drawProgressBackGround(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V

    .line 274
    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->drawProgress(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 275
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->drawOptimalIndicator(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V

    .line 276
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->drawThumb(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V

    .line 277
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->drawText(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 257
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    const/4 v0, 0x0

    .line 258
    invoke-static {v0, p1, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    .line 259
    invoke-static {v0, p2, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    .line 260
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    const/4 v0, 0x1

    .line 197
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mIsBeingDragged:Z

    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    const/4 v0, 0x0

    .line 193
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mIsBeingDragged:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 121
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 124
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    if-eq v0, v2, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto :goto_1

    .line 161
    :cond_1
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mIsBeingDragged:Z

    if-eqz p1, :cond_2

    .line 162
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->onStopTrackingTouch()V

    .line 163
    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 165
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    .line 131
    :cond_3
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mIsBeingDragged:Z

    if-eqz v0, :cond_4

    .line 132
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 134
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 135
    iget v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mLastMotionX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    .line 136
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->startDrag(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 142
    :cond_5
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mIsBeingDragged:Z

    if-eqz v0, :cond_6

    .line 143
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 144
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->onStopTrackingTouch()V

    .line 145
    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 149
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->onStartTrackingTouch()V

    .line 150
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 151
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->onStopTrackingTouch()V

    .line 153
    :goto_0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->startDelayHideProgressText()V

    .line 157
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    .line 126
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mLastMotionX:F

    .line 127
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->startDrag(Landroid/view/MotionEvent;)V

    .line 128
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->startShowProgressText()V

    :cond_8
    :goto_1
    return v2
.end method

.method public setOnSeekBarChangeListener(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar$OnSeekBarChangeListener;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mListener:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method public setProgress(I)V
    .locals 2

    .line 230
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->isInRange(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    iput p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mProgress:I

    .line 232
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mListener:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 233
    invoke-interface {v0, p1, v1}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar$OnSeekBarChangeListener;->onProgressChanged(IZ)V

    .line 235
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setRange(IIII)V
    .locals 0

    .line 214
    iput p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mProgressMax:I

    .line 215
    iput p2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mProgressMin:I

    .line 216
    iput p3, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mOptimalProgress:I

    .line 217
    iput p4, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mProgress:I

    const-string p4, "ll"

    if-le p3, p2, :cond_0

    if-ge p3, p1, :cond_0

    .line 219
    new-instance p3, Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-direct {p3, p4}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    const-string p4, "setRangetrue"

    invoke-static {p3, p4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 220
    iput-boolean p3, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mNeedToDrawOptimalDrawable:Z

    goto :goto_0

    .line 222
    :cond_0
    new-instance p3, Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-direct {p3, p4}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    const-string p4, "setRangefalse"

    invoke-static {p3, p4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 223
    iput-boolean p3, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mNeedToDrawOptimalDrawable:Z

    :goto_0
    sub-int/2addr p1, p2

    .line 225
    iput p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->mProgressRange:I

    .line 226
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public updateSeekBarData(IIII)V
    .locals 0

    .line 250
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->startShowProgressText()V

    .line 251
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->startDelayHideProgressText()V

    .line 252
    invoke-virtual {p0, p2, p3, p4, p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->setRange(IIII)V

    return-void
.end method
