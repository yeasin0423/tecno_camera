.class public final Lcom/opensource/svgaplayer/SVGAVideoEntityKt;
.super Ljava/lang/Object;
.source "SVGAVideoEntity.kt"


# static fields
.field private static final options:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/opensource/svgaplayer/SVGAVideoEntityKt;->options:Landroid/graphics/BitmapFactory$Options;

    return-void
.end method

.method public static final synthetic access$getOptions$p()Landroid/graphics/BitmapFactory$Options;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/opensource/svgaplayer/SVGAVideoEntityKt;->options:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method
