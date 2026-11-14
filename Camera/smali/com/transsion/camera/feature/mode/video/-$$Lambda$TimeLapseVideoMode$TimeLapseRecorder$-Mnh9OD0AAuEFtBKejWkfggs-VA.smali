.class public final synthetic Lcom/transsion/camera/feature/mode/video/-$$Lambda$TimeLapseVideoMode$TimeLapseRecorder$-Mnh9OD0AAuEFtBKejWkfggs-VA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/-$$Lambda$TimeLapseVideoMode$TimeLapseRecorder$-Mnh9OD0AAuEFtBKejWkfggs-VA;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/-$$Lambda$TimeLapseVideoMode$TimeLapseRecorder$-Mnh9OD0AAuEFtBKejWkfggs-VA;->f$0:Ljava/util/ArrayList;

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->lambda$deleteOldTempFiles$0(Ljava/util/ArrayList;Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
