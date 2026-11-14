.class public final synthetic Lcom/transsion/camera/gsensor/-$$Lambda$RaRArQ26L1_EA2YfXfhmghZETc4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToDoubleFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/transsion/camera/gsensor/-$$Lambda$RaRArQ26L1_EA2YfXfhmghZETc4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/camera/gsensor/-$$Lambda$RaRArQ26L1_EA2YfXfhmghZETc4;

    invoke-direct {v0}, Lcom/transsion/camera/gsensor/-$$Lambda$RaRArQ26L1_EA2YfXfhmghZETc4;-><init>()V

    sput-object v0, Lcom/transsion/camera/gsensor/-$$Lambda$RaRArQ26L1_EA2YfXfhmghZETc4;->INSTANCE:Lcom/transsion/camera/gsensor/-$$Lambda$RaRArQ26L1_EA2YfXfhmghZETc4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsDouble(Ljava/lang/Object;)D
    .locals 0

    check-cast p1, Lcom/transsion/camera/gsensor/GyroData;

    invoke-virtual {p1}, Lcom/transsion/camera/gsensor/GyroData;->getGyroZAbsValue()F

    move-result p0

    float-to-double p0, p0

    return-wide p0
.end method
