.class public Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;
.super Landroidx/appcompat/widget/AppCompatSeekBar;
.source "VerticalSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar$IProgressCalculator;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mDefaultProgressCalculator:Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar$IProgressCalculator;

.field private mIsProcessDrawableTranslate:Z

.field private mListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mProgressCalculator:Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar$IProgressCalculator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;->mIsProcessDrawableTranslate:Z

    .line 19
    sget-object p1, Lcom/transsion/camera/ui/setting/exposure/-$$Lambda$VerticalSeekBar$K7ILcLyImIiH9exfNy3wNfdbPD4;->INSTANCE:Lcom/transsion/camera/ui/setting/exposure/-$$Lambda$VerticalSeekBar$K7ILcLyImIiH9exfNy3wNfdbPD4;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;->mDefaultProgressCalculator:Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar$IProgressCalculator;

    .line 20
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;->mProgressCalculator:Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar$IProgressCalculator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;->mIsProcessDrawableTranslate:Z

    .line 19
    sget-object p1, Lcom/transsion/camera/ui/setting/exposure/-$$Lambda$VerticalSeekBar$K7ILcLyImIiH9exfNy3wNfdbPD4;->INSTANCE:Lcom/transsion/camera/ui/setting/exposure/-$$Lambda$VerticalSeekBar$K7ILcLyImIiH9exfNy3wNfdbPD4;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;->mDefaultProgressCalculator:Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar$IProgressCalculator;

    .line 20
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;->mProgressCalculator:Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar$IProgressCalculator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;->mIsProcessDrawableTranslate:Z

    .line 19
    sget-object p1, Lcom/transsion/camera/ui/setting/exposure/-$$Lambda$VerticalSeekBar$K7ILcLyImIiH9exfNy3wNfdbPD4;->INSTANCE:Lcom/transsion/camera/ui/setting/exposure/-$$Lambda$VerticalSeekBar$K7ILcLyImIiH9exfNy3wNfdbPD4;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;->mDefaultProgressCalculator:Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar$IProgressCalculator;

    .line 20
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;->mProgressCalculator:Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar$IProgressCalculator;

    return-void
.end method

.method static synthetic lambda$new$0(IIFI)I
    .locals 0

    sub-int p0, p1, p0

    int-to-float p0, p0

    mul-float/2addr p0, p2

    int-to-float p2, p3

    div-float/2addr p0, p2

    float-to-int p0, p0

    sub-int/2addr p1, p0

    return p1
.end method


# virtual methods
.method public isProcessDrawableTranslate()Z
    .locals 0

    .line 121
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;->mIsProcessDrawableTranslate:Z

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    const/high16 v0, -0x3d4c0000    # -90.0f

    .line 72
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 73
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 74
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 68
    invoke-super/range {p0 .. p5}, Landroid/widget/SeekBar;->onLayout(ZIIII)V

    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 1

    monitor-enter p0

    .line 58
    :try_start_0
    invoke-super {p0, p2, p1}, Landroid/widget/SeekBar;->onMeasure(II)V

    .line 59
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/SeekBar;->setMeasuredDimension(II)V

    .line 63
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMeasuredHeight()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;->onSizeChanged(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 47
    invoke-super {p0, p2, p1, p4, p3}, Landroid/widget/SeekBar;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 79
    invoke-virtual {p0}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 82
    :cond_0
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;->setProgressDrawableTranslate(Z)V

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;->mProgressCalculator:Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar$IProgressCalculator;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMin()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getHeight()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar$IProgressCalculator;->calculateProgress(IIFI)I

    move-result v0

    .line 85
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;->setProgress(I)V

    .line 93
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;->mListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_4

    .line 94
    invoke-interface {p1, p0, v0, v1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    goto :goto_0

    .line 98
    :cond_2
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;->setProgress(I)V

    .line 99
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;->mListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_4

    .line 100
    invoke-interface {p1, p0, v0, v1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 101
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;->mListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {p1, p0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    goto :goto_0

    .line 87
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;->mListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_4

    .line 88
    invoke-interface {p1, p0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_4
    :goto_0
    return v1
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0

    .line 126
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 127
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;->mListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 2

    monitor-enter p0

    .line 52
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 53
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;->onSizeChanged(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setProgressDrawableTranslate(Z)V
    .locals 3

    .line 113
    sget-object v0, Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProgressDrawableTranslate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 114
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;->mIsProcessDrawableTranslate:Z

    .line 115
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 116
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0xff

    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    return-void
.end method

.method public updateProgressCalculator(Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar$IProgressCalculator;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 28
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;->mProgressCalculator:Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar$IProgressCalculator;

    goto :goto_0

    .line 30
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;->mDefaultProgressCalculator:Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar$IProgressCalculator;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;->mProgressCalculator:Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar$IProgressCalculator;

    :goto_0
    return-void
.end method
