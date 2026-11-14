.class public Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;
.super Landroid/view/View;
.source "ApertureProgressView.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mArcPaint:Landroid/graphics/Paint;

.field private mArcValueAnimator:Landroid/animation/ValueAnimator;

.field private mCurrentAngle:F

.field private mDisappearFlag:Z

.field private mOffset:I

.field private mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mRectF:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;->mDisappearFlag:Z

    .line 43
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;)F
    .locals 0

    .line 22
    iget p0, p0, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;->mCurrentAngle:F

    return p0
.end method

.method static synthetic access$002(Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;F)F
    .locals 0

    .line 22
    iput p1, p0, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;->mCurrentAngle:F

    return p1
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 22
    sget-object v0, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$202(Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;->mDisappearFlag:Z

    return p1
.end method

.method private init()V
    .locals 5

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;->mOffset:I

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;->mArcPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 58
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    iget-object v0, p0, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;->mArcPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    iget-object v0, p0, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;->mArcPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;->mOffset:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 61
    iget-object v0, p0, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;->mArcPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    iget-object v0, p0, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;->mArcPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 64
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 76
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 78
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;->mDisappearFlag:Z

    if-eqz v0, :cond_0

    .line 79
    iget-object v2, p0, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;->mRectF:Landroid/graphics/RectF;

    const/high16 v3, 0x41f00000    # 30.0f

    iget v4, p0, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;->mCurrentAngle:F

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;->mArcPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 80
    iget-object v8, p0, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;->mRectF:Landroid/graphics/RectF;

    const/high16 v9, 0x41f00000    # 30.0f

    iget v0, p0, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;->mCurrentAngle:F

    neg-float v10, v0

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;->mArcPaint:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 81
    iget-object v1, p0, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;->mRectF:Landroid/graphics/RectF;

    const/high16 v2, 0x43520000    # 210.0f

    iget v3, p0, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;->mCurrentAngle:F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;->mArcPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 82
    iget-object v7, p0, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;->mRectF:Landroid/graphics/RectF;

    const/high16 v8, 0x43520000    # 210.0f

    iget v0, p0, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;->mCurrentAngle:F

    neg-float v9, v0

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;->mArcPaint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;->mRectF:Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/high16 v3, 0x42700000    # 60.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;->mArcPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 86
    iget-object v7, p0, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;->mRectF:Landroid/graphics/RectF;

    const/high16 v8, 0x43340000    # 180.0f

    const/high16 v9, 0x42700000    # 60.0f

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;->mArcPaint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 71
    new-instance p1, Landroid/graphics/RectF;

    iget p2, p0, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;->mOffset:I

    int-to-float p3, p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p4

    iget v0, p0, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;->mOffset:I

    sub-int/2addr p4, v0

    int-to-float p4, p4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;->mOffset:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-direct {p1, p3, p2, p4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;->mRectF:Landroid/graphics/RectF;

    return-void
.end method

.method public startDrawAnim()V
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 92
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;->mArcValueAnimator:Landroid/animation/ValueAnimator;

    .line 93
    iget-object v2, p0, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 94
    iget-object v1, p0, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;->mArcValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView$1;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView$1;-><init>(Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 103
    iget-object v1, p0, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;->mArcValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView$2;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView$2;-><init>(Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v1, v0, [F

    .line 116
    fill-array-data v1, :array_1

    const-string v2, "alpha"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    .line 117
    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 118
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 120
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v5, 0xc8

    .line 121
    invoke-virtual {v1, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 122
    iget-object v1, p0, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v0, v0, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;->mArcValueAnimator:Landroid/animation/ValueAnimator;

    aput-object v3, v0, v4

    iget-object v3, p0, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 123
    iget-object p0, p0, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x41f00000    # 30.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public stopDrawAnim()V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object p0, p0, Lcom/transsion/camera/app/ui/aperture/ApertureProgressView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method
