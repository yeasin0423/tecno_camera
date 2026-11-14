.class public final synthetic Lcom/transsion/camera/ui/setting/zoom/-$$Lambda$apUwoea3_Qy7dyVz6Z6nuHPHp4s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar$IProgressCalculator;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleProgressCalculator;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleProgressCalculator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/-$$Lambda$apUwoea3_Qy7dyVz6Z6nuHPHp4s;->f$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleProgressCalculator;

    return-void
.end method


# virtual methods
.method public final calculateProgress(IIFI)I
    .locals 0

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/-$$Lambda$apUwoea3_Qy7dyVz6Z6nuHPHp4s;->f$0:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleProgressCalculator;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleProgressCalculator;->calculateProgress(IIFI)I

    move-result p0

    return p0
.end method
