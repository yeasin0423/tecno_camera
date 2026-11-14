.class public final Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;
.super Ljava/lang/Object;
.source "SVGAAudioEntity.kt"


# instance fields
.field private final endFrame:I

.field private playID:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private soundID:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final startFrame:I


# direct methods
.method public constructor <init>(Lcom/opensource/svgaplayer/proto/AudioEntity;)V
    .locals 2
    .param p1    # Lcom/opensource/svgaplayer/proto/AudioEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "audioItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/opensource/svgaplayer/proto/AudioEntity;->audioKey:Ljava/lang/String;

    .line 18
    iget-object v0, p1, Lcom/opensource/svgaplayer/proto/AudioEntity;->startFrame:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->startFrame:I

    .line 19
    iget-object v0, p1, Lcom/opensource/svgaplayer/proto/AudioEntity;->endFrame:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_1
    iput v1, p0, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->endFrame:I

    .line 20
    iget-object p0, p1, Lcom/opensource/svgaplayer/proto/AudioEntity;->startTime:Ljava/lang/Integer;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 21
    :cond_2
    iget-object p0, p1, Lcom/opensource/svgaplayer/proto/AudioEntity;->totalTime:Ljava/lang/Integer;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    :cond_3
    return-void
.end method


# virtual methods
.method public final getEndFrame()I
    .locals 0

    .line 10
    iget p0, p0, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->endFrame:I

    return p0
.end method

.method public final getPlayID()Ljava/lang/Integer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 14
    iget-object p0, p0, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->playID:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getSoundID()Ljava/lang/Integer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 13
    iget-object p0, p0, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->soundID:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getStartFrame()I
    .locals 0

    .line 9
    iget p0, p0, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->startFrame:I

    return p0
.end method

.method public final setPlayID(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 14
    iput-object p1, p0, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->playID:Ljava/lang/Integer;

    return-void
.end method

.method public final setSoundID(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 13
    iput-object p1, p0, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->soundID:Ljava/lang/Integer;

    return-void
.end method
