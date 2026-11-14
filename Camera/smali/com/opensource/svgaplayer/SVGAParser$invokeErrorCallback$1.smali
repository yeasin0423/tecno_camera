.class final Lcom/opensource/svgaplayer/SVGAParser$invokeErrorCallback$1;
.super Ljava/lang/Object;
.source "SVGAParser.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opensource/svgaplayer/SVGAParser;->invokeErrorCallback(Ljava/lang/Exception;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $callback:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;


# direct methods
.method constructor <init>(Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V
    .locals 0

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAParser$invokeErrorCallback$1;->$callback:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 201
    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGAParser$invokeErrorCallback$1;->$callback:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;->onError()V

    :cond_0
    return-void
.end method
