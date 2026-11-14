.class public Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;
.super Landroid/view/View;
.source "RecordingProgressView.java"


# instance fields
.field private final DST_OUT:Landroid/graphics/PorterDuffXfermode;

.field private mCurrentDuration:J

.field private mCurrentRotation:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPauseTime:J

.field private mPaused:Z

.field private mPausedDuration:J

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mRotateMatrix:Landroid/graphics/Matrix;

.field private mSVGPadding:F

.field private mStartTime:J

.field private mStarted:Z

.field private mStopped:Z

.field private mStrokeRectF:Landroid/graphics/RectF;

.field private mStrokeWidth:F

.field private mTotalDuration:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x40c00000    # 6.0f

    .line 26
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mStrokeWidth:F

    const/high16 p1, 0x40400000    # 3.0f

    .line 27
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mSVGPadding:F

    const/high16 p1, -0x40400000    # -1.5f

    .line 35
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mCurrentRotation:F

    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mStarted:Z

    .line 37
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mStopped:Z

    .line 38
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mPaused:Z

    .line 41
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->DST_OUT:Landroid/graphics/PorterDuffXfermode;

    .line 53
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->init()V

    return-void
.end method

.method private init()V
    .locals 4

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07035d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mStrokeWidth:F

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07035e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mSVGPadding:F

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    .line 60
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 61
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mStrokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 62
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mRotateMatrix:Landroid/graphics/Matrix;

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08044a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 66
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 79
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mStarted:Z

    const/4 v7, 0x0

    const-wide/16 v2, 0x0

    const/high16 v8, -0x40400000    # -1.5f

    const/4 v4, -0x1

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v9, 0x43b40000    # 360.0f

    if-eqz v1, :cond_4

    .line 80
    iget-wide v10, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mTotalDuration:J

    cmp-long v1, v10, v2

    if-nez v1, :cond_2

    .line 81
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 82
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 83
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 84
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mStartTime:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mPausedDuration:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mCurrentDuration:J

    long-to-float v1, v1

    const v2, 0x45bb8000    # 6000.0f

    div-float/2addr v1, v2

    mul-float/2addr v1, v9

    const/high16 v3, 0x42b40000    # 90.0f

    cmpl-float v4, v1, v3

    if-lez v4, :cond_0

    move v1, v3

    :cond_0
    cmpl-float v4, v1, v3

    if-nez v4, :cond_1

    .line 89
    iget-wide v11, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mCurrentDuration:J

    long-to-float v4, v11

    const v6, 0x44bb8000    # 1500.0f

    sub-float/2addr v4, v6

    div-float/2addr v4, v2

    mul-float/2addr v4, v9

    iput v4, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mCurrentRotation:F

    rem-float/2addr v4, v9

    .line 91
    iput v4, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mCurrentRotation:F

    goto :goto_0

    .line 93
    :cond_1
    iput v8, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mCurrentRotation:F

    .line 95
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mRotateMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mCurrentRotation:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v5

    invoke-virtual {v2, v4, v6, v8}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 96
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 97
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->DST_OUT:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 98
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mStrokeRectF:Landroid/graphics/RectF;

    sub-float v8, v1, v3

    sub-float v4, v9, v1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v3, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 99
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 100
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mStrokeRectF:Landroid/graphics/RectF;

    const/high16 v4, 0x40000000    # 2.0f

    iget-object v6, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 101
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 102
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mPaused:Z

    if-nez v1, :cond_a

    .line 103
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    goto/16 :goto_3

    .line 106
    :cond_2
    iget-wide v1, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mCurrentDuration:J

    long-to-float v1, v1

    long-to-float v2, v10

    div-float/2addr v1, v2

    mul-float/2addr v1, v9

    cmpl-float v2, v1, v9

    if-lez v2, :cond_3

    goto :goto_1

    :cond_3
    move v9, v1

    .line 108
    :goto_1
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 109
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mStrokeRectF:Landroid/graphics/RectF;

    const/high16 v3, -0x3d4c0000    # -90.0f

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v4, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 111
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    const v2, -0xff0100

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mStrokeRectF:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/high16 v3, 0x3fc00000    # 1.5f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 114
    :cond_4
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mStopped:Z

    const/4 v6, 0x0

    if-eqz v1, :cond_9

    .line 115
    iget-wide v10, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mTotalDuration:J

    cmp-long v1, v10, v2

    if-nez v1, :cond_8

    .line 116
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 117
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 118
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 119
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    iget v1, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mCurrentRotation:F

    const/high16 v2, 0x41100000    # 9.0f

    add-float/2addr v1, v2

    iput v1, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mCurrentRotation:F

    .line 121
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    invoke-virtual {v2, v1, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 122
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 123
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->DST_OUT:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v1, 0x0

    .line 126
    iget v2, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mCurrentRotation:F

    const v3, 0x4387c000    # 271.5f

    cmpl-float v3, v2, v3

    const/high16 v4, 0x43870000    # 270.0f

    if-ltz v3, :cond_5

    sub-float/2addr v4, v2

    sub-float/2addr v4, v8

    sub-float v1, v9, v4

    move v11, v4

    move v4, v1

    goto :goto_2

    :cond_5
    move v11, v1

    .line 130
    :goto_2
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mStrokeRectF:Landroid/graphics/RectF;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v3, v11

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 131
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    cmpl-float v1, v11, v8

    if-ltz v1, :cond_6

    .line 133
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mStrokeRectF:Landroid/graphics/RectF;

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v3, v11

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 135
    :cond_6
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 136
    iget v1, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mCurrentRotation:F

    cmpg-float v1, v1, v9

    if-gez v1, :cond_7

    .line 137
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    goto :goto_3

    .line 139
    :cond_7
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->reset()V

    goto :goto_3

    .line 142
    :cond_8
    invoke-virtual {p1, v6, v6, v6, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 143
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->gc()V

    .line 144
    iput-boolean v6, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mStopped:Z

    goto :goto_3

    .line 147
    :cond_9
    invoke-virtual {p1, v6, v6, v6, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 148
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->gc()V

    .line 149
    iput-boolean v6, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mStopped:Z

    :cond_a
    :goto_3
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    .line 71
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 72
    new-instance p1, Landroid/graphics/RectF;

    iget p2, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mStrokeWidth:F

    const/high16 p3, 0x40000000    # 2.0f

    div-float p4, p2, p3

    iget v0, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mSVGPadding:F

    add-float/2addr p4, v0

    div-float/2addr p2, p3

    add-float/2addr p2, v0

    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mStrokeWidth:F

    div-float/2addr v1, p3

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mSVGPadding:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mStrokeWidth:F

    div-float/2addr v2, p3

    sub-float/2addr v1, v2

    iget p3, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mSVGPadding:F

    sub-float/2addr v1, p3

    invoke-direct {p1, p4, p2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mStrokeRectF:Landroid/graphics/RectF;

    .line 74
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p2, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public pause(Z)V
    .locals 6

    .line 186
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mPaused:Z

    if-eqz p1, :cond_0

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mPauseTime:J

    goto :goto_0

    .line 190
    :cond_0
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mPausedDuration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mPauseTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mPausedDuration:J

    .line 192
    :goto_0
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mTotalDuration:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    .line 193
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 5

    const/4 v0, 0x0

    .line 198
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mStarted:Z

    .line 199
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mPaused:Z

    .line 200
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mStopped:Z

    const-wide/16 v0, 0x0

    .line 201
    iput-wide v0, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mCurrentDuration:J

    const/high16 v2, -0x40400000    # -1.5f

    .line 202
    iput v2, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mCurrentRotation:F

    .line 203
    iput-wide v0, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mPausedDuration:J

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {v0, v2, v1, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 205
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 206
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->gc()V

    return-void
.end method

.method public setCurrentDuration(J)Z
    .locals 4

    .line 158
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mTotalDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 159
    :cond_0
    iput-wide p1, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mCurrentDuration:J

    .line 160
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 161
    iget-wide p1, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mCurrentDuration:J

    iget-wide v2, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mTotalDuration:J

    cmp-long p0, p1, v2

    if-ltz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public setTotalDuration(J)V
    .locals 0

    .line 154
    iput-wide p1, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mTotalDuration:J

    return-void
.end method

.method public start()V
    .locals 5

    const/4 v0, 0x1

    .line 165
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mStarted:Z

    const-wide/16 v0, 0x0

    .line 166
    iput-wide v0, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mCurrentDuration:J

    const/high16 v2, -0x40400000    # -1.5f

    .line 167
    iput v2, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mCurrentRotation:F

    .line 168
    iput-wide v0, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mPausedDuration:J

    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mStartTime:J

    .line 170
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mRotateMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mCurrentRotation:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {v0, v1, v2, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 171
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 175
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mStarted:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mStopped:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 176
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mStarted:Z

    .line 177
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mPaused:Z

    const/4 v0, 0x1

    .line 178
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mStopped:Z

    .line 179
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mCurrentRotation:F

    const/high16 v1, 0x43870000    # 270.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    const/high16 v1, 0x43b40000    # 360.0f

    sub-float/2addr v0, v1

    .line 180
    iput v0, p0, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->mCurrentRotation:F

    .line 182
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_2
    :goto_0
    return-void
.end method
