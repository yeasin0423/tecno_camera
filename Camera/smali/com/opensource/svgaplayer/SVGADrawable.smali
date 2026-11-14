.class public final Lcom/opensource/svgaplayer/SVGADrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SVGADrawable.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSVGADrawable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SVGADrawable.kt\ncom/opensource/svgaplayer/SVGADrawable\n*L\n1#1,55:1\n*E\n"
.end annotation


# instance fields
.field private cleared:Z

.field private currentFrame:I

.field private final drawer:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;

.field private final dynamicItem:Lcom/opensource/svgaplayer/SVGADynamicEntity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private scaleType:Landroid/widget/ImageView$ScaleType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V
    .locals 1
    .param p1    # Lcom/opensource/svgaplayer/SVGAVideoEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "videoItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v0, Lcom/opensource/svgaplayer/SVGADynamicEntity;

    invoke-direct {v0}, Lcom/opensource/svgaplayer/SVGADynamicEntity;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/opensource/svgaplayer/SVGADrawable;-><init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGADynamicEntity;)V

    return-void
.end method

.method public constructor <init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGADynamicEntity;)V
    .locals 1
    .param p1    # Lcom/opensource/svgaplayer/SVGAVideoEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/opensource/svgaplayer/SVGADynamicEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "videoItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dynamicItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGADrawable;->videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    iput-object p2, p0, Lcom/opensource/svgaplayer/SVGADrawable;->dynamicItem:Lcom/opensource/svgaplayer/SVGADynamicEntity;

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->cleared:Z

    .line 32
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->scaleType:Landroid/widget/ImageView$ScaleType;

    .line 34
    new-instance v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;

    invoke-direct {v0, p1, p2}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;-><init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGADynamicEntity;)V

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->drawer:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 37
    iget-boolean v0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->cleared:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 41
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->drawer:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;

    iget v1, p0, Lcom/opensource/svgaplayer/SVGADrawable;->currentFrame:I

    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->scaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p1, v1, p0}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->drawFrame(Landroid/graphics/Canvas;ILandroid/widget/ImageView$ScaleType;)V

    :cond_1
    return-void
.end method

.method public final getCurrentFrame()I
    .locals 0

    .line 23
    iget p0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->currentFrame:I

    return p0
.end method

.method public final getDynamicItem()Lcom/opensource/svgaplayer/SVGADynamicEntity;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 10
    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->dynamicItem:Lcom/opensource/svgaplayer/SVGADynamicEntity;

    return-object p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x2

    return p0
.end method

.method public final getVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 10
    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    return-object p0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public final setCleared$library_release(Z)V
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->cleared:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 19
    :cond_0
    iput-boolean p1, p0, Lcom/opensource/svgaplayer/SVGADrawable;->cleared:Z

    .line 20
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public final setCurrentFrame$library_release(I)V
    .locals 1

    .line 25
    iget v0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->currentFrame:I

    if-ne v0, p1, :cond_0

    return-void

    .line 28
    :cond_0
    iput p1, p0, Lcom/opensource/svgaplayer/SVGADrawable;->currentFrame:I

    .line 29
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1
    .param p1    # Landroid/widget/ImageView$ScaleType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGADrawable;->scaleType:Landroid/widget/ImageView$ScaleType;

    return-void
.end method
