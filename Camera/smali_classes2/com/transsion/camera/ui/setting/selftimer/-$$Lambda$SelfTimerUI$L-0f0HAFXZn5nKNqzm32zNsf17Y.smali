.class public final synthetic Lcom/transsion/camera/ui/setting/selftimer/-$$Lambda$SelfTimerUI$L-0f0HAFXZn5nKNqzm32zNsf17Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/transsion/camera/utils/sound/IActionSound$SoundLoadCompleteCallback;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/-$$Lambda$SelfTimerUI$L-0f0HAFXZn5nKNqzm32zNsf17Y;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onLoadComplete()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/-$$Lambda$SelfTimerUI$L-0f0HAFXZn5nKNqzm32zNsf17Y;->f$0:Ljava/lang/Runnable;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->lambda$loadSelfTimerSound$1(Ljava/lang/Runnable;)V

    return-void
.end method
