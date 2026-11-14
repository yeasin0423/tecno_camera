.class public final synthetic Lcom/transsion/camera/feature/mode/video/-$$Lambda$TimeLapseVideoMode$TimeLapseRecorder$9vK5cpaQ5nkqSCip_1IRLDqB0T8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/-$$Lambda$TimeLapseVideoMode$TimeLapseRecorder$9vK5cpaQ5nkqSCip_1IRLDqB0T8;->f$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/-$$Lambda$TimeLapseVideoMode$TimeLapseRecorder$9vK5cpaQ5nkqSCip_1IRLDqB0T8;->f$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->lambda$deleteOldTempFiles$1$TimeLapseVideoMode$TimeLapseRecorder()V

    return-void
.end method
