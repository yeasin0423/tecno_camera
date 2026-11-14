.class public final synthetic Lcom/transsion/camera/feature/mode/armode/-$$Lambda$ARMode$F1fX43BoshpGpyexYlfCSi5lJdM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/mode/armode/ARMode;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/mode/armode/ARMode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/armode/-$$Lambda$ARMode$F1fX43BoshpGpyexYlfCSi5lJdM;->f$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/-$$Lambda$ARMode$F1fX43BoshpGpyexYlfCSi5lJdM;->f$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->lambda$onCameraStateChanged$0$ARMode()V

    return-void
.end method
