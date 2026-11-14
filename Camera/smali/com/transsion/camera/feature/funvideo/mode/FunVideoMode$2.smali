.class Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$2;
.super Ljava/lang/Object;
.source "FunVideoMode.java"

# interfaces
.implements Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)V
    .locals 0

    .line 755
    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$2;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileSaved(Landroid/net/Uri;)V
    .locals 5

    .line 758
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$2;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$600(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onFileSaved] uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 759
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$2;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$700(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$2;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$800(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 764
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$2;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$900(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 765
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$2;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$1000(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnailUri(Landroid/net/Uri;)V

    const/16 v1, 0x200

    .line 766
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromVideo(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 767
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$2;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$1100(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnail(Landroid/graphics/Bitmap;)V

    .line 769
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$2;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$1200(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "0"

    const-string v4, "key_funvideo_duration"

    if-eqz v0, :cond_2

    .line 770
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$2;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v2}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$1200(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)J

    move-result-wide v2

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->video(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 772
    :cond_2
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->video(Ljava/lang/String;Ljava/lang/String;J)V

    .line 774
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$2;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$1300(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 775
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$2;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$1400(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->setARRootVisibility(I)V

    .line 776
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$2;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$1500(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    const/16 v2, 0x2e

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 778
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$2;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$1602(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;Z)Z

    .line 780
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$2;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$1700(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 781
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$2;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p1, v1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$1802(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;I)I

    .line 782
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$2;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$1900(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->sendNotification(Landroid/content/Context;)V

    return-void

    .line 786
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$2;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$1800(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    .line 787
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$2;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$2000(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, v1}, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->launchVskitApp(Landroid/content/Context;Landroid/net/Uri;Z)V

    goto :goto_1

    .line 788
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$2;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$1800(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_5

    .line 789
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$2;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$2100(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, v3}, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->launchVskitApp(Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 791
    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$2;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p0, v1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$1802(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;I)I

    return-void
.end method
