.class public final synthetic Lcom/transsion/camera/ui/setting/exposure/-$$Lambda$VerticalSeekBar$K7ILcLyImIiH9exfNy3wNfdbPD4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar$IProgressCalculator;


# static fields
.field public static final synthetic INSTANCE:Lcom/transsion/camera/ui/setting/exposure/-$$Lambda$VerticalSeekBar$K7ILcLyImIiH9exfNy3wNfdbPD4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/camera/ui/setting/exposure/-$$Lambda$VerticalSeekBar$K7ILcLyImIiH9exfNy3wNfdbPD4;

    invoke-direct {v0}, Lcom/transsion/camera/ui/setting/exposure/-$$Lambda$VerticalSeekBar$K7ILcLyImIiH9exfNy3wNfdbPD4;-><init>()V

    sput-object v0, Lcom/transsion/camera/ui/setting/exposure/-$$Lambda$VerticalSeekBar$K7ILcLyImIiH9exfNy3wNfdbPD4;->INSTANCE:Lcom/transsion/camera/ui/setting/exposure/-$$Lambda$VerticalSeekBar$K7ILcLyImIiH9exfNy3wNfdbPD4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final calculateProgress(IIFI)I
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;->lambda$new$0(IIFI)I

    move-result p0

    return p0
.end method
