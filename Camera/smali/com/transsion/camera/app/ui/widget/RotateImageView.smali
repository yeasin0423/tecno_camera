.class public Lcom/transsion/camera/app/ui/widget/RotateImageView;
.super Landroid/widget/ImageView;
.source "RotateImageView.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/IRotatable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAnimationEndTime:J

.field private mAnimationStartTime:J

.field private mClockwise:Z

.field private mCurrentDegree:I

.field private mDrawableBitmap:Landroid/graphics/Bitmap;

.field private mEnableAnimation:Z

.field private mStartDegree:I

.field private mTargetDegree:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/widget/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/camera/app/ui/widget/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 37
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mCurrentDegree:I

    .line 38
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mStartDegree:I

    .line 39
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mTargetDegree:I

    .line 41
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mClockwise:Z

    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mEnableAnimation:Z

    const-wide/16 p1, 0x0

    .line 44
    iput-wide p1, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mAnimationStartTime:J

    .line 45
    iput-wide p1, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mAnimationEndTime:J

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .line 165
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 166
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mDrawableBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 168
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mDrawableBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 102
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 108
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 109
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    .line 110
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v1

    if-eqz v2, :cond_a

    if-nez v3, :cond_1

    goto/16 :goto_4

    .line 116
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-ne v1, v4, :cond_2

    instance-of v1, v0, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v1, :cond_2

    .line 117
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 118
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 117
    invoke-static {v1, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mDrawableBitmap:Landroid/graphics/Bitmap;

    .line 119
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mDrawableBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 120
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 121
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 124
    :cond_2
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mCurrentDegree:I

    iget v4, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mTargetDegree:I

    if-eq v1, v4, :cond_6

    .line 125
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 126
    iget-wide v6, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mAnimationEndTime:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_5

    .line 127
    iget-wide v6, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mAnimationStartTime:J

    sub-long/2addr v4, v6

    long-to-int v1, v4

    .line 128
    iget v4, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mStartDegree:I

    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mClockwise:Z

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    neg-int v1, v1

    :goto_0
    mul-int/lit16 v1, v1, 0x10e

    div-int/lit16 v1, v1, 0x3e8

    add-int/2addr v4, v1

    if-ltz v4, :cond_4

    .line 130
    rem-int/lit16 v4, v4, 0x168

    goto :goto_1

    :cond_4
    rem-int/lit16 v4, v4, 0x168

    add-int/lit16 v4, v4, 0x168

    .line 131
    :goto_1
    iput v4, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mCurrentDegree:I

    .line 132
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_2

    .line 134
    :cond_5
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mTargetDegree:I

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mCurrentDegree:I

    .line 138
    :cond_6
    :goto_2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    .line 139
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v4

    .line 140
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v5

    .line 141
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v6

    .line 142
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    sub-int/2addr v7, v1

    sub-int/2addr v7, v5

    .line 143
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v4

    sub-int/2addr v5, v6

    .line 145
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v6

    .line 148
    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v8

    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v8, v9, :cond_8

    if-lt v7, v2, :cond_7

    if-ge v5, v3, :cond_8

    :cond_7
    int-to-float v8, v7

    int-to-float v9, v2

    div-float v9, v8, v9

    int-to-float v10, v5

    int-to-float v11, v3

    div-float v11, v10, v11

    .line 149
    invoke-static {v9, v11}, Ljava/lang/Math;->min(FF)F

    move-result v9

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v8, v11

    div-float/2addr v10, v11

    .line 150
    invoke-virtual {p1, v9, v9, v8, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 152
    :cond_8
    div-int/lit8 v7, v7, 0x2

    add-int/2addr v1, v7

    int-to-float v1, v1

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 153
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mCurrentDegree:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v1, v2

    .line 154
    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    neg-int v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 155
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mDrawableBitmap:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_9

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 156
    invoke-virtual {p1, p0, v1, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 158
    :cond_9
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 160
    :goto_3
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_a
    :goto_4
    return-void
.end method

.method public onScreenStateChanged(I)V
    .locals 2

    .line 174
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onScreenStateChanged(I)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 176
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 177
    sget-object p1, Lcom/transsion/camera/app/ui/widget/RotateImageView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScreenStateChanged this : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 2

    .line 72
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mEnableAnimation:Z

    if-ltz p1, :cond_0

    .line 74
    rem-int/lit16 p1, p1, 0x168

    goto :goto_0

    :cond_0
    rem-int/lit16 p1, p1, 0x168

    add-int/lit16 p1, p1, 0x168

    .line 75
    :goto_0
    iget p2, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mTargetDegree:I

    if-ne p1, p2, :cond_1

    return-void

    .line 79
    :cond_1
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mTargetDegree:I

    .line 80
    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mEnableAnimation:Z

    if-eqz p2, :cond_5

    .line 81
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mCurrentDegree:I

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mStartDegree:I

    .line 82
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mAnimationStartTime:J

    .line 84
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mTargetDegree:I

    iget p2, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mCurrentDegree:I

    sub-int/2addr p1, p2

    if-ltz p1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit16 p1, p1, 0x168

    :goto_1
    const/16 p2, 0xb4

    if-le p1, p2, :cond_3

    add-int/lit16 p1, p1, -0x168

    :cond_3
    if-ltz p1, :cond_4

    const/4 p2, 0x1

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    .line 91
    :goto_2
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mClockwise:Z

    .line 92
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mAnimationStartTime:J

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    div-int/lit16 p1, p1, 0x10e

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mAnimationEndTime:J

    goto :goto_3

    .line 94
    :cond_5
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mCurrentDegree:I

    .line 97
    :goto_3
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
