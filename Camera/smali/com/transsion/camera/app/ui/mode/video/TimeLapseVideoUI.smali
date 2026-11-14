.class public Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;
.super Lcom/transsion/camera/app/ui/mode/video/VideoUI;
.source "TimeLapseVideoUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI$VideoProgressListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mDelayHandler:Landroid/os/Handler;

.field private final mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mProgressView:Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;

.field private mTimeLapseRate:I

.field private mTotalDuration:J

.field private final mVideoProgressListener:Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI$VideoProgressListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI$VideoProgressListener;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;->mTimeLapseRate:I

    .line 21
    new-instance p1, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const-wide/16 p1, 0x0

    .line 23
    iput-wide p1, p0, Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;->mTotalDuration:J

    .line 35
    iput-object p4, p0, Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;->mVideoProgressListener:Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI$VideoProgressListener;

    .line 36
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;->mDelayHandler:Landroid/os/Handler;

    return-void
.end method

.method private getRecordResultDuring(J)Ljava/lang/String;
    .locals 3

    .line 140
    iget p0, p0, Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;->mTimeLapseRate:I

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    int-to-long v1, p0

    .line 141
    div-long/2addr p1, v1

    invoke-static {p1, p2, v0}, Lcom/transsion/camera/utils/UIUtils;->formatTime(JZ)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    const-wide/32 v1, 0x927c0

    cmp-long p0, p1, v1

    if-gez p0, :cond_1

    const/16 p0, 0xf

    goto :goto_0

    :cond_1
    const-wide/32 v1, 0x124f80

    cmp-long p0, p1, v1

    if-gez p0, :cond_2

    const/16 p0, 0x1e

    goto :goto_0

    :cond_2
    const-wide/32 v1, 0x249f00

    cmp-long p0, p1, v1

    if-gez p0, :cond_3

    const/16 p0, 0x3c

    goto :goto_0

    :cond_3
    const-wide/32 v1, 0x493e00

    cmp-long p0, p1, v1

    if-gez p0, :cond_4

    const/16 p0, 0x78

    goto :goto_0

    :cond_4
    const/16 p0, 0x12c

    :goto_0
    int-to-long v1, p0

    .line 155
    div-long/2addr p1, v1

    invoke-static {p1, p2, v0}, Lcom/transsion/camera/utils/UIUtils;->formatTime(JZ)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private synthetic lambda$onShowRecordingUI$0()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;->mProgressView:Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;

    if-eqz v0, :cond_0

    .line 90
    sget-object v0, Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "mProgressView.start()"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;->mProgressView:Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->start()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$stopProgressView$1()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;->mProgressView:Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;

    if-eqz v0, :cond_0

    .line 113
    sget-object v0, Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "mProgressView.stop()"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 114
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;->mProgressView:Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->stop()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected doCreateView()Landroid/view/View;
    .locals 4

    .line 41
    invoke-super {p0}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->doCreateView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090269

    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 44
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c00d3

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0901f8

    .line 45
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;

    iput-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;->mProgressView:Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;

    if-eqz v1, :cond_0

    .line 47
    iget-wide v2, p0, Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;->mTotalDuration:J

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->setTotalDuration(J)V

    .line 50
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const v1, 0x7f080513

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-object v0
.end method

.method public hideInfo()V
    .locals 1

    .line 167
    invoke-super {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->hideInfo()V

    .line 168
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method public synthetic lambda$onShowRecordingUI$0$TimeLapseVideoUI()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;->lambda$onShowRecordingUI$0()V

    return-void
.end method

.method public synthetic lambda$stopProgressView$1$TimeLapseVideoUI()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;->lambda$stopProgressView$1()V

    return-void
.end method

.method protected onHideRecordingUI()V
    .locals 0

    .line 105
    invoke-super {p0}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->onHideRecordingUI()V

    .line 106
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;->stopProgressView()V

    return-void
.end method

.method protected onShowRecordingUI()V
    .locals 4

    .line 84
    invoke-super {p0}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->onShowRecordingUI()V

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/transsion/camera/utils/UIUtils;->formatTime(JZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1, v2}, Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;->getRecordResultDuring(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const v2, 0x7f080513

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 87
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;->mDelayHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/app/ui/mode/video/-$$Lambda$TimeLapseVideoUI$7Y-SBUFNnCcqJJq0lD0F3QHGAnw;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/mode/video/-$$Lambda$TimeLapseVideoUI$7Y-SBUFNnCcqJJq0lD0F3QHGAnw;-><init>(Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;)V

    const-wide/16 v2, 0x204

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onShutterDown()V
    .locals 0

    return-void
.end method

.method public onShutterUp()V
    .locals 0

    return-void
.end method

.method protected onUpdateRecordingUI(Z)V
    .locals 0

    .line 132
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->onUpdateRecordingUI(Z)V

    .line 133
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;->mProgressView:Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;

    if-eqz p0, :cond_0

    .line 134
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->pause(Z)V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;->mDelayHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 59
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;->mProgressView:Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;

    if-eqz v0, :cond_1

    .line 62
    sget-object v0, Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "mProgressView.reset()"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 63
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;->mProgressView:Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->reset()V

    :cond_1
    return-void
.end method

.method public setTimeLapseDuration(J)V
    .locals 0

    .line 124
    iput-wide p1, p0, Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;->mTotalDuration:J

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;->mProgressView:Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;

    if-eqz p0, :cond_0

    .line 126
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->setTotalDuration(J)V

    :cond_0
    return-void
.end method

.method public setTimeLapseRate(I)V
    .locals 0

    .line 120
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;->mTimeLapseRate:I

    return-void
.end method

.method public showFileTooShortInfo()V
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0f0124

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method protected showTime(JZ)V
    .locals 4

    .line 69
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTotalDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x1f4

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    sub-long/2addr p1, v0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;->mProgressView:Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->setCurrentDuration(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;->mVideoProgressListener:Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI$VideoProgressListener;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI$VideoProgressListener;->onProgressEnd()V

    .line 75
    :cond_1
    invoke-static {p1, p2, p3}, Lcom/transsion/camera/utils/UIUtils;->formatTime(JZ)Ljava/lang/String;

    move-result-object p3

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;->getRecordResultDuring(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 77
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    if-eqz p0, :cond_2

    .line 78
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public stopProgressView()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;->mDelayHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;->mDelayHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/app/ui/mode/video/-$$Lambda$TimeLapseVideoUI$acX-J-k8dw4NRV666RK4y7LXwW8;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/mode/video/-$$Lambda$TimeLapseVideoUI$acX-J-k8dw4NRV666RK4y7LXwW8;-><init>(Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unInitVideoUI()V
    .locals 0

    .line 98
    invoke-super {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->unInitVideoUI()V

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/TimeLapseVideoUI;->mProgressView:Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;

    if-eqz p0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/RecordingProgressView;->reset()V

    :cond_0
    return-void
.end method

.method public updateLayout()V
    .locals 0

    return-void
.end method
