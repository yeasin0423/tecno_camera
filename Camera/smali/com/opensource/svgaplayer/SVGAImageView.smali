.class public Lcom/opensource/svgaplayer/SVGAImageView;
.super Landroid/widget/ImageView;
.source "SVGAImageView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opensource/svgaplayer/SVGAImageView$FillMode;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSVGAImageView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SVGAImageView.kt\ncom/opensource/svgaplayer/SVGAImageView\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,280:1\n1561#2,2:281\n*E\n*S KotlinDebug\n*F\n+ 1 SVGAImageView.kt\ncom/opensource/svgaplayer/SVGAImageView\n*L\n79#1,2:281\n*E\n"
.end annotation


# instance fields
.field private animator:Landroid/animation/ValueAnimator;

.field private callback:Lcom/opensource/svgaplayer/SVGACallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private clearsAfterStop:Z

.field private fillMode:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isAnimating:Z

.field private loops:I

.field private mItemClickAreaListener:Lcom/opensource/svgaplayer/SVGAClickAreaListener;

.field private mVideoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 45
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->clearsAfterStop:Z

    .line 35
    sget-object p1, Lcom/opensource/svgaplayer/SVGAImageView$FillMode;->Forward:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->fillMode:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    .line 46
    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->setSoftwareLayerType()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->clearsAfterStop:Z

    .line 35
    sget-object p1, Lcom/opensource/svgaplayer/SVGAImageView$FillMode;->Forward:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->fillMode:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    .line 50
    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->setSoftwareLayerType()V

    if-eqz p2, :cond_0

    .line 51
    invoke-direct {p0, p2}, Lcom/opensource/svgaplayer/SVGAImageView;->loadAttrs(Landroid/util/AttributeSet;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->clearsAfterStop:Z

    .line 35
    sget-object p1, Lcom/opensource/svgaplayer/SVGAImageView$FillMode;->Forward:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->fillMode:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    .line 55
    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->setSoftwareLayerType()V

    if-eqz p2, :cond_0

    .line 56
    invoke-direct {p0, p2}, Lcom/opensource/svgaplayer/SVGAImageView;->loadAttrs(Landroid/util/AttributeSet;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->clearsAfterStop:Z

    .line 35
    sget-object p1, Lcom/opensource/svgaplayer/SVGAImageView$FillMode;->Forward:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->fillMode:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    .line 60
    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->setSoftwareLayerType()V

    if-eqz p2, :cond_0

    .line 61
    invoke-direct {p0, p2}, Lcom/opensource/svgaplayer/SVGAImageView;->loadAttrs(Landroid/util/AttributeSet;)V

    :cond_0
    return-void
.end method

.method public static final synthetic access$setAnimating$p(Lcom/opensource/svgaplayer/SVGAImageView;Z)V
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->isAnimating:Z

    return-void
.end method

.method private final clearAudio()V
    .locals 4

    .line 79
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mVideoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getAudios$library_release()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1561
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;

    .line 80
    invoke-virtual {v1}, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->getPlayID()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 81
    iget-object v3, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mVideoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getSoundPool$library_release()Landroid/media/SoundPool;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3, v2}, Landroid/media/SoundPool;->stop(I)V

    :cond_0
    const/4 v2, 0x0

    .line 83
    invoke-virtual {v1, v2}, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->setPlayID(Ljava/lang/Integer;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final loadAttrs(Landroid/util/AttributeSet;)V
    .locals 8

    .line 88
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/opensource/svgaplayer/R$styleable;->SVGAImageView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 89
    sget v0, Lcom/opensource/svgaplayer/R$styleable;->SVGAImageView_loopCount:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->loops:I

    .line 90
    sget v0, Lcom/opensource/svgaplayer/R$styleable;->SVGAImageView_clearsAfterStop:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->clearsAfterStop:Z

    .line 91
    sget v0, Lcom/opensource/svgaplayer/R$styleable;->SVGAImageView_antiAlias:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 92
    sget v0, Lcom/opensource/svgaplayer/R$styleable;->SVGAImageView_autoPlay:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 93
    sget v0, Lcom/opensource/svgaplayer/R$styleable;->SVGAImageView_fillMode:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "0"

    .line 94
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    sget-object v0, Lcom/opensource/svgaplayer/SVGAImageView$FillMode;->Backward:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->fillMode:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    goto :goto_0

    :cond_0
    const-string v1, "1"

    .line 97
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    sget-object v0, Lcom/opensource/svgaplayer/SVGAImageView$FillMode;->Forward:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->fillMode:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    .line 101
    :cond_1
    :goto_0
    sget v0, Lcom/opensource/svgaplayer/R$styleable;->SVGAImageView_source:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 102
    new-instance v4, Lcom/opensource/svgaplayer/SVGAParser;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/opensource/svgaplayer/SVGAParser;-><init>(Landroid/content/Context;)V

    .line 103
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/opensource/svgaplayer/SVGAImageView$loadAttrs$$inlined$let$lambda$1;

    move-object v2, v1

    move-object v5, p0

    invoke-direct/range {v2 .. v7}, Lcom/opensource/svgaplayer/SVGAImageView$loadAttrs$$inlined$let$lambda$1;-><init>(Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser;Lcom/opensource/svgaplayer/SVGAImageView;ZZ)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 123
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 125
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private final setSoftwareLayerType()V
    .locals 2

    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 66
    invoke-virtual {p0, v0, v1}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getCallback()Lcom/opensource/svgaplayer/SVGACallback;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 37
    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->callback:Lcom/opensource/svgaplayer/SVGACallback;

    return-object p0
.end method

.method public final getClearsAfterStop()Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->clearsAfterStop:Z

    return p0
.end method

.method public final getFillMode()Lcom/opensource/svgaplayer/SVGAImageView$FillMode;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 35
    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->fillMode:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    return-object p0
.end method

.method public final isAnimating()Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->isAnimating:Z

    return p0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 71
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 72
    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->clearAudio()V

    .line 73
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 75
    :cond_1
    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->animator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 260
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 261
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Lcom/opensource/svgaplayer/SVGADrawable;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/opensource/svgaplayer/SVGADrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 262
    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGADrawable;->getDynamicItem()Lcom/opensource/svgaplayer/SVGADynamicEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGADynamicEntity;->getMClickMap$library_release()Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 263
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    aget v5, v2, v1

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    const/4 v5, 0x2

    aget v5, v2, v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    const/4 v5, 0x1

    aget v6, v2, v5

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    const/4 v6, 0x3

    aget v2, v2, v6

    int-to-float v2, v2

    cmpg-float v2, v4, v2

    if-gtz v2, :cond_1

    .line 264
    iget-object v2, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mItemClickAreaListener:Lcom/opensource/svgaplayer/SVGAClickAreaListener;

    if-eqz v2, :cond_1

    .line 265
    invoke-interface {v2, v3}, Lcom/opensource/svgaplayer/SVGAClickAreaListener;->onClick(Ljava/lang/String;)V

    return v5

    :cond_2
    return v1

    .line 276
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final setCallback(Lcom/opensource/svgaplayer/SVGACallback;)V
    .locals 0
    .param p1    # Lcom/opensource/svgaplayer/SVGACallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 37
    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->callback:Lcom/opensource/svgaplayer/SVGACallback;

    return-void
.end method

.method public final setClearsAfterStop(Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->clearsAfterStop:Z

    return-void
.end method

.method public final setLoops(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->loops:I

    return-void
.end method

.method public final setVideoItem(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V
    .locals 1
    .param p1    # Lcom/opensource/svgaplayer/SVGAVideoEntity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 218
    new-instance v0, Lcom/opensource/svgaplayer/SVGADynamicEntity;

    invoke-direct {v0}, Lcom/opensource/svgaplayer/SVGADynamicEntity;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/opensource/svgaplayer/SVGAImageView;->setVideoItem(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGADynamicEntity;)V

    return-void
.end method

.method public final setVideoItem(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGADynamicEntity;)V
    .locals 1
    .param p1    # Lcom/opensource/svgaplayer/SVGAVideoEntity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/opensource/svgaplayer/SVGADynamicEntity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 223
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 226
    :cond_0
    new-instance v0, Lcom/opensource/svgaplayer/SVGADrawable;

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/opensource/svgaplayer/SVGADynamicEntity;

    invoke-direct {p2}, Lcom/opensource/svgaplayer/SVGADynamicEntity;-><init>()V

    :goto_0
    invoke-direct {v0, p1, p2}, Lcom/opensource/svgaplayer/SVGADrawable;-><init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGADynamicEntity;)V

    .line 227
    iget-boolean p2, p0, Lcom/opensource/svgaplayer/SVGAImageView;->clearsAfterStop:Z

    invoke-virtual {v0, p2}, Lcom/opensource/svgaplayer/SVGADrawable;->setCleared$library_release(Z)V

    .line 228
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 229
    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mVideoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    return-void
.end method

.method public final startAnimation()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 129
    invoke-virtual {p0, v0, v1}, Lcom/opensource/svgaplayer/SVGAImageView;->startAnimation(Lcom/opensource/svgaplayer/utils/SVGARange;Z)V

    return-void
.end method

.method public final startAnimation(Lcom/opensource/svgaplayer/utils/SVGARange;Z)V
    .locals 15
    .param p1    # Lcom/opensource/svgaplayer/utils/SVGARange;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    move-object v7, p0

    const/4 v0, 0x0

    .line 133
    invoke-virtual {p0, v0}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation(Z)V

    .line 134
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v2, v1, Lcom/opensource/svgaplayer/SVGADrawable;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v1, v3

    :cond_0
    move-object v6, v1

    check-cast v6, Lcom/opensource/svgaplayer/SVGADrawable;

    if-eqz v6, :cond_8

    .line 135
    invoke-virtual {v6, v0}, Lcom/opensource/svgaplayer/SVGADrawable;->setCleared$library_release(Z)V

    .line 136
    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    const-string v2, "scaleType"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Lcom/opensource/svgaplayer/SVGADrawable;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 137
    invoke-virtual {v6}, Lcom/opensource/svgaplayer/SVGADrawable;->getVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;

    move-result-object v1

    if-nez p1, :cond_7

    .line 139
    invoke-static {v0, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 140
    invoke-virtual {v1}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getFrames()I

    move-result v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    if-nez p1, :cond_6

    if-nez p1, :cond_5

    const v3, 0x7fffffff

    add-int/2addr v3, v0

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v8, v2, v0

    aput v9, v2, v4

    .line 141
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v10

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :try_start_0
    const-string v0, "android.animation.ValueAnimator"

    .line 143
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v5, "sDurationScale"

    .line 145
    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 146
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 147
    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    float-to-double v11, v11

    const-wide/16 v13, 0x0

    cmpg-double v13, v11, v13

    if-nez v13, :cond_1

    const/high16 v13, 0x3f800000    # 1.0f

    .line 151
    :try_start_1
    invoke-virtual {v5, v0, v13}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    const-string v0, "SVGAPlayer"

    const-string v5, "The animation duration scale has been reset to 1.0x, because you closed it on developer options."

    .line 153
    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    :cond_1
    move-wide v2, v11

    :catch_1
    :cond_2
    :goto_0
    const-string v0, "animator"

    .line 158
    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sub-int v0, v9, v8

    add-int/2addr v0, v4

    const/16 v5, 0x3e8

    .line 159
    invoke-virtual {v1}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getFPS()I

    move-result v1

    div-int/2addr v5, v1

    mul-int/2addr v0, v5

    int-to-double v0, v0

    div-double/2addr v0, v2

    double-to-long v0, v0

    invoke-virtual {v10, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 160
    iget v0, v7, Lcom/opensource/svgaplayer/SVGAImageView;->loops:I

    if-gtz v0, :cond_3

    const v0, 0x1869f

    goto :goto_1

    :cond_3
    sub-int/2addr v0, v4

    :goto_1
    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 161
    new-instance v11, Lcom/opensource/svgaplayer/SVGAImageView$startAnimation$$inlined$let$lambda$1;

    move-object v0, v11

    move-object v1, v10

    move-object v2, p0

    move-object/from16 v3, p1

    move-object v4, v6

    move/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/opensource/svgaplayer/SVGAImageView$startAnimation$$inlined$let$lambda$1;-><init>(Landroid/animation/ValueAnimator;Lcom/opensource/svgaplayer/SVGAImageView;Lcom/opensource/svgaplayer/utils/SVGARange;Lcom/opensource/svgaplayer/SVGADrawable;Z)V

    invoke-virtual {v10, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 165
    new-instance v11, Lcom/opensource/svgaplayer/SVGAImageView$startAnimation$$inlined$let$lambda$2;

    move-object v0, v11

    move v1, v8

    move v2, v9

    move-object v3, p0

    move-object/from16 v4, p1

    move-object v5, v6

    move/from16 v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/opensource/svgaplayer/SVGAImageView$startAnimation$$inlined$let$lambda$2;-><init>(IILcom/opensource/svgaplayer/SVGAImageView;Lcom/opensource/svgaplayer/utils/SVGARange;Lcom/opensource/svgaplayer/SVGADrawable;Z)V

    invoke-virtual {v10, v11}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p2, :cond_4

    .line 190
    invoke-virtual {v10}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_2

    .line 193
    :cond_4
    invoke-virtual {v10}, Landroid/animation/ValueAnimator;->start()V

    .line 195
    :goto_2
    iput-object v10, v7, Lcom/opensource/svgaplayer/SVGAImageView;->animator:Landroid/animation/ValueAnimator;

    return-void

    .line 140
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/opensource/svgaplayer/utils/SVGARange;->getLength()I

    throw v3

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/opensource/svgaplayer/utils/SVGARange;->getLocation()I

    throw v3

    .line 139
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/opensource/svgaplayer/utils/SVGARange;->getLocation()I

    throw v3

    :cond_8
    return-void
.end method

.method public final stopAnimation()V
    .locals 1

    .line 205
    iget-boolean v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->clearsAfterStop:Z

    invoke-virtual {p0, v0}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation(Z)V

    return-void
.end method

.method public final stopAnimation(Z)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 212
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of v0, p0, Lcom/opensource/svgaplayer/SVGADrawable;

    if-nez v0, :cond_3

    const/4 p0, 0x0

    :cond_3
    check-cast p0, Lcom/opensource/svgaplayer/SVGADrawable;

    if-eqz p0, :cond_4

    .line 213
    invoke-virtual {p0, p1}, Lcom/opensource/svgaplayer/SVGADrawable;->setCleared$library_release(Z)V

    :cond_4
    return-void
.end method
