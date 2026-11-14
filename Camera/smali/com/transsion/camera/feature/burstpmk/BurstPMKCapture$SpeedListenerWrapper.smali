.class Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$SpeedListenerWrapper;
.super Ljava/lang/Object;
.source "BurstPMKCapture.java"

# interfaces
.implements Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$ISpeedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpeedListenerWrapper"
.end annotation


# instance fields
.field private final mDelegate:Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$ISpeedListener;

.field private mUpdateCount:I


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$ISpeedListener;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$SpeedListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$ISpeedListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$ISpeedListener;Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$1;)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$SpeedListenerWrapper;-><init>(Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$ISpeedListener;)V

    return-void
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$SpeedListenerWrapper;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$SpeedListenerWrapper;->resetState()V

    return-void
.end method

.method private resetState()V
    .locals 1

    const/4 v0, 0x0

    .line 169
    iput v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$SpeedListenerWrapper;->mUpdateCount:I

    return-void
.end method


# virtual methods
.method public onSpeedUpdate(I)V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$SpeedListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$ISpeedListener;

    if-nez v0, :cond_0

    return-void

    .line 162
    :cond_0
    iget v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$SpeedListenerWrapper;->mUpdateCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$SpeedListenerWrapper;->mUpdateCount:I

    rem-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$SpeedListenerWrapper;->mUpdateCount:I

    if-nez v1, :cond_1

    .line 164
    invoke-interface {v0, p1}, Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$ISpeedListener;->onSpeedUpdate(I)V

    :cond_1
    return-void
.end method
