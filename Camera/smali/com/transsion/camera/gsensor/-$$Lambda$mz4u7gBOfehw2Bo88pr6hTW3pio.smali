.class public final synthetic Lcom/transsion/camera/gsensor/-$$Lambda$mz4u7gBOfehw2Bo88pr6hTW3pio;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToDoubleFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/transsion/camera/gsensor/-$$Lambda$mz4u7gBOfehw2Bo88pr6hTW3pio;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/camera/gsensor/-$$Lambda$mz4u7gBOfehw2Bo88pr6hTW3pio;

    invoke-direct {v0}, Lcom/transsion/camera/gsensor/-$$Lambda$mz4u7gBOfehw2Bo88pr6hTW3pio;-><init>()V

    sput-object v0, Lcom/transsion/camera/gsensor/-$$Lambda$mz4u7gBOfehw2Bo88pr6hTW3pio;->INSTANCE:Lcom/transsion/camera/gsensor/-$$Lambda$mz4u7gBOfehw2Bo88pr6hTW3pio;

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

    invoke-virtual {p1}, Lcom/transsion/camera/gsensor/GyroData;->getGyroXAbsValue()F

    move-result p0

    float-to-double p0, p0

    return-wide p0
.end method
