.class public final synthetic Lcom/transsion/camera/feature/mode/armode/-$$Lambda$ARMode$5$1MCFAqAcZ8VZdA-LvadSbDK2R5Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/mode/armode/ARMode$5;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/mode/armode/ARMode$5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/armode/-$$Lambda$ARMode$5$1MCFAqAcZ8VZdA-LvadSbDK2R5Y;->f$0:Lcom/transsion/camera/feature/mode/armode/ARMode$5;

    return-void
.end method


# virtual methods
.method public final onFileSaved(Landroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/-$$Lambda$ARMode$5$1MCFAqAcZ8VZdA-LvadSbDK2R5Y;->f$0:Lcom/transsion/camera/feature/mode/armode/ARMode$5;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/armode/ARMode$5;->lambda$onStopped$0$ARMode$5(Landroid/net/Uri;)V

    return-void
.end method
