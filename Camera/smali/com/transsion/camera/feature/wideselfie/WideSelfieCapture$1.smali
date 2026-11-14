.class Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture$1;
.super Ljava/lang/Object;
.source "WideSelfieCapture.java"

# interfaces
.implements Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProcessResult(ILcom/transsion/camera/featurelibs/wideselfie/ProcessResult;)V
    .locals 3

    .line 70
    invoke-static {}, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProcessResult code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", command: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;->mCommand:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 73
    iget p1, p2, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;->mProgress:I

    .line 75
    iget v0, p2, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;->mCommand:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 105
    invoke-static {}, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid command: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;->mCommand:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    .line 95
    iget-object p1, p2, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;->mData:[B

    if-eqz p1, :cond_1

    .line 96
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    iget v0, p2, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;->mImageWidth:I

    iget v1, p2, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;->mImageHeight:I

    iget p2, p2, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;->mImageFormat:I

    invoke-static {p0, p1, v0, v1, p2}, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->access$400(Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;[BIII)V

    goto :goto_0

    .line 99
    :cond_1
    invoke-static {}, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string p2, "Capture failed, This should not happen!!!"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    invoke-static {p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->access$500(Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;)V

    goto :goto_0

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->access$100(Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->access$100(Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/app/common/IApp$State;->STATE_CAPTURING:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    :cond_3
    const/16 v0, 0x64

    if-lt p1, v0, :cond_4

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->stopCapture()Z

    return-void

    .line 84
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    invoke-static {p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->access$200(Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;)Lcom/transsion/camera/feature/wideselfie/IWideSelfieCapture$IDirectionListener;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 85
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    invoke-static {p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->access$200(Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;)Lcom/transsion/camera/feature/wideselfie/IWideSelfieCapture$IDirectionListener;

    move-result-object p1

    iget v0, p2, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;->mDirection:I

    invoke-interface {p1, v0}, Lcom/transsion/camera/feature/wideselfie/IWideSelfieCapture$IDirectionListener;->onDirectionUpdate(I)V

    .line 88
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    invoke-static {p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->access$300(Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;)Lcom/transsion/camera/feature/wideselfie/IWideSelfieCapture$IThumbnailListener;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 89
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture$1;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    invoke-static {p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->access$300(Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;)Lcom/transsion/camera/feature/wideselfie/IWideSelfieCapture$IThumbnailListener;

    move-result-object p0

    new-instance p1, Lcom/transsion/camera/feature/wideselfie/ThumbnailInfo;

    invoke-direct {p1, p2}, Lcom/transsion/camera/feature/wideselfie/ThumbnailInfo;-><init>(Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;)V

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/wideselfie/IWideSelfieCapture$IThumbnailListener;->onThumbnailUpdate(Lcom/transsion/camera/feature/wideselfie/ThumbnailInfo;)V

    :cond_6
    :goto_0
    return-void
.end method
