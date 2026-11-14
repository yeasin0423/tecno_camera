.class Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$1;
.super Ljava/lang/Object;
.source "BurstPMKCapture.java"

# interfaces
.implements Lcom/transsion/camera/featurelibs/panorama/IPanorama$PanoramaCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private processSelectResult(ILcom/transsion/camera/featurelibs/panorama/ProcessResult;)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x10000

    if-eq p1, v0, :cond_0

    .line 104
    invoke-static {}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "process failed!!!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_0
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$1;->processSelectResult(Lcom/transsion/camera/featurelibs/panorama/ProcessResult;)V

    .line 94
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-static {p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->access$100(Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;)Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$SpeedListenerWrapper;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-static {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->access$100(Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;)Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$SpeedListenerWrapper;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$SpeedListenerWrapper;->onSpeedUpdate(I)V

    goto :goto_0

    .line 100
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->stopCapture()Z

    goto :goto_0

    .line 86
    :cond_2
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$1;->processSelectResult(Lcom/transsion/camera/featurelibs/panorama/ProcessResult;)V

    .line 87
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-static {p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->access$100(Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;)Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$SpeedListenerWrapper;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 88
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-static {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->access$100(Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;)Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$SpeedListenerWrapper;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$SpeedListenerWrapper;->onSpeedUpdate(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private processSelectResult(Lcom/transsion/camera/featurelibs/panorama/ProcessResult;)V
    .locals 5

    .line 110
    iget v0, p1, Lcom/transsion/camera/featurelibs/panorama/ProcessResult;->mProgress:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 111
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->stopCapture()Z

    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->access$200(Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->access$200(Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/app/common/IApp$State;->STATE_CAPTURING:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->access$300(Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;)Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$IThumbnailListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->access$300(Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;)Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$IThumbnailListener;

    move-result-object v0

    iget-object v1, p1, Lcom/transsion/camera/featurelibs/panorama/ProcessResult;->mData:[B

    iget v2, p1, Lcom/transsion/camera/featurelibs/panorama/ProcessResult;->mImageWidth:I

    iget v3, p1, Lcom/transsion/camera/featurelibs/panorama/ProcessResult;->mImageHeight:I

    iget v4, p1, Lcom/transsion/camera/featurelibs/panorama/ProcessResult;->mImageFormat:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$IThumbnailListener;->onThumbnailUpdate([BIII)V

    .line 121
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    iget-object p1, p1, Lcom/transsion/camera/featurelibs/panorama/ProcessResult;->mOffset:Landroid/graphics/Point;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->access$400(Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;Landroid/graphics/Point;)V

    return-void
.end method

.method private processStopResult(ILcom/transsion/camera/featurelibs/panorama/ProcessResult;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 126
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-static {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->access$500(Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;)V

    .line 127
    invoke-static {}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "capture failed!!!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 130
    :cond_0
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$1;->processStopResult(Lcom/transsion/camera/featurelibs/panorama/ProcessResult;)V

    return-void
.end method

.method private processStopResult(Lcom/transsion/camera/featurelibs/panorama/ProcessResult;)V
    .locals 3

    .line 134
    iget v0, p1, Lcom/transsion/camera/featurelibs/panorama/ProcessResult;->mProgress:I

    if-lez v0, :cond_0

    iget-object v0, p1, Lcom/transsion/camera/featurelibs/panorama/ProcessResult;->mData:[B

    if-eqz v0, :cond_0

    .line 135
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    iget v1, p1, Lcom/transsion/camera/featurelibs/panorama/ProcessResult;->mImageWidth:I

    iget v2, p1, Lcom/transsion/camera/featurelibs/panorama/ProcessResult;->mImageHeight:I

    iget p1, p1, Lcom/transsion/camera/featurelibs/panorama/ProcessResult;->mImageFormat:I

    invoke-static {p0, v0, v1, v2, p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->access$600(Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;[BIII)V

    goto :goto_0

    .line 138
    :cond_0
    invoke-static {}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "Capture failed, This should not happen!!!"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 139
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-static {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->access$700(Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onProcessResult(ILcom/transsion/camera/featurelibs/panorama/ProcessResult;)V
    .locals 3

    .line 64
    invoke-static {}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProcessResult code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/transsion/camera/featurelibs/panorama/ProcessResult;->mCommand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 67
    iget v0, p2, Lcom/transsion/camera/featurelibs/panorama/ProcessResult;->mCommand:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 77
    invoke-static {}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "invalid command!!!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$1;->processStopResult(ILcom/transsion/camera/featurelibs/panorama/ProcessResult;)V

    goto :goto_0

    .line 69
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$1;->processSelectResult(ILcom/transsion/camera/featurelibs/panorama/ProcessResult;)V

    :goto_0
    return-void
.end method
