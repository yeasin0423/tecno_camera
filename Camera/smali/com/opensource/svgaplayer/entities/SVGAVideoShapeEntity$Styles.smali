.class public final Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;
.super Ljava/lang/Object;
.source "SVGAVideoShapeEntity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Styles"
.end annotation


# instance fields
.field private fill:I

.field private lineCap:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private lineDash:[F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private lineJoin:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private miterLimit:I

.field private stroke:I

.field private strokeWidth:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "butt"

    .line 37
    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->lineCap:Ljava/lang/String;

    const-string v0, "miter"

    .line 40
    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->lineJoin:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [F

    .line 46
    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->lineDash:[F

    return-void
.end method


# virtual methods
.method public final getFill()I
    .locals 0

    .line 28
    iget p0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->fill:I

    return p0
.end method

.method public final getLineCap()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 37
    iget-object p0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->lineCap:Ljava/lang/String;

    return-object p0
.end method

.method public final getLineDash()[F
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 46
    iget-object p0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->lineDash:[F

    return-object p0
.end method

.method public final getLineJoin()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 40
    iget-object p0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->lineJoin:Ljava/lang/String;

    return-object p0
.end method

.method public final getMiterLimit()I
    .locals 0

    .line 43
    iget p0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->miterLimit:I

    return p0
.end method

.method public final getStroke()I
    .locals 0

    .line 31
    iget p0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->stroke:I

    return p0
.end method

.method public final getStrokeWidth()F
    .locals 0

    .line 34
    iget p0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->strokeWidth:F

    return p0
.end method

.method public final setFill$library_release(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->fill:I

    return-void
.end method

.method public final setLineCap$library_release(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->lineCap:Ljava/lang/String;

    return-void
.end method

.method public final setLineDash$library_release([F)V
    .locals 1
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->lineDash:[F

    return-void
.end method

.method public final setLineJoin$library_release(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->lineJoin:Ljava/lang/String;

    return-void
.end method

.method public final setMiterLimit$library_release(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->miterLimit:I

    return-void
.end method

.method public final setStroke$library_release(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->stroke:I

    return-void
.end method

.method public final setStrokeWidth$library_release(F)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->strokeWidth:F

    return-void
.end method
