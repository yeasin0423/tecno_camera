.class public Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;
.super Ljava/lang/Object;
.source "CommonPhotoMode.java"

# interfaces
.implements Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/CommonPhotoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ContinuousShot"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot$InterceptShutterListener;
    }
.end annotation


# instance fields
.field private final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field mBurstProgress:Ljava/util/concurrent/atomic/AtomicInteger;

.field mCaptureSound:Lcom/transsion/camera/utils/sound/IActionSound;

.field final mCaptureSoundLock:Ljava/lang/Object;

.field mCaptureSoundResId:I

.field mCaptureSoundSampleId:I

.field mLatestBurstJpegData:[B

.field private final mMaxBurstNumber:I

.field mSaveProgress:Ljava/util/concurrent/atomic/AtomicInteger;

.field volatile mShotDone:Z

.field private mShotStartTime:J

.field volatile mShotStarted:Z

.field mShotStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mShutterListener:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot$InterceptShutterListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/mode/CommonPhotoMode<",
            "TT;TD;>.ContinuousShot.InterceptShutter",
            "Listener;"
        }
    .end annotation
.end field

.field mShutterState:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;Landroid/content/Context;II)V
    .locals 2

    .line 933
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 908
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 916
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mBurstProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 917
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mSaveProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    .line 919
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotDone:Z

    .line 921
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 922
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShutterState:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 925
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mCaptureSoundLock:Ljava/lang/Object;

    if-gtz p3, :cond_0

    const/16 p2, 0x14

    .line 935
    iput p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mMaxBurstNumber:I

    goto :goto_0

    .line 937
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mMaxBurstNumber:I

    .line 940
    :goto_0
    iput p4, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mCaptureSoundResId:I

    .line 941
    iget-object p2, p1, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUI;->getActionSound()Lcom/transsion/camera/utils/sound/IActionSound;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mCaptureSound:Lcom/transsion/camera/utils/sound/IActionSound;

    .line 943
    new-instance p2, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot$InterceptShutterListener;

    invoke-direct {p2, p0, p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot$InterceptShutterListener;-><init>(Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;)V

    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShutterListener:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot$InterceptShutterListener;

    .line 944
    iget-object p0, p1, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p1, 0x9

    invoke-interface {p0, p2, p1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->registerShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 906
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method private synthetic lambda$onPreviewStarted$0(Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .locals 2

    .line 962
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mCaptureSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 963
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mCaptureSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-nez v1, :cond_0

    .line 964
    invoke-interface {p1, p2}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    goto :goto_0

    .line 966
    :cond_0
    iput p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mCaptureSoundSampleId:I

    .line 968
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private onContinuousShotDone()V
    .locals 4

    .line 1188
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onContinuousShotDone"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1190
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->resetState()V

    .line 1191
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast v0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->onContinuousShotStop()V

    const/4 v0, 0x1

    .line 1192
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotDone:Z

    .line 1193
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v1, v1, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 1194
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x24

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method private onContinuousShotStop()V
    .locals 3

    .line 1147
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onContinuousShotStop mBurstProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mBurstProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mSaveProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mSaveProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1150
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->postContinuousShotRestriction(Z)V

    .line 1152
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IContinuousShotControl;->onContinuousShotStop()V

    .line 1154
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mBurstProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mSaveProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 1157
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->updateUIStateSaving()V

    goto :goto_1

    .line 1159
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mBurstProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_2

    iget v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mMaxBurstNumber:I

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mBurstProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 1160
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mLatestBurstJpegData:[B

    if-eqz v0, :cond_1

    .line 1161
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->updateThumbnailView([B)V

    const/4 v0, 0x0

    .line 1162
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mLatestBurstJpegData:[B

    goto :goto_0

    .line 1164
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "mLatestBurstJpegData is null in onContinuousShotStop."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1166
    :goto_0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->updateUIStateSaving()V

    .line 1167
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->onContinuousShotDone()V

    goto :goto_1

    .line 1169
    :cond_2
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->onContinuousShotDone()V

    .line 1173
    :goto_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mCaptureSound:Lcom/transsion/camera/utils/sound/IActionSound;

    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mCaptureSoundSampleId:I

    invoke-interface {v0, p0}, Lcom/transsion/camera/utils/sound/IActionSound;->stop(I)V

    return-void
.end method

.method private postContinuousShotRestriction(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-string p1, "on"

    goto :goto_0

    :cond_0
    const-string p1, "off"

    .line 987
    :goto_0
    invoke-static {}, Lcom/transsion/camera/app/common/mode/ContinuousShotRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    .line 988
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method private saveJpegToFile([BI)V
    .locals 15

    move-object v0, p0

    .line 1112
    iget-object v1, v0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v1, v1, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v5

    .line 1113
    iget-object v1, v0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v2, v1, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPhotoHelper:Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

    iget-object v1, v1, Lcom/transsion/camera/app/common/mode/CameraMode;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    .line 1114
    invoke-interface {v1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getCameraDirectory()Ljava/lang/String;

    move-result-object v6

    iget-wide v7, v0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStartTime:J

    const/4 v4, 0x0

    move-object/from16 v3, p1

    move/from16 v9, p2

    .line 1113
    invoke-virtual/range {v2 .. v9}, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;->createContentValues([BLandroid/graphics/Bitmap;Landroid/location/Location;Ljava/lang/String;JI)Landroid/content/ContentValues;

    move-result-object v10

    .line 1115
    iget-object v1, v0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v9, v1, Lcom/transsion/camera/app/common/mode/CameraMode;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    new-instance v13, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot$1;

    invoke-direct {v13, p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot$1;-><init>(Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;)V

    const/4 v12, 0x0

    const/4 v14, 0x1

    move-object/from16 v11, p1

    invoke-interface/range {v9 .. v14}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->addPhotoSaveRequest(Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Z)V

    return-void
.end method

.method private updateUIStateSaving()V
    .locals 3

    .line 1177
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->access$500(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1178
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "update UI to idle state if not resumed"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1179
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x1

    const/4 v2, -0x1

    invoke-interface {p0, v0, v2, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    return-void

    .line 1183
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x3

    const/16 v2, 0x64

    invoke-interface {p0, v0, v2, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method declared-synchronized isShotting()Z
    .locals 3

    monitor-enter p0

    .line 1084
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isShotting mIsShotJpeg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mShotDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1086
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic lambda$onPreviewStarted$0$CommonPhotoMode$ContinuousShot(Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->lambda$onPreviewStarted$0(Lcom/transsion/camera/utils/sound/IActionSound;I)V

    return-void
.end method

.method public declared-synchronized onContinuousShotFailed()V
    .locals 3

    monitor-enter p0

    .line 1008
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onContinuousShotFailed mShotDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mShotStopped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1011
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotDone:Z

    if-eqz v0, :cond_0

    .line 1012
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "continuous shot is already done"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1013
    monitor-exit p0

    return-void

    .line 1015
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1016
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->stopContinuousShot()V

    .line 1017
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->onContinuousShotStop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1019
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onContinuousShotProgress([B)V
    .locals 6

    monitor-enter p0

    .line 1023
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onContinuousShotProgress mShotDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mShotStopped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1026
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotDone:Z

    if-eqz v0, :cond_0

    .line 1027
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object p1, p1, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "continuous shot has done"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1028
    monitor-exit p0

    return-void

    .line 1030
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1031
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object p1, p1, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "continuous shot has been stopped"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1032
    monitor-exit p0

    return-void

    .line 1035
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v1, v1, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getLeftSpace(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-gtz v0, :cond_2

    .line 1036
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1037
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->onContinuousShotStop()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1038
    monitor-exit p0

    return-void

    .line 1041
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mBurstProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    if-ne v1, v0, :cond_3

    .line 1043
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v2, v2, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v3, 0x4

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 1045
    :cond_3
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v2, v2, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget v3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mMaxBurstNumber:I

    invoke-interface {v2, v0, v3}, Lcom/transsion/camera/app/common/IAppUIControl$IContinuousShotControl;->onContinuousShotProgress(II)V

    .line 1047
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onContinuousShotProgress mBurstProgress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mBurstProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " mSaveProgress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mSaveProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1050
    iget v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mMaxBurstNumber:I

    if-ne v2, v0, :cond_4

    .line 1051
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1052
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->onContinuousShotStop()V

    .line 1055
    :cond_4
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mLatestBurstJpegData:[B

    .line 1056
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->saveJpegToFile([BI)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1057
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized onFileSavedImpl(Landroid/net/Uri;)V
    .locals 3

    monitor-enter p0

    .line 1125
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mSaveProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1127
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFileSavedImpl mBurstProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mBurstProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mSaveProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mSaveProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1131
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnailUri(Landroid/net/Uri;)V

    .line 1134
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mSaveProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mBurstProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1135
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_1

    iget p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mMaxBurstNumber:I

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mSaveProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 1136
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mLatestBurstJpegData:[B

    if-eqz p1, :cond_2

    .line 1137
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mLatestBurstJpegData:[B

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->updateThumbnailView([B)V

    const/4 p1, 0x0

    .line 1138
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mLatestBurstJpegData:[B

    goto :goto_0

    .line 1140
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mLatestBurstJpegData is null in onFileSavedImpl."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1142
    :goto_0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->onContinuousShotDone()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1144
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onPreviewStarted()V
    .locals 3

    .line 957
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mCaptureSoundSampleId:I

    if-eqz v0, :cond_0

    return-void

    .line 961
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mCaptureSound:Lcom/transsion/camera/utils/sound/IActionSound;

    iget v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mCaptureSoundResId:I

    new-instance v2, Lcom/transsion/camera/app/common/mode/-$$Lambda$CommonPhotoMode$ContinuousShot$grdBELDFzJTtrBRRKsoJk9uFYvs;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/common/mode/-$$Lambda$CommonPhotoMode$ContinuousShot$grdBELDFzJTtrBRRKsoJk9uFYvs;-><init>(Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;)V

    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/utils/sound/IActionSound;->load(ILcom/transsion/camera/utils/sound/IActionSound$SoundCallback;)V

    return-void
.end method

.method public release()V
    .locals 3

    .line 1104
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mCaptureSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1105
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mCaptureSound:Lcom/transsion/camera/utils/sound/IActionSound;

    iget v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mCaptureSoundSampleId:I

    invoke-interface {v1, v2}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    const/4 v1, 0x0

    .line 1106
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mCaptureSound:Lcom/transsion/camera/utils/sound/IActionSound;

    .line 1107
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1108
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShutterListener:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot$InterceptShutterListener;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->unRegisterShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;)V

    return-void

    :catchall_0
    move-exception p0

    .line 1107
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method resetState()V
    .locals 2

    .line 948
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mBurstProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 949
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mSaveProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 950
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStarted:Z

    .line 951
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 952
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShutterState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public startContinuousShot()V
    .locals 3

    .line 974
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "startContinuousShot"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 975
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x23

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 976
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->resetState()V

    const/4 v0, 0x0

    .line 977
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotDone:Z

    const/4 v0, 0x1

    .line 978
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStarted:Z

    .line 979
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStartTime:J

    .line 980
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v1, v1, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast v1, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->onContinuousShotStart()V

    .line 981
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->postContinuousShotRestriction(Z)V

    .line 982
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mMaxBurstNumber:I

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->startContinuousShot(I)V

    return-void
.end method

.method public declared-synchronized startContinuousShutter()V
    .locals 3

    monitor-enter p0

    .line 1061
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startContinuousShutter mShotDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsShotJpeg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mShutterState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShutterState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1064
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStarted:Z

    if-nez v0, :cond_0

    .line 1065
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "do nothing is continuous shot not start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1066
    monitor-exit p0

    return-void

    .line 1068
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotDone:Z

    if-eqz v0, :cond_1

    .line 1069
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "do nothing is continuous shot done"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1070
    monitor-exit p0

    return-void

    .line 1073
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_shutter_sound"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    .line 1074
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1075
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "do nothing if shutter is not on"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1076
    monitor-exit p0

    return-void

    .line 1078
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShutterState:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1079
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mCaptureSound:Lcom/transsion/camera/utils/sound/IActionSound;

    iget v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mCaptureSoundSampleId:I

    invoke-interface {v0, v2, v1}, Lcom/transsion/camera/utils/sound/IActionSound;->play(IZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1081
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopContinuousShot()V
    .locals 3

    monitor-enter p0

    .line 993
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopContinuousShot mShotDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mShotStopped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 996
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotDone:Z

    if-eqz v0, :cond_0

    .line 997
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "continuous shot is already done"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 998
    monitor-exit p0

    return-void

    .line 1000
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1001
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->stopContinuousShot()V

    .line 1002
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->onContinuousShotStop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1004
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized terminateContinuousShot()V
    .locals 3

    monitor-enter p0

    .line 1091
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "terminateContinuousShot mBurstProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mBurstProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mSaveProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mSaveProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1094
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->mShotDone:Z

    if-eqz v0, :cond_0

    .line 1095
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "do nothing if continuous shot is done"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1096
    monitor-exit p0

    return-void

    .line 1099
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->stopContinuousShot()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1100
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
