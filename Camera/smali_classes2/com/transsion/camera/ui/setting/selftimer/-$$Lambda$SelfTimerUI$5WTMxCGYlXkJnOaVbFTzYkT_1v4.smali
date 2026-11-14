.class public final synthetic Lcom/transsion/camera/ui/setting/selftimer/-$$Lambda$SelfTimerUI$5WTMxCGYlXkJnOaVbFTzYkT_1v4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/transsion/camera/utils/sound/IActionSound$SoundCallback;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/-$$Lambda$SelfTimerUI$5WTMxCGYlXkJnOaVbFTzYkT_1v4;->f$0:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;

    return-void
.end method


# virtual methods
.method public final onLoadDone(Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/-$$Lambda$SelfTimerUI$5WTMxCGYlXkJnOaVbFTzYkT_1v4;->f$0:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->lambda$loadSelfTimerSound$0$SelfTimerUI(Lcom/transsion/camera/utils/sound/IActionSound;I)V

    return-void
.end method
