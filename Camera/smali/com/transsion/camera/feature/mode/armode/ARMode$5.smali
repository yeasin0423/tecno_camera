.class Lcom/transsion/camera/feature/mode/armode/ARMode$5;
.super Ljava/lang/Object;
.source "ARMode.java"

# interfaces
.implements Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/armode/ARMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/armode/ARMode;)V
    .locals 0

    .line 1115
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$5;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onStopped$0(Landroid/net/Uri;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1186
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$5;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$7200(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "[onFileSaved] +"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1187
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$5;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$6300(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 1188
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$5;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$7300(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnailUri(Landroid/net/Uri;)V

    const/16 p1, 0x200

    .line 1189
    invoke-static {v0, p1}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromVideo(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1190
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$5;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$7400(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnail(Landroid/graphics/Bitmap;)V

    .line 1191
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$5;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$3700(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->updateUItoPhoto()V

    .line 1192
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$5;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$7500(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 1193
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$5;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$7600(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    const/16 v0, 0x28

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1194
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$5;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/transsion/camera/feature/mode/armode/ARMode;->mRecordingFlag:Z

    .line 1195
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$5;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$7700(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "[onFileSaved] -"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$onStopped$0$ARMode$5(Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/armode/ARMode$5;->lambda$onStopped$0(Landroid/net/Uri;)V

    return-void
.end method

.method public onPrepared(Lcom/transsion/camera/utils/encoder/MediaEncoder;)V
    .locals 1

    .line 1118
    instance-of v0, p1, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    if-eqz v0, :cond_0

    .line 1119
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$5;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    check-cast p1, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$4002(Lcom/transsion/camera/feature/mode/armode/ARMode;Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;)Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    .line 1120
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$5;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$5100(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p0

    const/4 p1, 0x1

    const/16 v0, 0x64

    invoke-interface {p0, p1, v0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->loadGLResource(ZI)V

    :cond_0
    return-void
.end method

.method public onStarted(Lcom/transsion/camera/utils/encoder/MediaEncoder;)V
    .locals 0

    .line 1126
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$5;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    iget-boolean p1, p1, Lcom/transsion/camera/feature/mode/armode/ARMode;->mAfterStopRecord:Z

    if-eqz p1, :cond_1

    .line 1127
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$5;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$5200(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1128
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$5;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$5200(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->stopRecording()V

    .line 1130
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$5;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mAfterStopRecord:Z

    :cond_1
    return-void
.end method

.method public onStopped(Lcom/transsion/camera/utils/encoder/MediaEncoder;I)V
    .locals 9

    const/4 p1, 0x1

    if-ne p1, p2, :cond_0

    .line 1137
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$5;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$5400(Lcom/transsion/camera/feature/mode/armode/ARMode;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$5;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$5300(Lcom/transsion/camera/feature/mode/armode/ARMode;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "video_recording_error"

    const-string v2, "string"

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 1138
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$5;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$5600(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$5;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$5500(Lcom/transsion/camera/feature/mode/armode/ARMode;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 1139
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$5;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$5700(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$5;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$5600(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 1140
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$5;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$5200(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->stopRecording()V

    .line 1141
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$5;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p0, p2}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$5802(Lcom/transsion/camera/feature/mode/armode/ARMode;I)I

    return-void

    .line 1144
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$5;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    iget-boolean v0, v0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mRecordingFlag:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 1145
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$5;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$5900(Lcom/transsion/camera/feature/mode/armode/ARMode;)Landroid/os/Vibrator;

    move-result-object v0

    const-wide/16 v2, 0x32

    invoke-static {v2, v3, v1}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    .line 1147
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$5;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$4002(Lcom/transsion/camera/feature/mode/armode/ARMode;Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;)Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    .line 1148
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$5;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v0, v2}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$5202(Lcom/transsion/camera/feature/mode/armode/ARMode;Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;)Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    .line 1149
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$5;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$6100(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$5;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$6000(Lcom/transsion/camera/feature/mode/armode/ARMode;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->releaseAudioFocus(Landroid/content/Context;)V

    .line 1150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$5;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$6200(Lcom/transsion/camera/feature/mode/armode/ARMode;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 1151
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$5;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$6300(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFileTempPath()Ljava/lang/String;

    move-result-object v0

    .line 1152
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/16 v6, 0x708

    cmp-long v6, v3, v6

    if-ltz v6, :cond_4

    .line 1153
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$5;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v5}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$6400(Lcom/transsion/camera/feature/mode/armode/ARMode;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$5;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v5}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$5800(Lcom/transsion/camera/feature/mode/armode/ARMode;)I

    move-result v5

    if-eq p1, v5, :cond_4

    const/4 v5, 0x2

    if-ne v5, p2, :cond_2

    goto/16 :goto_0

    .line 1163
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$5;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$6900(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    const/4 p2, 0x3

    const/16 v1, 0x64

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$5;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$6800(Lcom/transsion/camera/feature/mode/armode/ARMode;)Landroid/content/Context;

    move-result-object v2

    sget v5, Lcom/transsion/camera/feature/mode/armode/R$string;->saving_dialog_string:I

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 1164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 1165
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "\'VID\'_yyyyMMdd_HHmmss"

    invoke-direct {v1, v5, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 1166
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$5;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$6300(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->createFileData(Ljava/lang/String;)V

    .line 1167
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 1168
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1169
    iget-object v6, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$5;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v6}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$7000(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v6

    invoke-interface {v6}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v6

    .line 1170
    iget-object v7, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$5;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v7}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$6300(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    move-result-object v7

    invoke-virtual {v7}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFileTitle()Ljava/lang/String;

    move-result-object v7

    const-string v8, "title"

    invoke-virtual {v5, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    iget-object v7, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$5;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v7}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$6300(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    move-result-object v7

    invoke-virtual {v7}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFileName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "_display_name"

    invoke-virtual {v5, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "datetaken"

    invoke-virtual {v5, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-wide/16 v7, 0x3e8

    .line 1173
    div-long/2addr p1, v7

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "date_modified"

    invoke-virtual {v5, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1174
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$5;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$6300(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getMimeType()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mime_type"

    invoke-virtual {v5, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$5;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$6300(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFilePath()Ljava/lang/String;

    move-result-object p1

    const-string p2, "_data"

    invoke-virtual {v5, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "duration"

    invoke-virtual {v5, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1177
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$5;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$900(Lcom/transsion/camera/feature/mode/armode/ARMode;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$5;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$1000(Lcom/transsion/camera/feature/mode/armode/ARMode;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "resolution"

    invoke-virtual {v5, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "_size"

    invoke-virtual {v5, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz v6, :cond_3

    .line 1180
    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "latitude"

    invoke-virtual {v5, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1181
    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "longitude"

    invoke-virtual {v5, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1183
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$5;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$7100(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    move-result-object p1

    new-instance p2, Lcom/transsion/camera/feature/mode/armode/-$$Lambda$ARMode$5$1MCFAqAcZ8VZdA-LvadSbDK2R5Y;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/armode/-$$Lambda$ARMode$5$1MCFAqAcZ8VZdA-LvadSbDK2R5Y;-><init>(Lcom/transsion/camera/feature/mode/armode/ARMode$5;)V

    invoke-interface {p1, v5, v0, p2}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->addVideoSaveRequest(Landroid/content/ContentValues;Ljava/lang/String;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)V

    return-void

    .line 1154
    :cond_4
    :goto_0
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$5;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$5802(Lcom/transsion/camera/feature/mode/armode/ARMode;I)I

    .line 1155
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$5;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    iput-boolean v0, p2, Lcom/transsion/camera/feature/mode/armode/ARMode;->mRecordingFlag:Z

    .line 1156
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$5;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$6500(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    move-result-object p2

    invoke-interface {p2}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->deleteTempVideoFile()V

    .line 1157
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$5;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$3700(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->updateUItoPhoto()V

    .line 1158
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$5;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$6600(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p2

    const/16 v3, 0x28

    invoke-interface {p2, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1159
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$5;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$6700(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p2

    invoke-interface {p2, p1, v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 1160
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$5;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$6402(Lcom/transsion/camera/feature/mode/armode/ARMode;Z)Z

    return-void
.end method
